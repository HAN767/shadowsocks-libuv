#ifndef CLIENT_H_
#define CLIENT_H_

//void client_finish_init(server_ctx *sx, client_ctx *cx);
/* client */
void client_close_cb   (uv_handle_t   *);
void client_read_cb   (uv_stream_t   *, ssize_t, const uv_buf_t *);
void client_write_cb   (uv_write_t    *, int);
void client_connect_cb (uv_stream_t   *, int);
void client_shutdown_cb(uv_shutdown_t *, int);

#endif /* !CLIENT_H_ */