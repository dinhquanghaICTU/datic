# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/app_task//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.h" 1



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
# 5 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.h" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 6 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.h" 2
# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.h"

# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.h"
void app_task_init(void);
void app_task_button(void *params);
void app_task_led(void *params);
void app_task_wifi(void *params);
void app_task_main(void *params);
void app_set_led_blink(
# 22 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.h" 3 4
                      _Bool 
# 22 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.h"
                           enable);
# 2 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h" 1







# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 9 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 20 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 21 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 48 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 22 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3
# 23 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3





typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;





# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 350 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3





typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 46 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 47 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 37 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 54 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 47 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long __fd_mask;

typedef __fd_mask fd_mask;
# 48 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef struct fd_set {
 __fd_mask __fds_bits[(((64) + ((((int)sizeof(__fd_mask) * 8)) - 1)) / (((int)sizeof(__fd_mask) * 8)))];
} fd_set;
# 74 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __uintptr_t u_register_t;






typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 119 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 220 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;





  int detachstate;
} pthread_attr_t;
# 154 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
  int recursive;
} pthread_mutexattr_t;






typedef __uint32_t pthread_cond_t;



typedef struct {
  int is_initialized;
  clock_t clock;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 224 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 10 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h" 2
# 22 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    
# 22 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
   typedef struct
    {
        void *hdl;
    } aos_hdl_t;

    typedef aos_hdl_t aos_task_t;
    typedef aos_hdl_t aos_mutex_t;
    typedef aos_hdl_t aos_sem_t;
    typedef aos_hdl_t aos_queue_t;
    typedef aos_hdl_t aos_timer_t;
    typedef aos_hdl_t aos_work_t;

    typedef struct
    {
        void *hdl;
        void *stk;
    } aos_workqueue_t;

    typedef unsigned int aos_task_key_t;




    void aos_reboot(void);






    int aos_get_hz(void);






    const char *aos_version_get(void);
# 71 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_new(const char *name, void (*fn)(void *), void *arg,
                     int stack_size);
# 89 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_new_ext(aos_task_t *task, const char *name, void (*fn)(void *),
                         void *arg, int stack_size, int prio);






    void aos_task_exit(int code);






    const char *aos_task_name(void);
# 113 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_key_create(aos_task_key_t *key);






    void aos_task_key_delete(aos_task_key_t key);
# 130 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_setspecific(aos_task_key_t key, void *vp);






    void *aos_task_getspecific(aos_task_key_t key);
# 148 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_new(aos_mutex_t *mutex);







    void aos_mutex_free(aos_mutex_t *mutex);
# 167 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_lock(aos_mutex_t *mutex, unsigned int timeout);
# 177 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_unlock(aos_mutex_t *mutex);
# 186 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_is_valid(aos_mutex_t *mutex);
# 197 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_new(aos_sem_t *sem, int count);







    void aos_sem_free(aos_sem_t *sem);
# 216 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_wait(aos_sem_t *sem, unsigned int timeout);







    void aos_sem_signal(aos_sem_t *sem);
# 233 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_is_valid(aos_sem_t *sem);







    void aos_sem_signal_all(aos_sem_t *sem);
# 254 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_new(aos_queue_t *queue, void *buf, unsigned int size,
                      int max_msg);






    void aos_queue_free(aos_queue_t *queue);
# 273 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_send(aos_queue_t *queue, void *msg, unsigned int size);
# 285 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_recv(aos_queue_t *queue, unsigned int ms, void *msg,
                       unsigned int *size);
# 295 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_is_valid(aos_queue_t *queue);
# 304 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_queue_buf_ptr(aos_queue_t *queue);
# 317 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_new(aos_timer_t *timer, void (*fn)(void *, void *), void *arg,
                      int ms, int repeat);
# 332 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_new_ext(aos_timer_t *timer, void (*fn)(void *, void *),
                          void *arg, int ms, int repeat,
                          unsigned char auto_run);






    void aos_timer_free(aos_timer_t *timer);
# 350 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_start(aos_timer_t *timer);
# 359 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_stop(aos_timer_t *timer);
# 369 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_change(aos_timer_t *timer, int ms);
# 380 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_workqueue_create(aos_workqueue_t *workqueue, int pri,
                             int stack_size);
# 393 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_init(aos_work_t *work, void (*fn)(void *), void *arg, int dly);






    void aos_work_destroy(aos_work_t *work);
