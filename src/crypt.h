#ifndef CRYPT_H_
#define CRYPT_H_
#include <uv.h>
#include "shadow.h"

void dump(unsigned char *tag, unsigned char *text, int len);
//cipher_t * cipher_new    (const char *);
cipher_t * cipher_new    (const config_t *conf);
void       cipher_free   (cipher_t   *);
//void    cipher_encrypt(shadow_t   *, size_t,  uv_buf_t *, uv_buf_t *);
//void      cipher_decrypt(shadow_t   *, size_t,  uv_buf_t *, uv_buf_t *);
uv_buf_t cipher_encrypt(shadow_t * shadow, size_t * encryptl,
                      char     *  plain, size_t     plainl);
uv_buf_t cipher_decrypt(shadow_t * shadow,  size_t *   plainl,
                      char     * encrypt, size_t   encryptl);
#endif /* !CRYPT_H_ */

