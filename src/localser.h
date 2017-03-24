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

int server_run(const config_t *cf, uv_loop_t *loop);          
#endif /* !LOCALSER_H_ */