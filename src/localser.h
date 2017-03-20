#ifndef LOCALSER_H_
#define LOCALSER_H_

#include "utils.h"
#include "shadow.h"

typedef struct {
  uv_getaddrinfo_t getaddrinfo_req;
//  server_config config;
  config_t config;
  server_ctx *servers;
  uv_loop_t *loop;
} server_state;

int can_auth_none(const server_ctx *sx, const client_ctx *cx);
int can_auth_passwd(const server_ctx *sx, const client_ctx *cx);
int can_access(const server_ctx *sx,
               const client_ctx *cx,
               const struct sockaddr *addr);
int server_run(const config_t *cf, uv_loop_t *loop);
int cipher_init(const config_t *cf);              
#endif /* !LOCALSER_H_ */