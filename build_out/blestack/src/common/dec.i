# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/dec.c"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/blestack//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/dec.c"






# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h" 1
# 23 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h" 1
# 10 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
# 34 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4

# 34 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 2 3 4
# 11 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h" 2






# 16 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
typedef signed char s8_t;
typedef signed short s16_t;
typedef int32_t s32_t;
typedef signed long long s64_t;

typedef unsigned char u8_t;
typedef unsigned short u16_t;
typedef uint32_t u32_t;
typedef unsigned long long u64_t;
# 24 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h" 2

# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 26 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/utils/include/utils_string.h" 1



# 3 "/home/dinhquangha/Ai-Thinker-WB2/components/utils/include/utils_string.h"
void get_bytearray_from_string(char** params, uint8_t *result,int array_size);
void get_uint8_from_string(char** params, uint8_t *result);
void get_uint16_from_string(char** params, uint16_t *result);
void get_uint32_from_string(char** params, uint32_t *result);
void utils_parse_number(const char *str, char sep, uint8_t *buf, int buflen, int base);
void utils_parse_number_adv(const char *str, char sep, uint8_t *buf, int buflen, int base, int *count);
unsigned long long convert_arrayToU64(uint8_t* inputArray);
void convert_u64ToArray(unsigned long long inputU64, uint8_t result[8]);
void utils_memcpy8(void *dst, void *src, size_t len);
void utils_memcpy16(void *dst, void *src, size_t len);
void utils_memcpy32(void *dst, void *src, size_t len);
void utils_memcpy64(void *dst, void *src, size_t len);
void utils_memset8(void *src, uint8_t n, size_t len);
void utils_memset16(void *src, uint16_t n, size_t len);
void utils_memset32(void *src, uint32_t n, size_t len);
void utils_memset64(void *src, uint64_t n, size_t len);
void utils_memset8_with_seq(void *src, uint8_t seq, size_t len);
void utils_memset16_with_seq(void *src, uint16_t seq, size_t len);
void utils_memset32_with_seq(void *src, uint32_t seq, size_t len);
void utils_memset64_with_seq(void *src, uint64_t seq, size_t len);
void utils_memdrain8(void *src, size_t len);
void utils_memdrain16(void *src, size_t len);
void utils_memdrain32(void *src, size_t len);
void utils_memdrain64(void *src, size_t len);
void * utils_memdrain8_with_check(void *src, size_t len, uint8_t seq);
void * utils_memdrain16_with_check(void *src, size_t len, uint16_t seq);
void * utils_memdrain32_with_check(void *src, size_t len, uint32_t seq);
void * utils_memdrain64_with_check(void *src, size_t len, uint64_t seq);
# 27 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h" 2
# 91 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
void get_bytearray_from_string(char** params, uint8_t *result,int array_size);
void get_uint8_from_string(char** params, uint8_t *result);
void get_uint16_from_string(char** params, uint16_t *result);
void get_uint32_from_string(char** params, uint32_t *result);
void reverse_bytearray(uint8_t *src, uint8_t *result, int array_size);
void reverse_bytearray(uint8_t *src, uint8_t *result, int array_size);
unsigned int find_lsb_set(uint32_t data);

static inline int is_power_of_two(unsigned int x)
{
 return (x != 0) && !(x & (x - 1));
}

static inline s64_t arithmetic_shift_right(s64_t value, u8_t shift)
{
 s64_t sign_ext;

 if (shift == 0) {
  return value;
 }


 sign_ext = (value >> 63) & 1;


 sign_ext = -sign_ext;


 return (value >> shift) | (sign_ext << (64 - shift));
}
# 326 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
int char2hex(char c, u8_t *x);
# 336 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
int hex2char(u8_t x, char *c);
# 348 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
size_t bin2hex(const u8_t *buf, size_t buflen, char *hex, size_t hexlen);
# 366 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
size_t hex2bin(const char *hex, size_t hexlen, u8_t *buf, size_t buflen);
# 381 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
u8_t u8_to_dec(char *buf, u8_t buflen, u8_t value);
# 8 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/dec.c" 2

u8_t u8_to_dec(char *buf, u8_t buflen, u8_t value)
{
 u8_t divisor = 100;
 u8_t num_digits = 0;
 u8_t digit;

 while (buflen > 0 && divisor > 0) {
  digit = value / divisor;
  if (digit != 0 || divisor == 1 || num_digits != 0) {
   *buf = (char)digit + '0';
   buf++;
   buflen--;
   num_digits++;
  }

  value -= digit * divisor;
  divisor /= 10;
 }

 if (buflen) {
  *buf = '\0';
 }

 return num_digits;
}
