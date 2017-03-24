#include "localser.h"
#include "client.h"
#include "handshake.h"

extern config_t conf;

static void do_bind(uv_getaddrinfo_t *req, int status, struct addrinfo *ai);
static void on_connection(uv_stream_t *server, int status);

int server_run(const config_t *cf, uv_loop_t *loop) {
  struct addrinfo hints;
  server_state state;
  int err;

  memset(&state, 0, sizeof(state));
  state.servers = NULL;
  state.config = *cf;
  state.loop = loop;

  /* Resolve the address of the interface that we should bind to.
   * The getaddrinfo callback starts the server and everything else.
   */
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;

  err = uv_getaddrinfo(loop,
                       &state.getaddrinfo_req,
                       do_bind,
                       cf->local.ip,
                       NULL,
                       &hints);
  if (err != 0) {
    pr_err("getaddrinfo: %s", uv_strerror(err));
    return err;
  }

  /* Start the event loop.  Control continues in do_bind(). */
  if (uv_run(loop, UV_RUN_DEFAULT)) {
    abort();
  }

  /* Please Valgrind. */
  uv_loop_delete(loop);
  free(state.servers);
  return 0;
}

/* Bind a server to each address that getaddrinfo() reported. */
static void do_bind(uv_getaddrinfo_t *req, int status, struct addrinfo *addrs) {
  char addrbuf[INET6_ADDRSTRLEN + 1];
  unsigned int ipv4_naddrs;
  unsigned int ipv6_naddrs;
  server_state *state;
  config_t *cf;
  struct addrinfo *ai;
  const void *addrv;
  const char *what;
  uv_loop_t *loop;
  server_ctx *sx;
  unsigned int n;
  int err;
  union {
    struct sockaddr addr;
    struct sockaddr_in addr4;
    struct sockaddr_in6 addr6;
  } s;

  state = CONTAINER_OF(req, server_state, getaddrinfo_req);
  loop = state->loop;
  cf = &state->config;

  if (status < 0) {
    pr_err("getaddrinfo(\"%s\"): %s", cf->local.ip, uv_strerror(status));
    uv_freeaddrinfo(addrs);
    return;
  }

  ipv4_naddrs = 0;
  ipv6_naddrs = 0;
  for (ai = addrs; ai != NULL; ai = ai->ai_next) {
    if (ai->ai_family == AF_INET) {
      ipv4_naddrs += 1;
    } else if (ai->ai_family == AF_INET6) {
      ipv6_naddrs += 1;
    }
  }

  if (ipv4_naddrs == 0 && ipv6_naddrs == 0) {
    pr_err("%s has no IPv4/6 addresses", cf->local.ip);
    uv_freeaddrinfo(addrs);
    return;
  }

  state->servers =
      xmalloc((ipv4_naddrs + ipv6_naddrs) * sizeof(state->servers[0]));

  n = 0;
  for (ai = addrs; ai != NULL; ai = ai->ai_next) {
    if (ai->ai_family != AF_INET && ai->ai_family != AF_INET6) {
      continue;
    }

    if (ai->ai_family == AF_INET) {
      s.addr4 = *(const struct sockaddr_in *) ai->ai_addr;
      s.addr4.sin_port = htons(cf->local.port);
      addrv = &s.addr4.sin_addr;
    } else if (ai->ai_family == AF_INET6) {
      s.addr6 = *(const struct sockaddr_in6 *) ai->ai_addr;
      s.addr6.sin6_port = htons(cf->local.port);
      addrv = &s.addr6.sin6_addr;
    } else {
      UNREACHABLE();
    }

    if (uv_inet_ntop(s.addr.sa_family, addrv, addrbuf, sizeof(addrbuf))) {
      UNREACHABLE();
    }

    sx = state->servers + n;
    sx->loop = loop;
    sx->idle_timeout = state->config.idle_timeout;
    CHECK(0 == uv_tcp_init(loop, &sx->tcp_handle));

    what = "uv_tcp_bind";
    err = uv_tcp_bind(&sx->tcp_handle, &s.addr, 0);
    if (err == 0) {
      what = "uv_listen";
//      err = uv_listen((uv_stream_t *) &sx->tcp_handle, 128, on_connection);
      err = uv_listen((uv_stream_t *) &sx->tcp_handle, 128, client_connect_cb);
    }

    if (err != 0) {
      pr_err("%s(\"%s:%hu\"): %s",
             what,
             addrbuf,
             cf->local.port,
             uv_strerror(err));
      while (n > 0) {
        n -= 1;
        uv_close((uv_handle_t *) (state->servers + n), NULL);
      }
      break;
    }

    pr_info("listening on %s:%hu", addrbuf, cf->local.port);
    n += 1;
  }

  uv_freeaddrinfo(addrs);
}

/*
static void on_connection(uv_stream_t *server, int status) {
  server_ctx *sx;
  client_ctx *cx;

  CHECK(status == 0);
  sx = CONTAINER_OF(server, server_ctx, tcp_handle);
  cx = xmalloc(sizeof(*cx));
  CHECK(0 == uv_tcp_init(sx->loop, &cx->incoming.handle.tcp));
  CHECK(0 == uv_accept(server, &cx->incoming.handle.stream));
  client_finish_init(sx, cx);
}
*/

void
client_connect_cb(uv_stream_t * listener, int status)
{
    
    shadow_t    * shadow = shadow_new(&conf); 
    uv_stream_t * stream = (uv_stream_t *)shadow->client;

    // init first handshack
    handshake_t * hands  = calloc(1, sizeof(handshake_t));
    hands ->step         = 1;
    hands ->data         = calloc(1, socks5_max_len);
    shadow->data         = hands;

//    RAND_bytes(shadow->cipher->iv, (int)shadow->cipher->ivl);

    do
    {
        if (status)                                           break;
        if (uv_tcp_init     (listener->loop, shadow->client)) break;
        if (uv_accept       (listener, stream))               break;
        if (uv_tcp_nodelay  (shadow->client, 1))              break;
      if (uv_tcp_keepalive(shadow->client, 1, 60))          break;
        if (uv_read_start   (stream,
                             handshake_alloc_cb,
                             handshake_read_cb))             break;
        return;

    }
    while (0);

    shadow_free(shadow);
//    printf("%s\n", uv_strerror(uv_last_error(listener->loop)));
      printf("%s\n", uv_strerror(status));
}