# 410 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_run(aos_workqueue_t *workqueue, aos_work_t *work);
# 419 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_sched(aos_work_t *work);
# 428 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_cancel(aos_work_t *work);
# 438 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_realloc(void *mem, unsigned int size);
# 447 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_malloc(unsigned int size);
# 457 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_calloc(unsigned int nitems, unsigned int size);
# 466 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_zalloc(unsigned int size);







    void aos_alloc_trace(void *addr, size_t allocator);






    void aos_free(void *mem);






    long long aos_now(void);






    long long aos_now_ms(void);
# 512 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    char *aos_now_time_str(char *buffer, const int len);






    void aos_msleep(int ms);




    void aos_init(void);




    void aos_start(void);
# 3 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 35 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 57 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskSwitchContext( void );
extern void vEnvironmentCall( uint32_t exception );
# 97 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 152 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
BaseType_t xPortIsInsideInterrupt( void );
# 53 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void *pvPortCalloc(size_t numElements, size_t sizeOfElement); ;
void *pvPortRealloc(void *pv, size_t xSize) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{



 UBaseType_t uxDummy2;
 void *pvDummy3;
 StaticMiniListItem_t xDummy4;



} StaticList_t;
# 1095 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];




  UBaseType_t uxDummy9;


  UBaseType_t uxDummy10[ 2 ];


  UBaseType_t uxDummy12[ 2 ];





  void *pvDummy15[ 1 ];

        void *pvDummy15_1[ 1 ];
# 1133 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1146 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1162 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];


  uint8_t ucDummy6;







  UBaseType_t uxDummy8;
  uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1206 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1235 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 void *pvDummy5;
 TaskFunction_t pvDummy6;

  UBaseType_t uxDummy7;

 uint8_t ucDummy8;

} StaticTimer_t;
# 1263 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 4 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
struct xLIST;
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 struct xLIST * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 345 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 330 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1513 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;






        typedef void (*TlsDeleteCallbackFunction_t)( int, void * );




        UBaseType_t vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue, TlsDeleteCallbackFunction_t pvDelCallback);
# 1541 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1550 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1649 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
UBaseType_t xAddTasksToAllList( void ) ;
List_t * pxTaskGetAllList( void ) ;
# 1698 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1752 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1782 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1863 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1954 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2031 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2132 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2201 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2217 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2238 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2271 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2285 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2311 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2322 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2378 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2399 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2416 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 5 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog.h" 1
# 36 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog.h"
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 10 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 11 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 14 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 15 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3








# 22 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef unsigned long __ULong;
# 34 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3





# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 18 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);


void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
void * memrchr (const void *, int, size_t);
void * rawmemchr (const void *, int);


char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);


char *strcasestr (const char *, const char *);
char *strchrnul (const char *, int);


char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);






char *strerror_r (int, char *, size_t);
# 112 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);







int strverscmp (const char *, const char *);
# 172 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *__attribute__((__nonnull__ (1))) basename (const char *) __asm__("" "__gnu_basename");


# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 37 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog.h" 2




# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/utils/include/utils_log.h" 1




# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 36 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 37 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 63 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3



typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
char * ctermid (char *);


char * cuserid (char *);

FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 257 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);



int fcloseall (void);



int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));


int asprintf (char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int vasprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));


int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 339 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);



