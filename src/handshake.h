/* 
 * File:   handshake.h
 * Author: lizhou
 *
 * Created on 2017年3月24日, 下午 4:09
 */

#ifndef HANDSHAKE_H
#define	HANDSHAKE_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif
/* handshake */
//uv_buf_t handshake_alloc_cb(uv_handle_t *, size_t);
void     handshake_alloc_cb(uv_handle_t *, size_t, uv_buf_t *);
void     handshake_read_cb(uv_stream_t *, ssize_t, const uv_buf_t *);
void     handshake_write_cb(uv_write_t  *, int);
int      handshake         (uv_stream_t *);
#endif	/* HANDSHAKE_H */

