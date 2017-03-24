/* 
 * File:   remote.h
 * Author: lizhou
 *
 * Created on 2017年3月24日, 下午 4:11
 */

#ifndef REMOTE_H
#define	REMOTE_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif
/* phony */
void fakereply_write_cb(uv_write_t  *, int);
void remote_write_cb(uv_write_t * write, int status);
void remote_close_cb   (uv_handle_t   *);
void remote_read_cb   (uv_stream_t   *, ssize_t, const uv_buf_t *);
void remote_connect_cb (uv_connect_t  *, int);
void remote_shutdown_cb(uv_shutdown_t *, int);
#endif	/* REMOTE_H */