char * fgets_unlocked (char *restrict, int, FILE *restrict);
int fputs_unlocked (const char *restrict, FILE *restrict);
# 577 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 624 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
FILE *_fopencookie_r (struct _reent *, void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
# 687 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 6 "/home/dinhquangha/Ai-Thinker-WB2/components/utils/include/utils_log.h" 2
# 56 "/home/dinhquangha/Ai-Thinker-WB2/components/utils/include/utils_log.h"

# 56 "/home/dinhquangha/Ai-Thinker-WB2/components/utils/include/utils_log.h"
typedef enum LOG_BUF_OUT_DATA_TYPE {
    LOG_BUF_OUT_DATA_TYPE_HEX,
    LOG_BUF_OUT_DATA_TYPE_INT8,
    LOG_BUF_OUT_DATA_TYPE_UNT8,
} LOG_BUF_OUT_DATA_TYPE_T;
# 127 "/home/dinhquangha/Ai-Thinker-WB2/components/utils/include/utils_log.h"
int log_buf_out(const char *file, int line, const void *inbuf, int len, LOG_BUF_OUT_DATA_TYPE_T type);

void bl_printk(const char *format, ...);
# 42 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog.h" 2

# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog_type.h" 1
# 34 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog_type.h"
typedef enum _blog_leve {
    BLOG_LEVEL_ALL = 0,
    BLOG_LEVEL_DEBUG,
    BLOG_LEVEL_INFO,
    BLOG_LEVEL_WARN,
    BLOG_LEVEL_ERROR,
    BLOG_LEVEL_ASSERT,
    BLOG_LEVEL_NEVER,
} blog_level_t;

typedef struct _blog_info {
    blog_level_t *level;
    char *name;
} blog_info_t;
# 44 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog.h" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog_cfg.h" 1
# 45 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog.h" 2
# 340 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blog/blog.h"
    void blog_init(void);

    void blog_hexdump_out(const char* name, uint8_t width, uint8_t* buf, uint16_t size);

    int blog_set_level_log_component(char* level, char* component_name);
# 6 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_app_callback.h" 1





# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_event/app_event.h" 1





typedef enum {
    APP_EVENT_NONE = 0,
    APP_EVENT_BUTTON_HOLD,
    APP_EVENT_BUTTON_PRESS,
    APP_EVENT_WIFI_CONNECTED,
    APP_EVENT_WIFI_DISCONNECTED,
    APP_EVENT_WIFI_CONNECT_FAILED,
    APP_EVENT_BLE_CONFIG_DONE,
    APP_EVENT_BLE_CONFIG_TIMEOUT,
    APP_EVENT_MQTT_TOGGLE,
    APP_EVENT_MQTT_SET_ON,
    APP_EVENT_MQTT_SET_OFF,
    APP_EVENT_RELAY_STATE_CHANGED,
    APP_EVENT_MAX
} app_event_type_t;

typedef struct {
    app_event_type_t type;
    void *data;
} app_event_t;
# 7 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_app_callback.h" 2

void app_button_hold_callback(int pin, int event, void *data);
void app_button_press_callback(int pin, int event, void *data);
void app_wifi_connected_callback(void);
void app_wifi_disconnected_callback(void);
void app_wifi_connect_failed_callback(void);
void app_ble_config_done_callback(const char *ssid, const char *password);


void app_event_post(app_event_type_t type, void *data);
app_event_t *app_event_get_queue(void);
int *app_event_get_queue_head(void);
int *app_event_get_queue_tail(void);


void app_callback_update_lock_button(
# 22 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_app_callback.h" 3 4
                                    _Bool 
# 22 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_app_callback.h"
                                         locked);
# 7 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_wifi.h" 1





# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h" 1
# 14 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h"
typedef struct {
    char ssid[32 + 1];
    char password[64 + 1];
    
# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h" 3 4
   _Bool 
# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h"
        is_valid;
} wifi_config_t;

int app_config_init(void);
int app_config_load_wifi(wifi_config_t *config);
int app_config_save_wifi(const char *ssid, const char *password);
int app_config_clear_wifi(void);

# 24 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h" 3 4
_Bool 
# 24 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h"
    app_config_has_wifi(void);


int app_config_save_relay_settings(uint8_t default_state, 
# 27 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h" 3 4
                                                         _Bool 
# 27 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h"
                                                              lock_button);
int app_config_load_relay_settings(uint8_t *default_state, 
# 28 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h" 3 4
                                                          _Bool 
# 28 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h"
                                                               *lock_button);
# 7 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_wifi.h" 2

typedef void (*app_wifi_connected_cb_t)(void);
typedef void (*app_wifi_disconnected_cb_t)(void);
typedef void (*app_wifi_connect_failed_cb_t)(void);

int app_wifi_init(void);
int app_wifi_connect(const char *ssid, const char *password);
int app_wifi_disconnect(void);
int app_wifi_disable(void);
int app_wifi_enable(void);

# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_wifi.h" 3 4
_Bool 
# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_wifi.h"
    app_wifi_is_connected(void);

# 18 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_wifi.h" 3 4
_Bool 
# 18 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_wifi.h"
    app_wifi_is_mgmr_ready(void);
void app_wifi_set_connected_cb(app_wifi_connected_cb_t cb);
void app_wifi_set_disconnected_cb(app_wifi_disconnected_cb_t cb);
void app_wifi_set_connect_failed_cb(app_wifi_connect_failed_cb_t cb);
void app_wifi_task(void *params);
# 8 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_ble.h" 1
# 12 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_ble.h"
typedef void (*app_ble_config_done_cb_t)(const char *ssid, const char *password);

int app_ble_init(void);
int app_ble_start(void);
int app_ble_stop(void);

# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_ble.h" 3 4
_Bool 
# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_ble.h"
    app_ble_is_running(void);
void app_ble_set_config_done_cb(app_ble_config_done_cb_t cb);
# 9 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_state/app_state.h" 1




# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_state/../app_event/app_event.h" 1
# 6 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_state/app_state.h" 2

typedef enum {
    APP_STATE_INIT = 0,
    APP_STATE_CHECK_FLASH,
    APP_STATE_BLE_CONFIG,
    APP_STATE_WIFI_CONNECTING,
    APP_STATE_WIFI_CONNECTED,
    APP_STATE_WIFI_FAILED,
    APP_STATE_MAX
} app_state_t;

typedef struct {
    app_state_t current_state;
    app_state_t next_state;
} app_state_machine_t;

typedef app_state_t (*app_state_handler_t)(app_event_t *event);

void app_state_init(void);
app_state_t app_state_get_current(void);
app_state_t app_state_get_next(void);
void app_state_set_next(app_state_t next_state);
app_state_t app_state_process_event(app_event_t *event);
# 10 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_event/app_event.h" 1
# 11 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h" 1
# 12 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_mqtt.h" 1






int app_mqtt_init(void);


int app_mqtt_start(const char *broker, int port, const char *client_id);


int app_mqtt_stop(void);



# 16 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_mqtt.h" 3 4
_Bool 
# 16 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_mqtt.h"
    app_mqtt_is_connected(void);


int app_mqtt_publish_state(const char *state);


const char *app_mqtt_get_command_topic(void);


const char *app_mqtt_get_state_topic(void);
# 13 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/led/led.h" 1




void led_init(void);
void led_on(void);
void led_off(void);
void led_toggle(void);
void led_blink(int times, int delay_ms);
int led_get_state(void);
# 14 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/relay/relay.h" 1





void relay_init(void);
void relay_on(void);
void relay_off(void);
void relay_toggle(void);
uint8_t relay_get_state(void);
# 15 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../third_party/lib_button/app_btn.h" 1




# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/hardware/common/hardware.h" 1
# 6 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../third_party/lib_button/app_btn.h" 2
# 32 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../third_party/lib_button/app_btn.h"
typedef enum
{
    APP_BTN_EVT_PRESSED = 0,
    APP_BTN_EVT_RELEASED,
    APP_BTN_EVT_HOLD,
    APP_BTN_EVT_HOLD_LONG,
    APP_BTN_EVT_DOUBLE_CLICK,
    APP_BTN_EVT_TRIPLE_CLICK,
    APP_BTN_EVT_IDLE,
    APP_BTN_EVT_IDLE_BREAK,
    APP_BTN_EVT_MAX
} app_btn_event_t;

typedef struct
{
    uint32_t pin;
    uint8_t last_state;
    uint32_t idle_level;
    uint8_t debounce_val;
    uint8_t debounce_counter;
} app_btn_hw_config_t;

typedef uint32_t (*app_btn_get_tick_cb)(void);
typedef void (*app_btn_initialize_cb)(uint32_t btn_num);
typedef uint32_t (*app_btn_get_level_cb)(uint32_t btn_num);

typedef struct
{
    app_btn_hw_config_t *config;
    uint8_t btn_count;
    app_btn_get_tick_cb get_tick_cb;
    app_btn_initialize_cb btn_initialize;
    app_btn_get_level_cb btn_read;
} app_btn_config_t;


typedef void (*app_btn_evt_handler_t)(int, int, void *);






void app_btn_initialize(app_btn_config_t *config);





void app_btn_scan(void *params);







void app_btn_register_callback(app_btn_event_t event, app_btn_evt_handler_t cb, void *data);




void app_btn_reset_state(void);
# 16 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/common/hardware.h" 1
# 17 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/wifi_if/wifi_if.h" 1





typedef void (*wifi_if_connected_cb_t)(void);
typedef void (*wifi_if_disconnected_cb_t)(void);
typedef void (*wifi_if_connect_failed_cb_t)(void);

int wifi_if_init(void);
int wifi_if_connect(const char *ssid, const char *password);
int wifi_if_disconnect(void);
int wifi_if_disable(void);
int wifi_if_enable(void);

# 15 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/wifi_if/wifi_if.h" 3 4
_Bool 
# 15 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/wifi_if/wifi_if.h"
    wifi_if_is_connected(void);

# 16 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/wifi_if/wifi_if.h" 3 4
_Bool 
# 16 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/wifi_if/wifi_if.h"
    wifi_if_is_mgmr_ready(void);


void wifi_if_set_connected_cb(wifi_if_connected_cb_t cb);
void wifi_if_set_disconnected_cb(wifi_if_disconnected_cb_t cb);
void wifi_if_set_connect_failed_cb(wifi_if_connect_failed_cb_t cb);
# 18 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/mqtt_if/mqtt_if.h" 1






typedef void (*mqtt_if_connected_cb_t)(void);
typedef void (*mqtt_if_disconnected_cb_t)(void);
typedef void (*mqtt_if_message_cb_t)(const char *topic, const char *payload, int payload_len);


typedef struct {
    char broker[128];
    int port;
    char client_id[64];
    char username[64];
    char password[64];
    int keepalive;
} mqtt_if_config_t;


int mqtt_if_init(void);


int mqtt_if_set_config(const mqtt_if_config_t *config);


int mqtt_if_connect(void);


int mqtt_if_disconnect(void);



# 34 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/mqtt_if/mqtt_if.h" 3 4
_Bool 
# 34 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/mqtt_if/mqtt_if.h"
    mqtt_if_is_connected(void);


int mqtt_if_subscribe(const char *topic);


int mqtt_if_unsubscribe(const char *topic);


int mqtt_if_publish(const char *topic, const char *payload, int payload_len, 
# 43 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/mqtt_if/mqtt_if.h" 3 4
                                                                            _Bool 
# 43 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/mqtt_if/mqtt_if.h"
                                                                                 retain);


void mqtt_if_set_connected_cb(mqtt_if_connected_cb_t cb);
void mqtt_if_set_disconnected_cb(mqtt_if_disconnected_cb_t cb);
void mqtt_if_set_message_cb(mqtt_if_message_cb_t cb);
# 19 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h" 1




typedef struct _gpio_ctx_desc {
    struct _gpio_ctx_desc *next;
    void (*gpio_handler)(void *);
    void *arg;

    uint8_t gpioPin;
    uint8_t intCtrlMod;
    uint8_t intTrgMod;
} gpio_ctx_t;

int bl_gpio_enable_output(uint8_t pin, uint8_t pullup, uint8_t pulldown);
int bl_gpio_enable_input(uint8_t pin, uint8_t pullup, uint8_t pulldown);
int bl_gpio_output_set(uint8_t pin, uint8_t value);
int bl_gpio_input_get(uint8_t pin, uint8_t *value);
int bl_gpio_input_get_value(uint8_t pin);
int bl_gpio_int_clear(uint8_t gpioPin,uint8_t intClear);
void bl_gpio_intmask(uint8_t gpiopin, uint8_t mask);
void bl_set_gpio_intmod(uint8_t gpioPin, uint8_t intCtrlMod, uint8_t intTrgMod);
void bl_gpio_register(gpio_ctx_t *pstnode);
# 20 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2
# 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys.h" 1





typedef enum {
    BL_RST_POWER_OFF = 0,
    BL_RST_HARDWARE_WATCHDOG,
    BL_RST_FATAL_EXCEPTION,
    BL_RST_SOFTWARE_WATCHDOG,
    BL_RST_SOFTWARE,
} BL_RST_REASON_E;

BL_RST_REASON_E bl_sys_rstinfo_get(void);
int bl_sys_rstinfo_set(BL_RST_REASON_E val);
int bl_sys_rstinfo_getsting(char *info);
void bl_sys_rstinfo_init(void);
int bl_sys_logall_enable(void);
int bl_sys_logall_disable(void);
void bl_sys_mfg_config(void);
int bl_sys_reset_por(void);
void bl_sys_reset_system(void);
int bl_sys_isxipaddr(uint32_t addr);
int bl_sys_early_init(void);
int bl_sys_init(void);
# 21 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 2



static TaskHandle_t g_task_button_handle = 
# 24 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                          ((void *)0)
# 24 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                              ;
static TaskHandle_t g_task_led_handle = 
# 25 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                       ((void *)0)
# 25 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                           ;
static TaskHandle_t g_task_wifi_handle = 
# 26 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                        ((void *)0)
# 26 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                            ;
static TaskHandle_t g_task_main_handle = 
# 27 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                        ((void *)0)
# 27 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                            ;
static 
# 28 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
      _Bool 
# 28 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
           g_led_blink_enable = 
# 28 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                0
# 28 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                     ;
uint8_t g_btn_filter_cnt = 1;

static uint32_t app_get_tick_ms(void)
{
    return aos_now_ms();
}

void app_task_init(void)
{
    xTaskCreate(app_task_button, "btn_task", 2048, 
# 38 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                                        ((void *)0)
# 38 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                                            , 5, &g_task_button_handle);
    xTaskCreate(app_task_led, "led_task", 1024, 
# 39 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                                  ((void *)0)
# 39 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                                      , 4, &g_task_led_handle);
    xTaskCreate(app_task_wifi, "wifi_task", 4096, 
# 40 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                                     ((void *)0)
# 40 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                                         , 3, &g_task_wifi_handle);
    xTaskCreate(app_task_main, "main_task", 4096, 
# 41 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                                     ((void *)0)
# 41 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                                         , 2, &g_task_main_handle);
}

void app_task_button(void *params)
{
    app_btn_hw_config_t btn_config[1] = {0};
    app_btn_config_t btn_cfg = {0};

    btn_config[0].pin = 4;
    btn_config[0].idle_level = 1;
    btn_config[0].debounce_val = 0;
    btn_config[0].debounce_counter = 0;
    btn_config[0].last_state = 1;

    btn_cfg.config = btn_config;
    btn_cfg.btn_count = 1;
    btn_cfg.get_tick_cb = app_get_tick_ms;
    btn_cfg.btn_initialize = 
# 58 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                            ((void *)0)
# 58 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                ;
    btn_cfg.btn_read = 
# 59 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                      ((void *)0)
# 59 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                          ;

    bl_gpio_enable_input(4, 0, 0);
    btn_cfg.btn_read = (app_btn_get_level_cb)bl_gpio_input_get_value;

    app_btn_initialize(&btn_cfg);
    app_btn_register_callback(APP_BTN_EVT_HOLD, app_button_hold_callback, 
# 65 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                                         ((void *)0)
# 65 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                                             );
    app_btn_register_callback(APP_BTN_EVT_PRESSED, app_button_press_callback, 
# 66 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                                             ((void *)0)
# 66 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                                                 );

    while (1) {
        app_btn_scan(
# 69 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                    ((void *)0)
# 69 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                        );
        aos_msleep(20);
    }
}

void app_task_led(void *params)
{
    led_init();
    while (1) {
        if (wifi_if_is_connected()) {
            led_on();
            aos_msleep(1000);
        } else {
            led_toggle();
            aos_msleep(500);
        }
    }
}

void app_task_wifi(void *params)
{
    app_wifi_task(params);
}

void app_task_main(void *params)
{
    wifi_config_t wifi_cfg;
    app_event_t event = {0};
    ;
    app_state_init();
    app_mqtt_init();

    {
        extern int app_config_load_relay_settings(uint8_t *default_state, 
# 102 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                                         _Bool 
# 102 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                                              *lock_button);
        extern void app_callback_update_lock_button(
# 103 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                   _Bool 
# 103 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                        locked);
        uint8_t default_state = 0;
        
# 105 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
       _Bool 
# 105 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
            lock_button = 
# 105 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                          0
# 105 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                               ;
        if (app_config_load_relay_settings(&default_state, &lock_button) == 0) {
            if (default_state) {
                relay_on();
            } else {
                relay_off();
            }
            app_callback_update_lock_button(lock_button);
        }
    }

    event.type = APP_EVENT_NONE;
    app_state_process_event(&event);

    int wait_count = 0;
    while (!wifi_if_is_mgmr_ready() && wait_count < 100) {
        aos_msleep(100);
        wait_count++;
    }

    if (wifi_if_is_mgmr_ready()) {
        if (app_config_has_wifi()) {
            if (app_config_load_wifi(&wifi_cfg) == 0) {
                app_state_set_next(APP_STATE_WIFI_CONNECTING);
                event.type = APP_EVENT_NONE;
                app_state_process_event(&event);
                app_wifi_connect(wifi_cfg.ssid, wifi_cfg.password);
            } else {
                app_state_set_next(APP_STATE_CHECK_FLASH);
                event.type = APP_EVENT_NONE;
                app_state_process_event(&event);
            }
        } else {
            app_state_set_next(APP_STATE_CHECK_FLASH);
            event.type = APP_EVENT_NONE;
            app_state_process_event(&event);
        }
    }

    while (1) {
        extern app_event_t g_event_queue[10];
        extern int g_event_queue_head;
        extern int g_event_queue_tail;

        if (g_event_queue_head != g_event_queue_tail) {
            event = g_event_queue[g_event_queue_head];
            g_event_queue_head = (g_event_queue_head + 1) % 10;
        } else {
            event.type = APP_EVENT_NONE;
            event.data = 
# 154 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                        ((void *)0)
# 154 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                            ;
        }

        app_state_t current_state = app_state_get_current();

        if (event.type == APP_EVENT_MQTT_TOGGLE) {
            relay_toggle();
            if (mqtt_if_is_connected()) {
                uint8_t relay_state = relay_get_state();
                app_mqtt_publish_state(relay_state ? "ON" : "OFF");
            }
            event.type = APP_EVENT_NONE;
        } else if (event.type == APP_EVENT_MQTT_SET_ON) {
            relay_on();
            if (mqtt_if_is_connected()) {
                app_mqtt_publish_state("ON");
            }
            event.type = APP_EVENT_NONE;
        } else if (event.type == APP_EVENT_MQTT_SET_OFF) {
            relay_off();
            if (mqtt_if_is_connected()) {
                app_mqtt_publish_state("OFF");
            }
            event.type = APP_EVENT_NONE;
        } else if (event.type == APP_EVENT_RELAY_STATE_CHANGED) {
            if (mqtt_if_is_connected()) {
                uint8_t relay_state = relay_get_state();
                app_mqtt_publish_state(relay_state ? "ON" : "OFF");
            }
            event.type = APP_EVENT_NONE;
        }

        switch (current_state) {
            case APP_STATE_CHECK_FLASH:
                break;
            case APP_STATE_BLE_CONFIG:
                if (!app_ble_is_running()) {
                    aos_msleep(200);
                    app_ble_start();
                }
                break;
            case APP_STATE_WIFI_CONNECTING:
                if (app_ble_is_running()) {
                    app_ble_stop();
                }
                break;
            case APP_STATE_WIFI_CONNECTED:
                if (app_ble_is_running()) {
                    app_ble_stop();
                }
                {
                    static 
# 205 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                          _Bool 
# 205 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                               mqtt_connect_attempted = 
# 205 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                        0
# 205 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                             ;
                    static uint32_t mqtt_last_attempt = 0;
                    uint32_t now = aos_now_ms();

                    if (!mqtt_if_is_connected() && !mqtt_connect_attempted) {
                        const char *mqtt_broker = "172.20.10.3";
                        app_mqtt_start(mqtt_broker, 1883, 
# 211 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                         ((void *)0)
# 211 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                             );
                        mqtt_connect_attempted = 
# 212 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                1
# 212 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                    ;
                        mqtt_last_attempt = now;
                    } else if (!mqtt_if_is_connected() && mqtt_connect_attempted) {
                        if (now - mqtt_last_attempt > 10000) {
                            const char *mqtt_broker = "172.20.10.3";
                            app_mqtt_start(mqtt_broker, 1883, 
# 217 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                             ((void *)0)
# 217 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                                 );
                            mqtt_last_attempt = now;
                        }
                    } else if (mqtt_if_is_connected()) {
                        mqtt_connect_attempted = 
# 221 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                                                0
# 221 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                                                     ;
                    }
                }
                break;
            case APP_STATE_WIFI_FAILED:
                if (app_ble_is_running()) {
                    app_ble_stop();
                }
                break;
            default:
                break;
        }

        aos_msleep(100);
    }
}

void app_set_led_blink(
# 238 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c" 3 4
                      _Bool 
# 238 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
                           enable)
{
    g_led_blink_enable = enable;
}
