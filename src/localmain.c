//
//  shadow.c
//  shadowsocks-libuv
//
//  Created by Cube on 14-9-14.
//  Copyright (c) 2014年 Cube. All rights reserved.
//
#if HAVE_UNISTD_H
#include <unistd.h>  /* getopt */
#else
#include "getopt.h"
#endif
#include "utils.h"
#include "shadow.h"
#include "localmain.h"
#include "localser.h"
#include "client.h"

extern char *optarg;
config_t conf;

static const char *progname = __FILE__; /* Reset in main(). */

static void help(void)
{
    printf(
        "Usage. ss-local\n"
        "  -s <server_host>           host name or ip address of your remote server\n"
        "  -p <server_port>           port number of your remote server\n"
        "  -b <local_host>            local address to bind\n"
        "  -l <local_port>            port number of your local server\n"
        "  -k <password>              password of your remote server\n"
        "  -m <encrypt_method>        encrypt method: table, rc4, \n"
        "                             aes-128-cfb, aes-192-cfb, aes-256-cfb,\n"
        "                             bf-cfb, camellia-128-cfb, camellia-192-cfb,\n"
        "                             camellia-256-cfb, cast5-cfb, des-cfb,\n"
        "                             idea-cfb, rc2-cfb and seed-cfb\n"
//         "  [-t <timeout>]             socket timeout in seconds\n"
//         "  [-c <config_file>]         config file in json\n"
//         "  [-i <interface>]           network interface to bind,\n"
//         "                             not available in redir mode\n"
//         "  [-b <local_address>]       local address to bind,\n"
//         "                             not available in server mode\n"
    );
    exit(EXIT_FAILURE);
}

static void parse(config_t *conf,int argc, char *argv[])
{
//    memset(&conf, 0, sizeof(conf));

    char opt;
    while ((opt = getopt(argc, argv, "b:hk:l:m:p:s:")) != -1)
        switch (opt)
        {
        case 's':
            conf->remote.ip   = optarg;
            break;
        case 'p':
         if (1 != sscanf(optarg, "%hu", &(conf->remote.port))) 
        {
//          pr_err("bad port number: %s", optarg);
            pr_err("bad port number: %s", optarg);
            help();
        }
//            conf.remote.port = optarg;
            break;
        case 'b':
            conf->local.ip    = optarg;
            break;
        case 'l':
           if (1 != sscanf(optarg, "%hu", &(conf->local.port))) 
        {
//          pr_err("bad port number: %s", optarg);
            pr_err("bad port number: %s", optarg);
            help();
        }      
//            conf.local.port  = optarg;
            break;
        case 'k':
            conf->pass        = optarg;
            break;
        case 'm':
            conf->method      = optarg;
            break;
        default:
            break;
        }

    // check conf
    do
    {
        if (!conf->remote.ip)   break;
        if (!conf->remote.port) break;
        if (!conf->local.ip)    break;
        if (!conf->local.ip)    break;
        if (!conf->remote.port) break;
        if (!conf->pass)        break;
        if (!conf->method)      break;
        return;
    }
    while (0);

    help();
}



int main(int argc, char *argv[])
{
    progname = argv[0];
    memset(&conf, 0, sizeof(conf));
    conf.idle_timeout = DEFAULT_IDLE_TIMEOUT;
    conf.local.port = DEFAULT_BIND_PORT;
    conf.remote.port = DEFAULT_BIND_PORT;
    parse(&conf,argc, argv);

//  signal(SIGPIPE, SIG_IGN);

    // set rand seed
    srand((unsigned int)time(NULL));

    //uv_tcp_t    * listener = malloc(sizeof(uv_tcp_t));
    //uv_stream_t * stream   = (uv_stream_t *)listener;
    //uv_loop_t   * loop     = uv_default_loop();

    //struct sockaddr_in6 addr;
    struct sockaddr_in addr;
//    uv_ip6_addr(conf.local.ip, atoi(conf.local.port),&addr);
    uv_ip4_addr(conf.local.ip, conf.local.port,&addr);
    int r;

//    do
//    {
//        if (r = uv_tcp_init (loop, listener))               break;
//        if (r = uv_tcp_bind(listener, (const struct sockaddr *) &addr,0))               break;
//        if (r = uv_listen(stream, 128, client_connect_cb)) break;
//        return uv_run(loop, UV_RUN_DEFAULT);//
//    }
//    while (0);
//    r = cipher_init(&conf);
//    if (r) 
//    {
//        exit(1);
//    }
    r = server_run(&conf, uv_default_loop());

//    return printf("%s\n", uv_strerror(uv_last_error(loop)));
//      return r;
    if (r) 
    {
        exit(1);
    }
    return 0;
}

const char *_getprogname(void) {
  return progname;
}

