# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blestack//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 1


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
# 34 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4

# 34 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4
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
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 2 3 4
# 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h" 1
# 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"

# 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
typedef signed char s8_t;
typedef signed short s16_t;
typedef int32_t s32_t;
typedef signed long long s64_t;

typedef unsigned char u8_t;
typedef unsigned short u16_t;
typedef uint32_t u32_t;
typedef unsigned long long u64_t;
# 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 1
# 20 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 21 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 22 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 2






struct _snode {
 struct _snode *next;
};

typedef struct _snode sys_snode_t;

struct _slist {
 sys_snode_t *head;
 sys_snode_t *tail;
};

typedef struct _slist sys_slist_t;
# 192 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_init(sys_slist_t *list)
{
 list->head = 
# 194 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 194 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
 list->tail = 
# 195 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 195 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
}
# 207 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline 
# 207 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             _Bool 
# 207 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                  sys_slist_is_empty(sys_slist_t *list)
{
 return (!list->head);
}
# 219 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_head(sys_slist_t *list)
{
 return list->head;
}
# 231 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_tail(sys_slist_t *list)
{
 return list->tail;
}
# 245 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_next_no_check(sys_snode_t *node)
{
 return node->next;
}
# 257 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_next(sys_snode_t *node)
{
 return node ? sys_slist_peek_next_no_check(node) : 
# 259 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                                                   ((void *)0)
# 259 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                                                       ;
}
# 270 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_prepend(sys_slist_t *list,
         sys_snode_t *node)
{
 node->next = list->head;
 list->head = node;

 if (!list->tail) {
  list->tail = list->head;
 }
}
# 289 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_append(sys_slist_t *list,
        sys_snode_t *node)
{
 node->next = 
# 292 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 292 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;

 if (!list->tail) {
  list->tail = node;
  list->head = node;
 } else {
  list->tail->next = node;
  list->tail = node;
 }
}
# 314 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_append_list(sys_slist_t *list,
      void *head, void *tail)
{
 if (!list->tail) {
  list->head = (sys_snode_t *)head;
  list->tail = (sys_snode_t *)tail;
 } else {
  list->tail->next = (sys_snode_t *)head;
  list->tail = (sys_snode_t *)tail;
 }
}
# 335 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_merge_slist(sys_slist_t *list,
      sys_slist_t *list_to_append)
{
 sys_slist_append_list(list, list_to_append->head,
        list_to_append->tail);
 sys_slist_init(list_to_append);
}
# 352 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_insert(sys_slist_t *list,
        sys_snode_t *prev,
        sys_snode_t *node)
{
 if (!prev) {
  sys_slist_prepend(list, node);
 } else if (!prev->next) {
  sys_slist_append(list, node);
 } else {
  node->next = prev->next;
  prev->next = node;
 }
}
# 376 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_get_not_empty(sys_slist_t *list)
{
 sys_snode_t *node = list->head;

 list->head = node->next;
 if (list->tail == node) {
  list->tail = list->head;
 }

 return node;
}
# 397 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_get(sys_slist_t *list)
{
 return sys_slist_is_empty(list) ? 
# 399 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                                  ((void *)0) 
# 399 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                                       : sys_slist_get_not_empty(list);
}
# 412 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_remove(sys_slist_t *list,
        sys_snode_t *prev_node,
        sys_snode_t *node)
{
 if (!prev_node) {
  list->head = node->next;


  if (list->tail == node) {
   list->tail = list->head;
  }
 } else {
  prev_node->next = node->next;


  if (list->tail == node) {
   list->tail = prev_node;
  }
 }

 node->next = 
# 432 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 432 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
}
# 445 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline 
# 445 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             _Bool 
# 445 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                  sys_slist_find_and_remove(sys_slist_t *list,
          sys_snode_t *node)
{
 sys_snode_t *prev = 
# 448 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                    ((void *)0)
# 448 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                        ;
 sys_snode_t *test;

 for (test = sys_slist_peek_head(list); test; test = sys_slist_peek_next(test)) {
  if (test == node) {
   sys_slist_remove(list, prev, node);
   return 
# 454 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
         1
# 454 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
             ;
  }

  prev = test;
 }

 return 
# 460 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
       0
# 460 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
            ;
}
# 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 1
# 23 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 24 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 2





struct _dnode {
 union {
  struct _dnode *head;
  struct _dnode *next;
 };
 union {
  struct _dnode *tail;
  struct _dnode *prev;
 };
};

typedef struct _dnode sys_dlist_t;
typedef struct _dnode sys_dnode_t;
# 188 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_init(sys_dlist_t *list)
{
 list->head = (sys_dnode_t *)list;
 list->tail = (sys_dnode_t *)list;
}
# 205 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_head(sys_dlist_t *list, sys_dnode_t *node)
{
 return list->head == node;
}
# 219 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_tail(sys_dlist_t *list, sys_dnode_t *node)
{
 return list->tail == node;
}
# 232 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_empty(sys_dlist_t *list)
{
 return list->head == list;
}
# 247 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_has_multiple_nodes(sys_dlist_t *list)
{
 return list->head != list->tail;
}
# 260 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_head(sys_dlist_t *list)
{
 return sys_dlist_is_empty(list) ? 
# 262 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                  ((void *)0) 
# 262 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                       : list->head;
}
# 275 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_head_not_empty(sys_dlist_t *list)
{
 return list->head;
}
# 291 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_next_no_check(sys_dlist_t *list,
       sys_dnode_t *node)
{
 return (node == list->tail) ? 
# 294 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                              ((void *)0) 
# 294 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                   : node->next;
}
# 307 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_next(sys_dlist_t *list,
            sys_dnode_t *node)
{
 return node ? sys_dlist_peek_next_no_check(list, node) : 
# 310 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                                         ((void *)0)
# 310 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                                             ;
}
# 321 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_tail(sys_dlist_t *list)
{
 return sys_dlist_is_empty(list) ? 
# 323 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                  ((void *)0) 
# 323 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                       : list->tail;
}
# 337 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_append(sys_dlist_t *list, sys_dnode_t *node)
{
 node->next = list;
 node->prev = list->tail;

 list->tail->next = node;
 list->tail = node;
}
# 357 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_prepend(sys_dlist_t *list, sys_dnode_t *node)
{
 node->next = list->head;
 node->prev = list;

 list->head->prev = node;
 list->head = node;
}
# 379 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_insert_after(sys_dlist_t *list,
 sys_dnode_t *insert_point, sys_dnode_t *node)
{
 if (!insert_point) {
  sys_dlist_prepend(list, node);
 } else {
  node->next = insert_point->next;
  node->prev = insert_point;
  insert_point->next->prev = node;
  insert_point->next = node;
 }
}
# 405 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_insert_before(sys_dlist_t *list,
 sys_dnode_t *insert_point, sys_dnode_t *node)
{
 if (!insert_point) {
  sys_dlist_append(list, node);
 } else {
  node->prev = insert_point->prev;
  node->next = insert_point;
  insert_point->prev->next = node;
  insert_point->prev = node;
 }
}
# 435 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_insert_at(sys_dlist_t *list, sys_dnode_t *node,
 int (*cond)(sys_dnode_t *, void *), void *data)
{
 if (sys_dlist_is_empty(list)) {
  sys_dlist_append(list, node);
 } else {
  sys_dnode_t *pos = sys_dlist_peek_head(list);

  while (pos && !cond(pos, data)) {
   pos = sys_dlist_peek_next(list, pos);
  }
  sys_dlist_insert_before(list, pos, node);
 }
}
# 461 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_remove(sys_dnode_t *node)
{
 node->prev->next = node->next;
 node->next->prev = node->prev;
}
# 477 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_get(sys_dlist_t *list)
{
 sys_dnode_t *node;

 if (sys_dlist_is_empty(list)) {
  return 
# 482 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
        ((void *)0)
# 482 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
            ;
 }

 node = list->head;
 sys_dlist_remove(node);
 return node;
}
# 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 1





# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/config.h" 1



# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/config.h" 2
# 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 1 3
# 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 2 3
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3

# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 350 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3






# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 2 3
# 28 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


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
# 90 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
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
# 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
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
# 98 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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
# 292 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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
# 819 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 47 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 48 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 18 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


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


# 25 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




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
# 112 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
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
# 172 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *__attribute__((__nonnull__ (1))) basename (const char *) __asm__("" "__gnu_basename");


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h" 1
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 1
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2







# 21 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
typedef struct {
    void *hdl;
} bl_hdl_t;

typedef bl_hdl_t _queue_t;
typedef bl_hdl_t _sem_t;
typedef uint32_t _stack_element_t;
typedef bl_hdl_t _mutex_t;
typedef bl_hdl_t bl_timer_t;
typedef uint32_t _task_t;
# 52 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
typedef sys_dlist_t _wait_q_t;

struct k_queue {
        void *hdl;
        sys_dlist_t poll_events;
};





void k_queue_init(struct k_queue *queue, int size);
void k_queue_free(struct k_queue *queue);
void k_queue_append(struct k_queue *queue, void *data);
void k_queue_prepend(struct k_queue *queue, void *data);
void k_queue_insert(struct k_queue *queue, void *prev, void *data);
void k_queue_append_list(struct k_queue *queue, void *head, void *tail);
void *k_queue_get(struct k_queue *queue, s32_t timeout);
int k_queue_is_empty(struct k_queue *queue);
int k_queue_get_cnt(struct k_queue *queue);

struct k_lifo {
    struct k_queue _queue;
};
# 98 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
struct k_fifo {
        struct k_queue _queue;
};
# 129 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
struct k_sem {
    _sem_t sem;
    sys_dlist_t poll_events;
};




int k_sem_init(struct k_sem *sem, unsigned int initial_count, unsigned int limit);




int k_sem_take(struct k_sem *sem, uint32_t timeout);




int k_sem_give(struct k_sem *sem);




int k_sem_delete(struct k_sem *sem);




unsigned int k_sem_count_get(struct k_sem *sem);

struct k_mutex {
    _mutex_t mutex;
    sys_dlist_t poll_events;
};

typedef void (*k_timer_handler_t)(void *timer);

typedef struct k_timer {
    bl_timer_t timer;
    k_timer_handler_t handler;
    void *args;
    uint32_t timeout;
    uint32_t start_ms;
} k_timer_t;




void k_timer_init(k_timer_t *timer, k_timer_handler_t handle, void *args);

void* k_timer_get_id(void* hdl);





void k_timer_start(k_timer_t *timer, uint32_t timeout);

void k_timer_reset(k_timer_t *timer);




void k_timer_stop(k_timer_t *timer);





void k_timer_delete(k_timer_t *timer);
# 214 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
int64_t k_uptime_get();
u32_t k_uptime_get_32(void);

struct k_thread {
    _task_t task;
};

typedef _stack_element_t k_thread_stack_t;

inline void k_call_stacks_analyze(void) { }




static inline char *K_THREAD_STACK_BUFFER(k_thread_stack_t *sym)
{
    return (char *)sym;
}

typedef void (*k_thread_entry_t)(void *args);

int k_thread_create(struct k_thread *new_thread, const char *name,
                    size_t stack_size, k_thread_entry_t entry,
                    int prio);

void k_thread_delete(struct k_thread *new_thread);


# 241 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 3 4
_Bool 
# 241 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
    k_is_current_thread(struct k_thread *thread);




int k_yield();





void k_sleep(s32_t duration);




unsigned int irq_lock();




void irq_unlock(unsigned int key);

int k_is_in_isr(void);
# 273 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
long long k_now_ms(void);
void k_get_random_byte_array(uint8_t *buf, size_t len);
void *k_malloc(size_t size);
void k_free(void *buf);
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h" 1


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h" 1
# 18 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
typedef int atomic_t;
typedef atomic_t atomic_val_t;
# 49 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern int atomic_cas(atomic_t *target, atomic_val_t old_value,
        atomic_val_t new_value);
# 70 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_add(atomic_t *target, atomic_val_t value);
# 90 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_sub(atomic_t *target, atomic_val_t value);
# 109 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_inc(atomic_t *target);
# 128 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_dec(atomic_t *target);
# 147 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_get(const atomic_t *target);
# 172 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_set(atomic_t *target, atomic_val_t value);
# 192 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_clear(atomic_t *target);
# 213 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_or(atomic_t *target, atomic_val_t value);
# 234 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_xor(atomic_t *target, atomic_val_t value);
# 255 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_and(atomic_t *target, atomic_val_t value);
# 276 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_nand(atomic_t *target, atomic_val_t value);
# 329 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_bit(const atomic_t *target, int bit)
{
 atomic_val_t val = atomic_get(((target) + ((bit) / (sizeof(atomic_val_t) * 8))));

 return (1 & (val >> (bit & ((sizeof(atomic_val_t) * 8) - 1))));
}
# 347 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_and_clear_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
 atomic_val_t old;

 old = atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);

 return (old & mask) != 0;
}
# 368 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_and_set_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
 atomic_val_t old;

 old = atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);

 return (old & mask) != 0;
}
# 389 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_clear_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);
}
# 407 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_set_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);
}
# 426 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_set_bit_to(atomic_t *target, int bit, 
# 426 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h" 3 4
                                                               _Bool 
# 426 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
                                                                    val)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 if (val) {
  (void)atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);
 } else {
  (void)atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);
 }
}
# 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 1
# 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h" 2


struct k_work_q {
    struct k_fifo fifo;
};

typedef struct{
    bl_timer_t timer;
    struct k_delayed_work *delay_work;
}timer_rec_d;

int k_work_q_start();

enum {
    K_WORK_STATE_PENDING,
 K_WORK_STATE_PERIODIC,
};
struct k_work;

typedef void (*k_work_handler_t)(struct k_work *work);
struct k_work {
    void *_reserved;
    k_work_handler_t handler;
    atomic_t flags[1];
};
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h"
int k_work_init(struct k_work *work, k_work_handler_t handler);
void k_work_submit(struct k_work *work);


struct k_delayed_work {
    struct k_work work;
    struct k_work_q *work_q;
    k_timer_t timer;
};

void k_delayed_work_init(struct k_delayed_work *work, k_work_handler_t handler);
int k_delayed_work_submit(struct k_delayed_work *work, uint32_t delay);

int k_delayed_work_submit_periodic(struct k_delayed_work *work, s32_t period);
int k_delayed_work_cancel(struct k_delayed_work *work);
s32_t k_delayed_work_remaining_get(struct k_delayed_work *work);
void k_delayed_work_del_timer(struct k_delayed_work *work);

int k_delayed_work_free(struct k_delayed_work *work);
# 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 54 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
enum _poll_types_bits {
    _POLL_TYPE_IGNORE,
    _POLL_TYPE_SIGNAL,
    _POLL_TYPE_SEM_AVAILABLE,
    _POLL_TYPE_DATA_AVAILABLE,
    _POLL_NUM_TYPES
};



enum _poll_states_bits {
    _POLL_STATE_NOT_READY,
    _POLL_STATE_SIGNALED,
    _POLL_STATE_SEM_AVAILABLE,
    _POLL_STATE_DATA_AVAILABLE,
    _POLL_NUM_STATES
};
# 89 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
struct k_poll_event {
    sys_dnode_t _node;
    struct _poller *poller;
    u32_t tag:8;
    u32_t type:_POLL_NUM_TYPES;
    u32_t state:_POLL_NUM_STATES;
    u32_t mode:1;
    u32_t unused:(32 - (0 + 8 + _POLL_NUM_TYPES + _POLL_NUM_STATES + 1 ));
    union {
        void *obj;
        struct k_poll_signal *signal;
        struct k_sem *sem;
        struct k_fifo *fifo;
        struct k_queue *queue;
    };
};

struct k_poll_signal {
    sys_dlist_t poll_events;
    unsigned int signaled;
    int result;
};
# 136 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
extern int k_poll_signal_raise(struct k_poll_signal *signal, int result);



extern int k_poll(struct k_poll_event *events, int num_events, s32_t timeout);

extern void k_poll_event_init(struct k_poll_event *event, u32_t type, int mode, void *obj);


enum k_poll_modes {

        K_POLL_MODE_NOTIFY_ONLY = 0,

        K_POLL_NUM_MODES
};
# 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 36 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 37 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4

# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 61 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
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
# 47 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 37 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 54 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 47 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long __fd_mask;

typedef __fd_mask fd_mask;
# 48 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef struct fd_set {
 __fd_mask __fds_bits[(((64) + ((((int)sizeof(__fd_mask) * 8)) - 1)) / (((int)sizeof(__fd_mask) * 8)))];
} fd_set;
# 74 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




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
# 119 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
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
# 220 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
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
# 154 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
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
# 224 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 257 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 339 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 374 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 577 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 624 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 687 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 797 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h" 1 3
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h" 3
extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h" 1
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h" 1
# 25 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 26 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_string.h" 1



# 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_string.h"
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
# 27 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h" 2
# 91 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
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
# 326 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
int char2hex(char c, u8_t *x);
# 336 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
int hex2char(u8_t x, char *c);
# 348 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
size_t bin2hex(const u8_t *buf, size_t buflen, char *hex, size_t hexlen);
# 366 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
size_t hex2bin(const char *hex, size_t hexlen, u8_t *buf, size_t buflen);
# 381 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
u8_t u8_to_dec(char *buf, u8_t buflen, u8_t value);
# 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h" 1
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/__assert.h" 1
# 17 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h" 2
# 157 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_be16(u16_t val, u8_t dst[2])
{
 dst[0] = val >> 8;
 dst[1] = val;
}
# 172 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_be24(uint32_t val, uint8_t dst[3])
{
 dst[0] = val >> 16;
 sys_put_be16(val, &dst[1]);
}
# 187 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_be32(u32_t val, u8_t dst[4])
{
 sys_put_be16(val >> 16, dst);
 sys_put_be16(val, &dst[2]);
}
# 202 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_le16(u16_t val, u8_t dst[2])
{
 dst[0] = val;
 dst[1] = val >> 8;
}
# 217 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_le24(uint32_t val, uint8_t dst[3])
{
 sys_put_le16(val, dst);
 dst[2] = val >> 16;
}
# 232 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_le32(u32_t val, u8_t dst[4])
{
 sys_put_le16(val, dst);
 sys_put_le16(val >> 16, &dst[2]);
}
# 247 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_le64(u64_t val, u8_t dst[8])
{
 sys_put_le32(val, dst);
 sys_put_le32(val >> 32, &dst[4]);
}
# 263 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u16_t sys_get_be16(const u8_t src[2])
{
 return ((u16_t)src[0] << 8) | src[1];
}
# 278 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline uint32_t sys_get_be24(const uint8_t src[3])
{
 return ((uint32_t)src[0] << 16) | sys_get_be16(&src[1]);
}
# 293 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u32_t sys_get_be32(const u8_t src[4])
{
 return ((u32_t)sys_get_be16(&src[0]) << 16) | sys_get_be16(&src[2]);
}
# 308 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u16_t sys_get_le16(const u8_t src[2])
{
 return ((u16_t)src[1] << 8) | src[0];
}
# 323 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline uint32_t sys_get_le24(const uint8_t src[3])
{
 return ((uint32_t)src[2] << 16) | sys_get_le16(&src[0]);
}
# 338 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u32_t sys_get_le32(const u8_t src[4])
{
 return ((u32_t)sys_get_le16(&src[2]) << 16) | sys_get_le16(&src[0]);
}
# 353 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u64_t sys_get_le64(const u8_t src[8])
{
 return ((u64_t)sys_get_le32(&src[4]) << 32) | sys_get_le32(&src[0]);
}
# 371 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_memcpy_swap(void *dst, const void *src, size_t length)
{
 do { } while ((0))

                                                     ;

 src += length - 1;

 for (; length > 0; length--) {
  *((u8_t *)dst++) = *((u8_t *)src--);
 }
}
# 394 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_mem_swap(void *buf, size_t length)
{
 size_t i;

 for (i = 0; i < (length/2); i++) {
  u8_t tmp = ((u8_t *)buf)[i];

  ((u8_t *)buf)[i] = ((u8_t *)buf)[length - 1 - i];
  ((u8_t *)buf)[length - 1 - i] = tmp;
 }
}
# 18 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/stack.h" 1
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/stack.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/printk.h" 1
# 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/printk.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/printk.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/printk.h" 2
# 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/stack.h" 2
# 56 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/stack.h"
static inline size_t stack_unused_space_get(const char *stack, size_t size)
{
 return 0;
}
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/stack.h"
static inline void stack_analyze(const char *name, const char *stack,
     unsigned int size)
{
}
# 19 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2



# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 1
# 24 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 1
# 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 2



# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/../../port/include/config.h" 1
# 18 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 2
# 96 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_simple {

 u8_t *data;


 u16_t len;


 u16_t size;




 u8_t *__buf;
};
# 143 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_init(struct net_buf_simple *buf,
           size_t reserve_head)
{
 if (!buf->__buf) {
  buf->__buf = (u8_t *)buf + sizeof(*buf);
 }

 buf->data = buf->__buf + reserve_head;
 buf->len = 0;
}
# 163 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_init_with_data(struct net_buf_simple *buf,
       void *data, size_t size);
# 174 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_reset(struct net_buf_simple *buf)
{
 buf->len = 0;
 buf->data = buf->__buf;
}
# 190 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_clone(const struct net_buf_simple *original,
     struct net_buf_simple *clone);
# 204 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_add(struct net_buf_simple *buf, size_t len);
# 218 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_add_mem(struct net_buf_simple *buf, const void *mem,
        size_t len);
# 232 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u8_t *net_buf_simple_add_u8(struct net_buf_simple *buf, u8_t val);
# 244 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le16(struct net_buf_simple *buf, u16_t val);
# 256 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be16(struct net_buf_simple *buf, u16_t val);
# 268 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le24(struct net_buf_simple *buf, uint32_t val);
# 280 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be24(struct net_buf_simple *buf, uint32_t val);
# 292 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le32(struct net_buf_simple *buf, u32_t val);
# 304 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be32(struct net_buf_simple *buf, u32_t val);
# 317 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_push(struct net_buf_simple *buf, size_t len);
# 328 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_le16(struct net_buf_simple *buf, u16_t val);
# 339 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_be16(struct net_buf_simple *buf, u16_t val);
# 349 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_u8(struct net_buf_simple *buf, u8_t val);
# 360 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_le24(struct net_buf_simple *buf, uint32_t val);
# 371 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_be24(struct net_buf_simple *buf, uint32_t val);
# 384 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_pull(struct net_buf_simple *buf, size_t len);
# 397 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_pull_mem(struct net_buf_simple *buf, size_t len);
# 409 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u8_t net_buf_simple_pull_u8(struct net_buf_simple *buf);
# 421 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u16_t net_buf_simple_pull_le16(struct net_buf_simple *buf);
# 433 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u16_t net_buf_simple_pull_be16(struct net_buf_simple *buf);
# 445 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u32_t net_buf_simple_pull_le32(struct net_buf_simple *buf);
# 457 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u32_t net_buf_simple_pull_be32(struct net_buf_simple *buf);
# 468 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline u8_t *net_buf_simple_tail(struct net_buf_simple *buf)
{
 return buf->data + buf->len;
}
# 482 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_simple_headroom(struct net_buf_simple *buf);
# 493 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_simple_tailroom(struct net_buf_simple *buf);
# 502 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_simple_state {

 u16_t offset;

 u16_t len;
};
# 517 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_save(struct net_buf_simple *buf,
           struct net_buf_simple_state *state)
{
 state->offset = net_buf_simple_headroom(buf);
 state->len = buf->len;
}
# 533 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_restore(struct net_buf_simple *buf,
       struct net_buf_simple_state *state)
{
 buf->data = buf->__buf + state->offset;
 buf->len = state->len;
}
# 564 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf {
 union {

  sys_snode_t node;


  struct net_buf *frags;
 };


 u8_t ref;


 u8_t flags;


 u8_t pool_id;




 union {

  struct {

   u8_t *data;


   u16_t len;


   u16_t size;





   u8_t *__buf;
  };

  struct net_buf_simple b;
 };


 u8_t user_data[10] 
# 608 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 3
                                              __attribute__((__aligned__(
# 608 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
                                              sizeof(int)
# 608 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 3
                                              )))
# 608 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
                                                             ;
};


typedef void (*destroy_cb_t)(struct net_buf *buf);


struct net_buf_data_cb {
 u8_t * (*alloc)(struct net_buf *buf, size_t *size, s32_t timeout);
 u8_t * (*ref)(struct net_buf *buf, u8_t *data);
 void (*unref)(struct net_buf *buf, u8_t *data);
};

struct net_buf_data_alloc {
 const struct net_buf_data_cb *cb;
 void *alloc_data;
};

struct net_buf_pool {

 struct k_lifo free;



    u16_t buf_count;




 u16_t uninit_count;
# 651 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
 void (*destroy)(struct net_buf *buf);


 struct net_buf_data_alloc *alloc;


 struct net_buf * __bufs;
# 668 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
};
# 694 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
extern const struct net_buf_data_alloc net_buf_heap_alloc;
# 728 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_pool_fixed {
 size_t data_size;
 u8_t *data_pool;
};

extern const struct net_buf_data_cb net_buf_fixed_cb;
# 847 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_init(struct net_buf_pool *buf_pool, u16_t buf_count, size_t data_size, destroy_cb_t destroy);

void net_buf_deinit(struct net_buf_pool *buf_pool);
# 858 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_pool *net_buf_pool_get(int id);
# 872 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
int net_buf_id(struct net_buf *buf);
# 897 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_fixed(struct net_buf_pool *pool, s32_t timeout);
# 926 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_len(struct net_buf_pool *pool, size_t size,
      s32_t timeout);
# 958 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_with_data(struct net_buf_pool *pool,
     void *data, size_t size,
     s32_t timeout);
# 982 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_get(struct k_fifo *fifo, s32_t timeout);
# 994 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_destroy(struct net_buf *buf)
{
 struct net_buf_pool *pool = net_buf_pool_get(buf->pool_id);

 k_queue_prepend((struct k_queue *) &pool->free, buf);
}
# 1008 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_reset(struct net_buf *buf);
# 1019 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_reserve(struct net_buf_simple *buf, size_t reserve);
# 1031 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_slist_put(sys_slist_t *list, struct net_buf *buf);
# 1044 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_slist_get(sys_slist_t *list);
# 1056 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_put(struct k_fifo *fifo, struct net_buf *buf);
# 1071 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_unref(struct net_buf *buf);
# 1081 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_ref(struct net_buf *buf);
# 1096 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_clone(struct net_buf *buf, s32_t timeout);
# 1105 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void *net_buf_user_data(const struct net_buf *buf)
{
 return (void *)buf->user_data;
}
# 1400 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_last(struct net_buf *frags);
# 1412 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_frag_insert(struct net_buf *parent, struct net_buf *frag);
# 1427 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_add(struct net_buf *head, struct net_buf *frag);
# 1444 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_del(struct net_buf *parent, struct net_buf *frag);
# 1461 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_linearize(void *dst, size_t dst_len, struct net_buf *src,
                size_t offset, size_t len);
# 1478 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
typedef struct net_buf *(*net_buf_allocator_cb)(s32_t timeout, void *user_data);
# 1500 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_append_bytes(struct net_buf *buf, size_t len,
       const void *value, s32_t timeout,
       net_buf_allocator_cb allocate_cb, void *user_data);
# 1519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline struct net_buf *net_buf_skip(struct net_buf *buf, u16_t len)
{
 while (buf && len--) {
  net_buf_simple_pull_u8(&(buf)->b);
  if (!buf->len) {
   buf = net_buf_frag_del(
# 1524 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 3 4
                         ((void *)0)
# 1524 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
                             , buf);
  }
 }

 return buf;
}
# 1540 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline size_t net_buf_frags_len(struct net_buf *buf)
{
 size_t bytes = 0;

 while (buf) {
  bytes += buf->len;
  buf = buf->frags;
 }

 return bytes;
}
# 25 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 1
# 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain.h" 1
# 21 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain/gcc.h" 1
# 65 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain/gcc.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain/common.h" 1
# 66 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain/gcc.h" 2
# 22 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain.h" 2
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2




# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 1
# 25 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
typedef struct {
 u8_t val[6];
} bt_addr_t;


typedef struct {
 u8_t type;
 bt_addr_t a;
} bt_addr_le_t;
# 42 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
static inline int bt_addr_cmp(const bt_addr_t *a, const bt_addr_t *b)
{
 return memcmp(a, b, sizeof(*a));
}

static inline int bt_addr_le_cmp(const bt_addr_le_t *a, const bt_addr_le_t *b)
{
 return memcmp(a, b, sizeof(*a));
}

static inline void bt_addr_copy(bt_addr_t *dst, const bt_addr_t *src)
{
 memcpy(dst, src, sizeof(*dst));
}

static inline void bt_addr_le_copy(bt_addr_le_t *dst, const bt_addr_le_t *src)
{
 memcpy(dst, src, sizeof(*dst));
}
# 70 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
int bt_addr_le_create_nrpa(bt_addr_le_t *addr);
int bt_addr_le_create_static(bt_addr_le_t *addr);

static inline 
# 73 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
             _Bool 
# 73 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
                  bt_addr_le_is_rpa(const bt_addr_le_t *addr)
{
 if (addr->type != 0x01) {
  return 
# 76 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
        0
# 76 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
             ;
 }

 return (((&addr->a)->val[5] & 0xc0) == 0x40);
}

static inline 
# 82 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
             _Bool 
# 82 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
                  bt_addr_le_is_identity(const bt_addr_le_t *addr)
{
 if (addr->type == 0x00) {
  return 
# 85 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
        1
# 85 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
            ;
 }

 return (((&addr->a)->val[5] & 0xc0) == 0xc0);
}
# 17 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_err.h" 1
# 18 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h" 1
# 23 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 1
# 24 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h" 2


enum bt_buf_type {

 BT_BUF_CMD,

 BT_BUF_EVT,

 BT_BUF_ACL_OUT,

 BT_BUF_ACL_IN,

 BT_BUF_ISO_OUT,

 BT_BUF_ISO_IN,
};
# 53 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
int bt_buf_get_rx_avail_cnt(void);
# 66 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
struct net_buf *bt_buf_get_rx(enum bt_buf_type type, s32_t timeout);
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
struct net_buf *bt_buf_get_cmd_complete(s32_t timeout);
# 90 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
struct net_buf *bt_buf_get_evt(u8_t evt, 
# 90 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h" 3 4
                                        _Bool 
# 90 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
                                             discardable, s32_t timeout);






static inline void bt_buf_set_type(struct net_buf *buf, enum bt_buf_type type)
{
 *(u8_t *)net_buf_user_data(buf) = type;
}


static inline void bt_buf_set_rx_adv(struct net_buf *buf, 
# 103 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h" 3 4
                                                         _Bool 
# 103 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
                                                              is_adv)
{
 u8_t *usr_data = (u8_t *)net_buf_user_data(buf);
 usr_data++;
 *usr_data = is_adv;
}

static inline u8_t bt_buf_check_rx_adv(struct net_buf *buf)
{
    u8_t *usr_data = (u8_t *)net_buf_user_data(buf);
 usr_data++;
 return (*usr_data);
}
# 124 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
static inline enum bt_buf_type bt_buf_get_type(struct net_buf *buf)
{






 return (enum bt_buf_type)(*(u8_t *)net_buf_user_data(buf));
}
# 21 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2
# 36 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_hdr {
 u8_t evt;
 u8_t len;
} 
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 50 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_acl_hdr {
 u16_t handle;
 u16_t len;
} 
# 53 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 53 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 78 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_iso_data_hdr {
 uint16_t sn;
 uint16_t slen;
} 
# 81 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 81 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_iso_ts_data_hdr {
 uint32_t ts;
 struct bt_hci_iso_data_hdr data;
} 
# 87 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 87 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_iso_hdr {
 uint16_t handle;
 uint16_t len;
} 
# 93 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 93 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cmd_hdr {
 u16_t opcode;
 u8_t param_len;
} 
# 99 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 99 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 285 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_op_inquiry {
 u8_t lap[3];
 u8_t length;
 u8_t num_rsp;
} 
# 289 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 289 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_connect {
 bt_addr_t bdaddr;
 u16_t packet_type;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u16_t clock_offset;
 u8_t allow_role_switch;
} 
# 301 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 301 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_disconnect {
 u16_t handle;
 u8_t reason;
} 
# 307 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 307 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_connect_cancel {
 bt_addr_t bdaddr;
} 
# 312 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 312 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_connect_cancel {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 316 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 316 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_accept_conn_req {
 bt_addr_t bdaddr;
 u8_t role;
} 
# 322 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 322 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_setup_sync_conn {
 u16_t handle;
 u32_t tx_bandwidth;
 u32_t rx_bandwidth;
 u16_t max_latency;
 u16_t content_format;
 u8_t retrans_effort;
 u16_t pkt_type;
} 
# 333 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 333 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_accept_sync_conn_req {
 bt_addr_t bdaddr;
 u32_t tx_bandwidth;
 u32_t rx_bandwidth;
 u16_t max_latency;
 u16_t content_format;
 u8_t retrans_effort;
 u16_t pkt_type;
} 
# 344 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 344 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_reject_conn_req {
 bt_addr_t bdaddr;
 u8_t reason;
} 
# 350 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 350 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_link_key_reply {
 bt_addr_t bdaddr;
 u8_t link_key[16];
} 
# 356 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 356 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_link_key_neg_reply {
 bt_addr_t bdaddr;
} 
# 361 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 361 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_pin_code_reply {
 bt_addr_t bdaddr;
 u8_t pin_len;
 u8_t pin_code[16];
} 
# 368 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 368 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_pin_code_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 372 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 372 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_pin_code_neg_reply {
 bt_addr_t bdaddr;
} 
# 377 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 377 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_pin_code_neg_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 381 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 381 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_auth_requested {
 u16_t handle;
} 
# 386 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 386 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_conn_encrypt {
 u16_t handle;
 u8_t encrypt;
} 
# 392 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 392 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_remote_name_request {
 bt_addr_t bdaddr;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u16_t clock_offset;
} 
# 400 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 400 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_remote_name_cancel {
 bt_addr_t bdaddr;
} 
# 405 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 405 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_remote_name_cancel {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 409 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 409 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_features {
 u16_t handle;
} 
# 414 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 414 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_ext_features {
 u16_t handle;
 u8_t page;
} 
# 420 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 420 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_version_info {
 u16_t handle;
} 
# 425 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 425 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_io_capability_reply {
 bt_addr_t bdaddr;
 u8_t capability;
 u8_t oob_data;
 u8_t authentication;
} 
# 433 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 433 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;



struct bt_hci_cp_user_confirm_reply {
 bt_addr_t bdaddr;
} 
# 439 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 439 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_user_confirm_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 443 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 443 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_user_passkey_reply {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 449 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 449 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_user_passkey_neg_reply {
 bt_addr_t bdaddr;
} 
# 454 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 454 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_io_capability_neg_reply {
 bt_addr_t bdaddr;
 u8_t reason;
} 
# 460 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 460 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_event_mask {
 u8_t events[8];
} 
# 465 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 465 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_write_local_name {
 u8_t local_name[248];
} 
# 472 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 472 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 482 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_write_inquiry_scan_activity {
 u16_t interval;
 u16_t window;
} 
# 485 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 485 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_class_of_device {
 u8_t cod[3];
} 
# 490 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 490 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_read_tx_power_level {
 u16_t handle;
 u8_t type;
} 
# 498 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 498 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_read_tx_power_level {
 u8_t status;
 u16_t handle;
 s8_t tx_power_level;
} 
# 504 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 504 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_set_ctl_to_host_flow {
 u8_t flow_enable;
} 
# 511 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 511 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_host_buffer_size {
 u16_t acl_mtu;
 u8_t sco_mtu;
 u16_t acl_pkts;
 u16_t sco_pkts;
} 
# 519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_handle_count {
 u16_t handle;
 u16_t count;
} 
# 524 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 524 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_host_num_completed_packets {
 u8_t num_handles;
 struct bt_hci_handle_count h[0];
} 
# 530 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 530 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_inquiry_scan_type {
 u8_t type;
} 
# 535 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 535 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_inquiry_mode {
 u8_t mode;
} 
# 540 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 540 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_page_scan_type {
 u8_t type;
} 
# 545 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 545 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_ext_inquiry_resp {
       u8_t fec;
       u8_t eir[240];
} 
# 551 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 551 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_ssp_mode {
 u8_t mode;
} 
# 556 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 556 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_event_mask_page_2 {
 u8_t events_page_2[8];
} 
# 561 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 561 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_le_host_supp {
 u8_t le;
 u8_t simul;
} 
# 567 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 567 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_sc_host_supp {
 u8_t sc_support;
} 
# 572 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 572 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_auth_payload_timeout {
 u16_t handle;
} 
# 577 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 577 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_read_auth_payload_timeout {
 u8_t status;
 u16_t handle;
 u16_t auth_payload_timeout;
} 
# 583 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 583 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_auth_payload_timeout {
 u16_t handle;
 u16_t auth_payload_timeout;
} 
# 589 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 589 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_write_auth_payload_timeout {
 u8_t status;
 u16_t handle;
} 
# 594 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 594 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_configure_data_path {
 uint8_t data_path_dir;
 uint8_t data_path_id;
 uint8_t vs_config_len;
 uint8_t vs_config[0];
} 
# 602 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 602 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_configure_data_path {
 uint8_t status;
} 
# 606 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 606 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 623 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_rp_read_local_version_info {
 u8_t status;
 u8_t hci_version;
 u16_t hci_revision;
 u8_t lmp_version;
 u16_t manufacturer;
 u16_t lmp_subversion;
} 
# 630 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 630 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_supported_commands {
 u8_t status;
 u8_t commands[64];
} 
# 636 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 636 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_local_ext_features {
 u8_t page;
};
struct bt_hci_rp_read_local_ext_features {
 u8_t status;
 u8_t page;
 u8_t max_page;
 u8_t ext_features[8];
} 
# 647 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 647 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_local_features {
 u8_t status;
 u8_t features[8];
} 
# 653 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 653 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_buffer_size {
 u8_t status;
 u16_t acl_max_len;
 u8_t sco_max_len;
 u16_t acl_max_num;
 u16_t sco_max_num;
} 
# 662 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 662 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_bd_addr {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 668 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 668 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 697 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_std_codec_info {
 uint8_t codec_id;
} 
# 699 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 699 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_std_codecs {
 uint8_t num_codecs;
 struct bt_hci_std_codec_info codec_info[0];
} 
# 703 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 703 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_vs_codec_info {
 uint16_t company_id;
 uint16_t codec_id;
} 
# 707 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 707 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_vs_codecs {
 uint8_t num_codecs;
 struct bt_hci_vs_codec_info codec_info[0];
} 
# 711 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 711 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_codecs {
 uint8_t status;

 uint8_t codecs[0];
} 
# 716 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 716 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_std_codec_info_v2 {
 uint8_t codec_id;
 uint8_t transports;
} 
# 722 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 722 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_std_codecs_v2 {
 uint8_t num_codecs;
 struct bt_hci_std_codec_info_v2 codec_info[0];
} 
# 726 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 726 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_vs_codec_info_v2 {
 uint16_t company_id;
 uint16_t codec_id;
 uint8_t transports;
} 
# 731 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 731 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_vs_codecs_v2 {
 uint8_t num_codecs;
 struct bt_hci_vs_codec_info_v2 codec_info[0];
} 
# 735 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 735 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_codecs_v2 {
 uint8_t status;

 uint8_t codecs[0];
} 
# 740 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 740 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_codec_id {
 uint8_t coding_format;
 uint16_t company_id;
 uint16_t vs_codec_id;
} 
# 746 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 746 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_codec_capabilities {
 struct bt_hci_cp_codec_id codec_id;
 uint8_t transport;
 uint8_t direction;
} 
# 753 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 753 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_codec_capability_info {
 uint8_t length;
 uint8_t data[0];
} 
# 757 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 757 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_codec_capabilities {
 uint8_t status;
 uint8_t num_capabilities;

 uint8_t capabilities[0];
} 
# 763 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 763 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_ctlr_delay {
 struct bt_hci_cp_codec_id codec_id;
 uint8_t transport;
 uint8_t direction;
 uint8_t codec_config_len;
 uint8_t codec_config[0];
} 
# 772 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 772 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_ctlr_delay {
 uint8_t status;
 uint8_t min_ctlr_delay[3];
 uint8_t max_ctlr_delay[3];
} 
# 777 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 777 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_rssi {
 u16_t handle;
} 
# 782 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 782 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_rssi {
 u8_t status;
 u16_t handle;
 s8_t rssi;
} 
# 787 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 787 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_read_encryption_key_size {
 u16_t handle;
} 
# 795 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 795 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_encryption_key_size {
 u8_t status;
 u16_t handle;
 u8_t key_size;
} 
# 800 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 800 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_set_event_mask {
 u8_t events[8];
} 
# 807 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 807 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_buffer_size {
 u8_t status;
 u16_t le_max_len;
 u8_t le_max_num;
} 
# 814 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 814 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_local_features {
 u8_t status;
 u8_t features[8];
} 
# 820 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 820 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_random_address {
 bt_addr_t bdaddr;
} 
# 825 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 825 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 842 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_adv_param {
 u16_t min_interval;
 u16_t max_interval;
 u8_t type;
 u8_t own_addr_type;
 bt_addr_le_t direct_addr;
 u8_t channel_map;
 u8_t filter_policy;
} 
# 850 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 850 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_chan_tx_power {
 u8_t status;
 s8_t tx_power_level;
} 
# 856 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 856 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_adv_data {
 u8_t len;
 u8_t data[31];
} 
# 862 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 862 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_scan_rsp_data {
 u8_t len;
 u8_t data[31];
} 
# 868 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 868 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_adv_enable {
 u8_t enable;
} 
# 876 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 876 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 886 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_scan_param {
 u8_t scan_type;
 u16_t interval;
 u16_t window;
 u8_t addr_type;
 u8_t filter_policy;
} 
# 892 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 892 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 902 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_scan_enable {
 u8_t enable;
 u8_t filter_dup;
} 
# 905 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 905 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_create_conn {
 u16_t scan_interval;
 u16_t scan_window;
 u8_t filter_policy;
 bt_addr_le_t peer_addr;
 u8_t own_addr_type;
 u16_t conn_interval_min;
 u16_t conn_interval_max;
 u16_t conn_latency;
 u16_t supervision_timeout;
 u16_t min_ce_len;
 u16_t max_ce_len;
} 
# 924 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 924 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_wl_size {
 u8_t status;
 u8_t wl_size;
} 
# 932 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 932 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_add_dev_to_wl {
 bt_addr_le_t addr;
} 
# 939 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 939 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_wl {
 bt_addr_le_t addr;
} 
# 944 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 944 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct hci_cp_le_conn_update {
 u16_t handle;
 u16_t conn_interval_min;
 u16_t conn_interval_max;
 u16_t conn_latency;
 u16_t supervision_timeout;
 u16_t min_ce_len;
 u16_t max_ce_len;
} 
# 955 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 955 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_host_chan_classif {
 u8_t ch_map[5];
} 
# 960 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 960 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_chan_map {
 u16_t handle;
} 
# 965 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 965 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_chan_map {
 u8_t status;
 u16_t handle;
 u8_t ch_map[5];
} 
# 970 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 970 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_remote_features {
 u16_t handle;
} 
# 975 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 975 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_encrypt {
 u8_t key[16];
 u8_t plaintext[16];
} 
# 981 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 981 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_encrypt {
 u8_t status;
 u8_t enc_data[16];
} 
# 985 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 985 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_rand {
 u8_t status;
 u8_t rand[8];
} 
# 991 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 991 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_start_encryption {
 u16_t handle;
 u64_t rand;
 u16_t ediv;
 u8_t ltk[16];
} 
# 999 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 999 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_ltk_req_reply {
 u16_t handle;
 u8_t ltk[16];
} 
# 1005 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1005 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_ltk_req_reply {
 u8_t status;
 u16_t handle;
} 
# 1009 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1009 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_ltk_req_neg_reply {
 u16_t handle;
} 
# 1014 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1014 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_ltk_req_neg_reply {
 u8_t status;
 u16_t handle;
} 
# 1018 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1018 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_supp_states {
 u8_t status;
 u8_t le_states[8];
} 
# 1024 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1024 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rx_test {
 u8_t rx_ch;
} 
# 1029 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1029 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_tx_test {
 u8_t tx_ch;
 u8_t test_data_len;
 u8_t pkt_payload;
} 
# 1036 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1036 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_test_end {
 u8_t status;
 u16_t rx_pkt_count;
} 
# 1042 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1042 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_conn_param_req_reply {
 u16_t handle;
 u16_t interval_min;
 u16_t interval_max;
 u16_t latency;
 u16_t timeout;
 u16_t min_ce_len;
 u16_t max_ce_len;
} 
# 1053 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1053 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_conn_param_req_reply {
 u8_t status;
 u16_t handle;
} 
# 1057 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1057 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_conn_param_req_neg_reply {
 u16_t handle;
 u8_t reason;
} 
# 1063 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1063 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_conn_param_req_neg_reply {
 u8_t status;
 u16_t handle;
} 
# 1067 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1067 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_data_len {
 u16_t handle;
 u16_t tx_octets;
 u16_t tx_time;
} 
# 1074 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1074 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_set_data_len {
 u8_t status;
 u16_t handle;
} 
# 1078 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1078 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_default_data_len {
 u8_t status;
 u16_t max_tx_octets;
 u16_t max_tx_time;
} 
# 1085 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1085 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_write_default_data_len {
 u16_t max_tx_octets;
 u16_t max_tx_time;
} 
# 1091 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1091 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_generate_dhkey {
 u8_t key[64];
} 
# 1098 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1098 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_add_dev_to_rl {
 bt_addr_le_t peer_id_addr;
 u8_t peer_irk[16];
 u8_t local_irk[16];
} 
# 1105 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1105 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_rl {
 bt_addr_le_t peer_id_addr;
} 
# 1110 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1110 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_rl_size {
 u8_t status;
 u8_t rl_size;
} 
# 1118 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1118 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_peer_rpa {
 bt_addr_le_t peer_id_addr;
} 
# 1123 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1123 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_peer_rpa {
 u8_t status;
 bt_addr_t peer_rpa;
} 
# 1127 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1127 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_local_rpa {
 bt_addr_le_t peer_id_addr;
} 
# 1132 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1132 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_local_rpa {
 u8_t status;
 bt_addr_t local_rpa;
} 
# 1136 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1136 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_addr_res_enable {
 u8_t enable;
} 
# 1144 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1144 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_rpa_timeout {
 u16_t rpa_timeout;
} 
# 1149 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1149 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_max_data_len {
 u8_t status;
 u16_t max_tx_octets;
 u16_t max_tx_time;
 u16_t max_rx_octets;
 u16_t max_rx_time;
} 
# 1158 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1158 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_read_phy {
 u16_t handle;
} 
# 1167 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1167 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_phy {
 u8_t status;
 u16_t handle;
 u8_t tx_phy;
 u8_t rx_phy;
} 
# 1173 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1173 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1183 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_default_phy {
 u8_t all_phys;
 u8_t tx_phys;
 u8_t rx_phys;
} 
# 1187 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1187 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_set_phy {
 u16_t handle;
 u8_t all_phys;
 u8_t tx_phys;
 u8_t rx_phys;
 u16_t phy_opts;
} 
# 1200 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1200 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_enh_rx_test {
 u8_t rx_ch;
 u8_t phy;
 u8_t mod_index;
} 
# 1210 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1210 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_enh_tx_test {
 u8_t tx_ch;
 u8_t test_data_len;
 u8_t pkt_payload;
 u8_t phy;
} 
# 1222 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1222 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_adv_set_random_addr {
 u8_t handle;
 bt_addr_t bdaddr;
} 
# 1228 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1228 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1246 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_ext_adv_param {
 u8_t handle;
 u16_t props;
 u8_t prim_min_interval[3];
 u8_t prim_max_interval[3];
 u8_t prim_channel_map;
 u8_t own_addr_type;
 bt_addr_le_t peer_addr;
 u8_t filter_policy;
 s8_t tx_power;
 u8_t prim_adv_phy;
 u8_t sec_adv_max_skip;
 u8_t sec_adv_phy;
 u8_t sid;
 u8_t scan_req_notify_enable;
} 
# 1261 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1261 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_set_ext_adv_param {
 u8_t status;
 s8_t tx_power;
} 
# 1265 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1265 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1279 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_ext_adv_data {
 u8_t handle;
 u8_t op;
 u8_t frag_pref;
 u8_t len;
 u8_t data[251];
} 
# 1285 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1285 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_ext_scan_rsp_data {
 u8_t handle;
 u8_t op;
 u8_t frag_pref;
 u8_t len;
 u8_t data[251];
} 
# 1294 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1294 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_ext_adv_set {
 u8_t handle;
 u16_t duration;
 u8_t max_ext_adv_evts;
} 
# 1301 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1301 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_set_ext_adv_enable {
 u8_t enable;
 u8_t set_num;
 struct bt_hci_ext_adv_set s[0];
} 
# 1307 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1307 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_max_adv_data_len {
 u8_t status;
 u16_t max_adv_data_len;
} 
# 1313 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1313 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_num_adv_sets {
 u8_t status;
 u8_t num_sets;
} 
# 1319 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1319 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_remove_adv_set {
 u8_t handle;
} 
# 1324 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1324 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_set_per_adv_param {
 u8_t handle;
 u16_t min_interval;
 u16_t max_interval;
 u16_t props;
} 
# 1334 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1334 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1344 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_per_adv_data {
 u8_t handle;
 u8_t op;
 u8_t len;
 u8_t data[251];
} 
# 1349 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1349 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_per_adv_enable {
 u8_t enable;
 u8_t handle;
} 
# 1355 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1355 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_ext_scan_phy {
 u8_t type;
 u16_t interval;
 u16_t window;
} 
# 1362 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1362 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_ext_scan_param {
 u8_t own_addr_type;
 u8_t filter_policy;
 u8_t phys;
 struct bt_hci_ext_scan_phy p[0];
} 
# 1373 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1373 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_ext_scan_enable {
 u8_t enable;
 u8_t filter_dup;
 u16_t duration;
 u16_t period;
} 
# 1384 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1384 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_ext_conn_phy {
 u16_t interval;
 u16_t window;
 u16_t conn_interval_min;
 u16_t conn_interval_max;
 u16_t conn_latency;
 u16_t supervision_timeout;
 u16_t min_ce_len;
 u16_t max_ce_len;
} 
# 1396 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1396 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_ext_create_conn {
 u8_t filter_policy;
 u8_t own_addr_type;
 bt_addr_le_t peer_addr;
 u8_t phys;
 struct bt_hci_ext_conn_phy p[0];
} 
# 1404 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1404 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1416 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_per_adv_create_sync {
 u8_t filter_policy;
 u8_t sid;
 bt_addr_le_t addr;
 u16_t skip;
 u16_t sync_timeout;
 u8_t unused;
} 
# 1423 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1423 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_per_adv_terminate_sync {
 u16_t handle;
} 
# 1430 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1430 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_add_dev_to_per_adv_list {
 bt_addr_le_t addr;
 u8_t sid;
} 
# 1436 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1436 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_per_adv_list {
 bt_addr_le_t addr;
 u8_t sid;
} 
# 1442 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1442 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_per_adv_list_size {
 u8_t status;
 u8_t list_size;
} 
# 1450 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1450 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_tx_power {
 u8_t status;
 s8_t min_tx_power;
 s8_t max_tx_power;
} 
# 1457 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1457 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_rf_path_comp {
 u8_t status;
 s16_t tx_path_comp;
 s16_t rx_path_comp;
} 
# 1464 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1464 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_write_rf_path_comp {
 s16_t tx_path_comp;
 s16_t rx_path_comp;
} 
# 1470 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1470 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_privacy_mode {
 bt_addr_le_t id_addr;
 u8_t mode;
} 
# 1479 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1479 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_cl_cte_tx_enable {
 uint8_t handle;
 uint8_t cte_enable;
} 
# 1485 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1485 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1499 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_cl_cte_tx_params {
 uint8_t handle;
 uint8_t cte_len;
 uint8_t cte_type;
 uint8_t cte_count;
 uint8_t switch_pattern_len;
 uint8_t ant_ids[0];
} 
# 1506 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1506 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1516 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_conn_cte_tx_params {
 uint16_t handle;
 uint8_t cte_types;
 uint8_t switch_pattern_len;
 uint8_t ant_id[0];
} 
# 1521 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1521 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_set_conn_cte_tx_params {
 uint8_t status;
 uint16_t handle;
} 
# 1526 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1526 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1542 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_rp_le_read_ant_info {
 uint8_t status;
 uint8_t switch_sample_rates;
 uint8_t num_ant;
 uint8_t max_switch_pattern_len;
 uint8_t max_cte_len;
};


struct bt_hci_cp_le_set_per_adv_recv_enable {
 uint16_t handle;
 uint8_t enable;
} 
# 1554 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1554 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_per_adv_sync_transfer {
 uint16_t conn_handle;
 uint16_t service_data;
 uint16_t sync_handle;
} 
# 1561 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1561 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_per_adv_sync_transfer {
 uint8_t status;
 uint16_t conn_handle;
} 
# 1566 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1566 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_per_adv_set_info_transfer {
 uint16_t conn_handle;
 uint16_t service_data;
 uint8_t adv_handle;
} 
# 1573 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1573 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_per_adv_set_info_transfer {
 uint8_t status;
 uint16_t conn_handle;
} 
# 1578 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1578 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1591 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_past_param {
 uint16_t conn_handle;
 uint8_t mode;
 uint16_t skip;
 uint16_t timeout;
 uint8_t cte_type;
} 
# 1597 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1597 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_past_param {
 uint8_t status;
 uint16_t conn_handle;
} 
# 1602 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1602 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_default_past_param {
 uint8_t mode;
 uint16_t skip;
 uint16_t timeout;
 uint8_t cte_type;
} 
# 1610 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1610 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_default_past_param {
 uint8_t status;
} 
# 1614 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1614 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_buffer_size_v2 {
 uint8_t status;
 uint16_t acl_mtu;
 uint8_t acl_max_pkt;
 uint16_t iso_mtu;
 uint8_t iso_max_pkt;
} 
# 1623 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1623 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_iso_tx_sync {
 uint16_t handle;
} 
# 1628 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1628 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_read_iso_tx_sync {
 uint8_t status;
 uint16_t handle;
 uint16_t seq;
 uint32_t timestamp;
 uint8_t offset[3];
} 
# 1636 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1636 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cis_params {
 uint8_t cis_id;
 uint16_t m_sdu;
 uint16_t s_sdu;
 uint8_t m_phy;
 uint8_t s_phy;
 uint8_t m_rtn;
 uint8_t s_rtn;
} 
# 1647 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1647 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_set_cig_params {
 uint8_t cig_id;
 uint8_t m_interval[3];
 uint8_t s_interval[3];
 uint8_t sca;
 uint8_t packing;
 uint8_t framing;
 uint16_t m_latency;
 uint16_t s_latency;
 uint8_t num_cis;
 struct bt_hci_cis_params cis[0];
} 
# 1660 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1660 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_set_cig_params {
 uint8_t status;
 uint8_t cig_id;
 uint8_t num_handles;
 uint16_t handle[0];
} 
# 1667 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1667 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cis_params_test {
 uint8_t cis_id;
 uint8_t nse;
 uint16_t m_sdu;
 uint16_t s_sdu;
 uint16_t m_pdu;
 uint16_t s_pdu;
 uint8_t m_phy;
 uint8_t s_phy;
 uint8_t m_bn;
 uint8_t s_bn;
} 
# 1681 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1681 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_set_cig_params_test {
 uint8_t cig_id;
 uint8_t m_interval[3];
 uint8_t s_interval[3];
 uint8_t m_ft;
 uint8_t s_ft;
 uint16_t iso_interval;
 uint8_t sca;
 uint8_t packing;
 uint8_t framing;
 uint8_t num_cis;
 struct bt_hci_cis_params_test cis[0];
} 
# 1695 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1695 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_set_cig_params_test {
 uint8_t status;
 uint8_t cig_id;
 uint8_t num_handles;
 uint16_t handle[0];
} 
# 1702 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1702 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cis {
 uint16_t cis_handle;
 uint16_t acl_handle;
} 
# 1708 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1708 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_create_cis {
 uint8_t num_cis;
 struct bt_hci_cis cis[0];
} 
# 1713 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1713 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_remove_cig {
 uint8_t cig_id;
} 
# 1718 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1718 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_remove_cig {
 uint8_t status;
 uint8_t cig_id;
} 
# 1723 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1723 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_accept_cis {
 uint16_t handle;
} 
# 1728 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1728 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_reject_cis {
 uint16_t handle;
 uint8_t reason;
} 
# 1734 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1734 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_reject_cis {
 uint8_t status;
 uint16_t handle;
} 
# 1739 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1739 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_create_big {
 uint8_t big_handle;
 uint8_t adv_handle;
 uint8_t num_bis;
 uint8_t sdu_interval[3];
 uint16_t max_sdu;
 uint16_t max_latency;
 uint8_t rtn;
 uint8_t phy;
 uint8_t packing;
 uint8_t framing;
 uint8_t encryption;
 uint8_t bcode[16];
} 
# 1755 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1755 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_create_big_test {
 uint8_t big_handle;
 uint8_t adv_handle;
 uint8_t num_bis;
 uint8_t sdu_interval[3];
 uint16_t iso_interval;
 uint8_t nse;
 uint16_t max_sdu;
 uint16_t max_pdu;
 uint8_t phy;
 uint8_t packing;
 uint8_t framing;
 uint8_t bn;
 uint8_t irc;
 uint8_t pto;
 uint8_t encryption;
 uint8_t bcode[16];
} 
# 1775 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1775 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_terminate_big {
 uint8_t big_handle;
 uint8_t reason;
} 
# 1781 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1781 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_big_create_sync {
 uint8_t big_handle;
 uint16_t sync_handle;
 uint8_t encryption;
 uint8_t bcode[16];
 uint8_t mse;
 uint16_t sync_timeout;
 uint8_t num_bis;
 uint8_t bis[0];
} 
# 1793 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1793 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_big_terminate_sync {
 uint8_t big_handle;
} 
# 1798 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1798 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_big_terminate_sync {
 uint8_t status;
 uint8_t big_handle;
} 
# 1803 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1803 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_req_peer_sca {
 uint16_t handle;
} 
# 1808 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1808 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_setup_iso_path {
 uint16_t handle;
 uint8_t path_dir;
 uint8_t path_id;
 struct bt_hci_cp_codec_id codec_id;
 uint8_t controller_delay[3];
 uint8_t codec_config_len;
 uint8_t codec_config[0];
} 
# 1819 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1819 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_setup_iso_path {
 uint8_t status;
 uint16_t handle;
} 
# 1824 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1824 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_remove_iso_path {
 uint16_t handle;
 uint8_t path_dir;
} 
# 1830 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1830 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_remove_iso_path {
 uint8_t status;
 uint16_t handle;
} 
# 1835 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1835 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_iso_transmit_test {
 uint16_t handle;
 uint8_t payload_type;
} 
# 1841 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1841 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_iso_transmit_test {
 uint8_t status;
 uint16_t handle;
} 
# 1846 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1846 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_iso_receive_test {
 uint16_t handle;
 uint8_t payload_type;
} 
# 1852 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1852 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_iso_receive_test {
 uint8_t status;
 uint16_t handle;
} 
# 1857 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1857 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_test_counters {
 uint16_t handle;
} 
# 1862 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1862 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_read_test_counters {
 uint8_t status;
 uint16_t handle;
 uint32_t received_cnt;
 uint32_t missed_cnt;
 uint32_t failed_cnt;
} 
# 1870 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1870 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_iso_test_end {
 uint16_t handle;
} 
# 1875 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1875 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_iso_test_end {
 uint8_t status;
 uint16_t handle;
 uint32_t received_cnt;
 uint32_t missed_cnt;
 uint32_t failed_cnt;
} 
# 1883 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1883 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_host_feature {
 uint8_t bit_number;
 uint8_t bit_value;
} 
# 1889 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1889 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_set_host_feature {
 uint8_t status;
} 
# 1893 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1893 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_iso_link_quality {
 uint16_t handle;
} 
# 1898 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1898 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_read_iso_link_quality {
 uint8_t status;
 uint16_t handle;
 uint32_t tx_unacked_packets;
 uint32_t tx_flushed_packets;
 uint32_t tx_last_subevent_packets;
 uint32_t retransmitted_packets;
 uint32_t crc_error_packets;
 uint32_t rx_unreceived_packets;
 uint32_t duplicate_packets;
} 
# 1910 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1910 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1925 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_inquiry_complete {
 u8_t status;
} 
# 1927 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1927 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_conn_complete {
 u8_t status;
 u16_t handle;
 bt_addr_t bdaddr;
 u8_t link_type;
 u8_t encr_enabled;
} 
# 1936 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1936 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_conn_request {
 bt_addr_t bdaddr;
 u8_t dev_class[3];
 u8_t link_type;
} 
# 1943 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1943 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_disconn_complete {
 u8_t status;
 u16_t handle;
 u8_t reason;
} 
# 1950 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1950 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_auth_complete {
 u8_t status;
 u16_t handle;
} 
# 1956 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1956 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_name_req_complete {
 u8_t status;
 bt_addr_t bdaddr;
 u8_t name[248];
} 
# 1963 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1963 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_encrypt_change {
 u8_t status;
 u16_t handle;
 u8_t encrypt;
} 
# 1970 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1970 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_features {
 u8_t status;
 u16_t handle;
 u8_t features[8];
} 
# 1977 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1977 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_version_info {
 u8_t status;
 u16_t handle;
 u8_t version;
 u16_t manufacturer;
 u16_t subversion;
} 
# 1986 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1986 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_cmd_complete {
 u8_t ncmd;
 u16_t opcode;
} 
# 1992 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1992 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_evt_cc_status {
 u8_t status;
} 
# 1996 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1996 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_cmd_status {
 u8_t status;
 u8_t ncmd;
 u16_t opcode;
} 
# 2003 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2003 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_hardware_error {
 uint8_t hardware_code;
} 
# 2008 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2008 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_role_change {
 u8_t status;
 bt_addr_t bdaddr;
 u8_t role;
} 
# 2015 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2015 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_num_completed_packets {
 u8_t num_handles;
 struct bt_hci_handle_count h[0];
} 
# 2021 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2021 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_pin_code_req {
 bt_addr_t bdaddr;
} 
# 2026 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2026 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_link_key_req {
 bt_addr_t bdaddr;
} 
# 2031 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2031 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 2045 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_link_key_notify {
 bt_addr_t bdaddr;
 u8_t link_key[16];
 u8_t key_type;
} 
# 2049 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2049 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_evt_data_buf_overflow {
 u8_t link_type;
} 
# 2058 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2058 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_inquiry_result_with_rssi {
 bt_addr_t addr;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u8_t cod[3];
 u16_t clock_offset;
 s8_t rssi;
} 
# 2068 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2068 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_ext_features {
 u8_t status;
 u16_t handle;
 u8_t page;
 u8_t max_page;
 u8_t features[8];
} 
# 2077 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2077 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_sync_conn_complete {
 u8_t status;
 u16_t handle;
 bt_addr_t bdaddr;
 u8_t link_type;
 u8_t tx_interval;
 u8_t retansmission_window;
 u16_t rx_pkt_length;
 u16_t tx_pkt_length;
 u8_t air_mode;
} 
# 2090 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2090 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_extended_inquiry_result {
 u8_t num_reports;
 bt_addr_t addr;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u8_t cod[3];
 u16_t clock_offset;
 s8_t rssi;
 u8_t eir[240];
} 
# 2102 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2102 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_encrypt_key_refresh_complete {
 u8_t status;
 u16_t handle;
} 
# 2108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_io_capa_req {
 bt_addr_t bdaddr;
} 
# 2113 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2113 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_io_capa_resp {
 bt_addr_t bdaddr;
 u8_t capability;
 u8_t oob_data;
 u8_t authentication;
} 
# 2121 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2121 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_confirm_req {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 2127 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2127 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_passkey_req {
 bt_addr_t bdaddr;
} 
# 2132 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2132 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_ssp_complete {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 2138 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2138 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_passkey_notify {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 2144 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2144 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_meta_event {
 u8_t subevent;
} 
# 2149 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2149 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_auth_payload_timeout_exp {
 u16_t handle;
} 
# 2154 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2154 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_evt_le_conn_complete {
 u8_t status;
 u16_t handle;
 u8_t role;
 bt_addr_le_t peer_addr;
 u16_t interval;
 u16_t latency;
 u16_t supv_timeout;
 u8_t clock_accuracy;
} 
# 2169 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2169 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_advertising_info {
 u8_t evt_type;
 bt_addr_le_t addr;
 u8_t length;
 u8_t data[0];
} 
# 2177 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2177 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_advertising_report {
 u8_t num_reports;
 struct bt_hci_evt_le_advertising_info adv_info[0];
} 
# 2181 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2181 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_conn_update_complete {
 u8_t status;
 u16_t handle;
 u16_t interval;
 u16_t latency;
 u16_t supv_timeout;
} 
# 2190 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2190 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_remote_feat_complete {
 u8_t status;
 u16_t handle;
 u8_t features[8];
} 
# 2197 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2197 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_ltk_request {
 u16_t handle;
 u64_t rand;
 u16_t ediv;
} 
# 2204 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2204 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_conn_param_req {
 u16_t handle;
 u16_t interval_min;
 u16_t interval_max;
 u16_t latency;
 u16_t timeout;
} 
# 2213 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2213 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_data_len_change {
 u16_t handle;
 u16_t max_tx_octets;
 u16_t max_tx_time;
 u16_t max_rx_octets;
 u16_t max_rx_time;
} 
# 2222 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2222 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_p256_public_key_complete {
 u8_t status;
 u8_t key[64];
} 
# 2228 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2228 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_generate_dhkey_complete {
 u8_t status;
 u8_t dhkey[32];
} 
# 2234 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2234 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_enh_conn_complete {
 u8_t status;
 u16_t handle;
 u8_t role;
 bt_addr_le_t peer_addr;
 bt_addr_t local_rpa;
 bt_addr_t peer_rpa;
 u16_t interval;
 u16_t latency;
 u16_t supv_timeout;
 u8_t clock_accuracy;
} 
# 2248 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2248 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_direct_adv_info {
 u8_t evt_type;
 bt_addr_le_t addr;
 bt_addr_le_t dir_addr;
 s8_t rssi;
} 
# 2256 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2256 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_direct_adv_report {
 u8_t num_reports;
 struct bt_hci_evt_le_direct_adv_info direct_adv_info[0];
} 
# 2260 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2260 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_phy_update_complete {
 u8_t status;
 u16_t handle;
 u8_t tx_phy;
 u8_t rx_phy;
} 
# 2268 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2268 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 2283 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_le_ext_advertising_info {
 u8_t evt_type;
 bt_addr_le_t addr;
 u8_t prim_phy;
 u8_t sec_phy;
 u8_t sid;
 s8_t tx_power;
 s8_t rssi;
 u16_t interval;
 bt_addr_le_t direct_addr;
 u8_t length;
 u8_t data[0];
} 
# 2295 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2295 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_ext_advertising_report {
 u8_t num_reports;
 struct bt_hci_evt_le_ext_advertising_info adv_info[0];
} 
# 2299 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2299 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_per_adv_sync_established {
 u8_t status;
 u16_t handle;
 u8_t sid;
 bt_addr_le_t adv_addr;
 u8_t phy;
 u16_t interval;
 u8_t clock_accuracy;
} 
# 2310 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2310 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_per_advertising_report {
 u16_t handle;
 s8_t tx_power;
 s8_t rssi;
 u8_t unused;
 u8_t data_status;
 u8_t length;
 u8_t data[0];
} 
# 2321 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2321 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_per_adv_sync_lost {
 u16_t handle;
} 
# 2326 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2326 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_evt_le_per_adv_set_terminated {
 u8_t status;
 u8_t adv_handle;
 u16_t conn_handle;
 u8_t num_completed_ext_adv_evts;
} 
# 2336 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2336 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_scan_req_received {
 u8_t handle;
 bt_addr_le_t addr;
} 
# 2342 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2342 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_evt_le_chan_sel_algo {
 u16_t handle;
 u8_t chan_sel_algo;
} 
# 2351 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2351 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_past_received {
 uint8_t status;
 uint16_t conn_handle;
 uint16_t service_data;
 uint16_t sync_handle;
 uint8_t adv_sid;
 bt_addr_le_t addr;
 uint8_t phy;
 uint16_t interval;
 uint8_t clock_accuracy;
} 
# 2364 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2364 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_cis_established {
 uint8_t status;
 uint16_t conn_handle;
 uint8_t cig_sync_delay[3];
 uint8_t cis_sync_delay[3];
 uint8_t m_latency[3];
 uint8_t s_latency[3];
 uint8_t m_phy;
 uint8_t s_phy;
 uint8_t nse;
 uint8_t m_bn;
 uint8_t s_bn;
 uint8_t m_ft;
 uint8_t s_ft;
 uint16_t m_max_pdu;
 uint16_t s_max_pdu;
 uint16_t interval;
} 
# 2384 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2384 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_cis_req {
 uint16_t acl_handle;
 uint16_t cis_handle;
 uint8_t cig_id;
 uint8_t cis_id;
} 
# 2392 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2392 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_big_complete {
 uint8_t status;
 uint8_t big_handle;
 uint8_t sync_delay[3];
 uint8_t latency[3];
 uint8_t phy;
 uint8_t nse;
 uint8_t bn;
 uint8_t pto;
 uint8_t irc;
 uint16_t max_pdu;
 uint8_t num_bis;
 uint16_t handle[0];
} 
# 2408 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2408 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_big_terminate {
 uint8_t big_handle;
 uint8_t reason;
} 
# 2414 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2414 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_big_sync_established {
 uint8_t status;
 uint8_t big_handle;
 uint8_t latency[3];
 uint8_t nse;
 uint8_t bn;
 uint8_t pto;
 uint8_t irc;
 uint16_t max_pdu;
 uint8_t num_bis;
 uint16_t handle[0];
} 
# 2428 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2428 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_big_sync_lost {
 uint8_t big_handle;
 uint8_t reason;
} 
# 2434 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2434 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_req_peer_sca_complete {
 uint8_t status;
 uint16_t handle;
 uint8_t sca;
} 
# 2441 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2441 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_biginfo_adv_report {
 uint16_t sync_handle;
 uint8_t num_bis;
 uint8_t nse;
 uint16_t iso_interval;
 uint8_t bn;
 uint8_t pto;
 uint8_t irc;
 uint16_t max_pdu;
 uint8_t sdu_interval[3];
 uint16_t max_sdu;
 uint8_t phy;
 uint8_t framing;
 uint8_t encryption;
} 
# 2458 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2458 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 2563 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct net_buf *bt_hci_cmd_create(u16_t opcode, u8_t param_len);
# 2582 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_cmd_send(u16_t opcode, struct net_buf *buf);
# 2607 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_cmd_send_sync(u16_t opcode, struct net_buf *buf,
    struct net_buf **rsp);
# 2633 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
typedef 
# 2633 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3 4
       _Bool 
# 2633 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
            bt_hci_vnd_evt_cb_t(struct net_buf_simple *buf);
# 2642 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_register_vnd_evt_cb(bt_hci_vnd_evt_cb_t cb);
# 26 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gap.h" 1
# 27 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 55 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
typedef void (*bt_ready_cb_t)(int err);
# 67 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_enable(bt_ready_cb_t cb);
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_set_name(const char *name);







const char *bt_get_name(void);
# 100 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_set_id_addr(const bt_addr_le_t *addr);
# 117 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
void bt_id_get(bt_addr_le_t *addrs, size_t *count);
# 156 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_create(bt_addr_le_t *addr, u8_t *irk);
# 189 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_reset(u8_t id, bt_addr_le_t *addr, u8_t *irk);
# 206 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_delete(u8_t id);







struct bt_data {
 u8_t type;
 u8_t data_len;
 const u8_t *data;
};
# 249 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
enum {

 BT_LE_ADV_OPT_NONE = 0,




 BT_LE_ADV_OPT_CONNECTABLE = (1UL << (0)),
# 267 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
 BT_LE_ADV_OPT_ONE_TIME = (1UL << (1)),





 BT_LE_ADV_OPT_USE_IDENTITY = (1UL << (2)),


 BT_LE_ADV_OPT_USE_NAME = (1UL << (3)),





 BT_LE_ADV_OPT_DIR_MODE_LOW_DUTY = (1UL << (4)),
# 293 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
 BT_LE_ADV_OPT_DIR_ADDR_RPA = (1UL << (5)),




 BT_LE_ADV_OPT_FILTER_SCAN_REQ = (1UL << (6)),


 BT_LE_ADV_OPT_FILTER_CONN = (1UL << (7)),
};


struct bt_le_adv_param {

 u8_t id;


 u8_t options;


 u16_t interval_min;


 u16_t interval_max;




};
# 378 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_adv_start(const struct bt_le_adv_param *param,
      const struct bt_data *ad, size_t ad_len,
      const struct bt_data *sd, size_t sd_len);
# 393 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_adv_update_data(const struct bt_data *ad, size_t ad_len,
     const struct bt_data *sd, size_t sd_len);







int bt_le_adv_stop(void);
# 415 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
typedef void bt_le_scan_cb_t(const bt_addr_le_t *addr, s8_t rssi,
        u8_t adv_type, struct net_buf_simple *buf);

enum {

 BT_LE_SCAN_FILTER_DUPLICATE = (1UL << (0)),


 BT_LE_SCAN_FILTER_WHITELIST = (1UL << (1)),


 BT_LE_SCAN_FILTER_EXTENDED = (1UL << (2)),
};

enum {

 BT_LE_SCAN_TYPE_PASSIVE = 0x00,


 BT_LE_SCAN_TYPE_ACTIVE = 0x01,
};


struct bt_le_scan_param {

 u8_t type;


 u8_t filter_dup;


 u16_t interval;


 u16_t window;
};
# 498 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_scan_start(const struct bt_le_scan_param *param, bt_le_scan_cb_t cb);
# 508 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_scan_stop(void);
# 523 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_add(const bt_addr_le_t *addr);
# 538 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_rem(const bt_addr_le_t *addr);
# 551 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_clear(void);
# 560 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_set_chan_map(u8_t chan_map[5]);
# 575 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
void bt_data_parse(struct net_buf_simple *ad,
     
# 576 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
    _Bool 
# 576 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
         (*func)(struct bt_data *data, void *user_data),
     void *user_data);


struct bt_le_oob_sc_data {

 u8_t r[16];


 u8_t c[16];
};


struct bt_le_oob {



 bt_addr_le_t addr;


 struct bt_le_oob_sc_data le_sc_data;
};
# 615 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_oob_get_local(u8_t id, struct bt_le_oob *oob);


struct bt_br_discovery_result {

 u8_t _priv[4];


 bt_addr_t addr;


 s8_t rssi;


 u8_t cod[3];


 u8_t eir[240];
};
# 646 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
typedef void bt_br_discovery_cb_t(struct bt_br_discovery_result *results,
      size_t count);


struct bt_br_discovery_param {



 u8_t length;


 
# 657 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
_Bool 
# 657 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
     limited;
};
# 676 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_discovery_start(const struct bt_br_discovery_param *param,
     struct bt_br_discovery_result *results, size_t count,
     bt_br_discovery_cb_t cb);
# 688 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_discovery_stop(void);

int bt_disable(void);


struct bt_br_oob {

 bt_addr_t addr;
};
# 706 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_oob_get_local(struct bt_br_oob *oob);
# 738 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
static inline int bt_addr_to_str(const bt_addr_t *addr, char *str, size_t len)
{
 return snprintf(str, len, "%02X:%02X:%02X:%02X:%02X:%02X",
   addr->val[5], addr->val[4], addr->val[3],
   addr->val[2], addr->val[1], addr->val[0]);
}
# 755 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
static inline int bt_addr_le_to_str(const bt_addr_le_t *addr, char *str,
        size_t len)
{
 char type[10];

 switch (addr->type) {
 case 0x00:
  strcpy(type, "public");
  break;
 case 0x01:
  strcpy(type, "random");
  break;
 case 0x02:
  strcpy(type, "public-id");
  break;
 case 0x03:
  strcpy(type, "random-id");
  break;
 default:
  snprintf(type, sizeof(type), "0x%02x", addr->type);
  break;
 }

 return snprintf(str, len, "%02X:%02X:%02X:%02X:%02X:%02X (%s)",
   addr->a.val[5], addr->a.val[4], addr->a.val[3],
   addr->a.val[2], addr->a.val[1], addr->a.val[0], type);
}
# 791 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_addr_from_str(const char *str, bt_addr_t *addr);
# 802 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_addr_le_from_str(const char *str, const char *type, bt_addr_le_t *addr);
# 815 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_set_discoverable(
# 815 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
                          _Bool 
# 815 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
                               enable);
# 828 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_set_connectable(
# 828 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
                         _Bool 
# 828 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
                              enable);
# 838 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_unpair(u8_t id, const bt_addr_le_t *addr);


struct bt_bond_info {

 bt_addr_le_t addr;
};







void bt_foreach_bond(u8_t id, void (*func)(const struct bt_bond_info *info, void *user_data),
       void *user_data);




int bt_br_write_local_name(char *name);




int bt_br_write_eir(u8_t fec, u8_t *data);
# 23 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h" 1
# 30 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn;


struct bt_le_conn_param {
 u16_t interval_min;
 u16_t interval_max;
 u16_t latency;
 u16_t timeout;




};
# 75 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_ref(struct bt_conn *conn);







void bt_conn_unref(struct bt_conn *conn);







void bt_conn_foreach(int type, void (*func)(struct bt_conn *conn, void *data),
       void *data);
# 105 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_lookup_addr_le(u8_t id, const bt_addr_le_t *peer);



# 108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
_Bool 
# 108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
    le_check_valid_conn(void);
void notify_disconnected(struct bt_conn *conn);

void bt_notify_disconnected(void);
# 121 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
const bt_addr_le_t *bt_conn_get_dst(const struct bt_conn *conn);
# 133 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
u8_t bt_conn_index(struct bt_conn *conn);


enum {

 BT_CONN_TYPE_LE = (1UL << (0)),

 BT_CONN_TYPE_BR = (1UL << (1)),

 BT_CONN_TYPE_SCO = (1UL << (2)),

 BT_CONN_TYPE_ISO = (1UL << (3)),

 BT_CONN_TYPE_ALL = BT_CONN_TYPE_LE | BT_CONN_TYPE_BR |
      BT_CONN_TYPE_SCO | BT_CONN_TYPE_ISO,
};


struct bt_conn_le_info {

 const bt_addr_le_t *src;



 const bt_addr_le_t *dst;

 const bt_addr_le_t *local;

 const bt_addr_le_t *remote;
 u16_t interval;
 u16_t latency;
 u16_t timeout;
};


struct bt_conn_br_info {
 const bt_addr_t *dst;
};


enum {
 BT_CONN_ROLE_MASTER,
 BT_CONN_ROLE_SLAVE,
};
# 187 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn_info {
 u8_t type;

 u8_t role;

 u8_t id;

 union {
  struct bt_conn_le_info le;

  struct bt_conn_br_info br;
 };
};
# 208 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_get_info(const struct bt_conn *conn, struct bt_conn_info *info);







 int bt_conn_get_remote_dev_info(struct bt_conn_info *info);
# 229 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_le_param_update(struct bt_conn *conn,
       const struct bt_le_conn_param *param);
# 241 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_disconnect(struct bt_conn *conn, u8_t reason);
# 255 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_create_le(const bt_addr_le_t *peer,
      const struct bt_le_conn_param *param);
# 266 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_create_auto_le(const struct bt_le_conn_param *param);





int bt_conn_create_auto_stop(void);
# 288 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_le_set_auto_conn(const bt_addr_le_t *addr,
   const struct bt_le_conn_param *param);
# 312 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_create_slave_le(const bt_addr_le_t *peer,
     const struct bt_le_adv_param *param);


typedef enum 
# 316 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h" 3
            __attribute__((__packed__)) 
# 316 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
                     {

 BT_SECURITY_L0,

 BT_SECURITY_L1,

 BT_SECURITY_L2,

 BT_SECURITY_L3,

 BT_SECURITY_L4,

 BT_SECURITY_NONE __attribute__((deprecated)) = BT_SECURITY_L0,
 BT_SECURITY_LOW __attribute__((deprecated)) = BT_SECURITY_L1,
 BT_SECURITY_MEDIUM __attribute__((deprecated)) = BT_SECURITY_L2,
 BT_SECURITY_HIGH __attribute__((deprecated)) = BT_SECURITY_L3,
 BT_SECURITY_FIPS __attribute__((deprecated)) = BT_SECURITY_L4,




 BT_SECURITY_FORCE_PAIR = (1UL << (7)),
} bt_security_t;
# 363 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_set_security(struct bt_conn *conn, bt_security_t sec);





bt_security_t bt_conn_get_security(struct bt_conn *conn);

static inline int __attribute__((deprecated)) bt_conn_security(struct bt_conn *conn,
      bt_security_t sec)
{
 return bt_conn_set_security(conn, sec);
}
# 386 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
u8_t bt_conn_enc_key_size(struct bt_conn *conn);

enum bt_security_err {

 BT_SECURITY_ERR_SUCCESS,


 BT_SECURITY_ERR_AUTH_FAIL,


 BT_SECURITY_ERR_PIN_OR_KEY_MISSING,


 BT_SECURITY_ERR_OOB_NOT_AVAILABLE,


 BT_SECURITY_ERR_AUTH_REQUIREMENT,


 BT_SECURITY_ERR_PAIR_NOT_SUPPORTED,


 BT_SECURITY_ERR_PAIR_NOT_ALLOWED,


 BT_SECURITY_ERR_INVALID_PARAM,


 BT_SECURITY_ERR_UNSPECIFIED,
};
# 427 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn_cb {
# 446 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*connected)(struct bt_conn *conn, u8_t err);
# 456 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*disconnected)(struct bt_conn *conn, u8_t reason);
# 479 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 
# 479 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
_Bool 
# 479 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
     (*le_param_req)(struct bt_conn *conn,
        struct bt_le_conn_param *param);
# 492 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*le_param_updated)(struct bt_conn *conn, u16_t interval,
     u16_t latency, u16_t timeout);
# 504 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*le_phy_updated)(struct bt_conn *conn, u8_t tx_phy, u8_t rx_phy);
# 515 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*identity_resolved)(struct bt_conn *conn,
      const bt_addr_le_t *rpa,
      const bt_addr_le_t *identity);
# 529 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*security_changed)(struct bt_conn *conn, bt_security_t level,
     enum bt_security_err err);

 struct bt_conn_cb *_next;
};
# 558 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
void bt_conn_cb_register(struct bt_conn_cb *cb);
# 570 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
void bt_set_bondable(
# 570 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
                    _Bool 
# 570 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
                         enable);
# 580 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
void bt_set_oob_data_flag(
# 580 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
                         _Bool 
# 580 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
                              enable);
# 601 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_le_oob_set_sc_data(struct bt_conn *conn,
     const struct bt_le_oob_sc_data *oobd_local,
     const struct bt_le_oob_sc_data *oobd_remote);
# 621 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_le_oob_get_sc_data(struct bt_conn *conn,
     const struct bt_le_oob_sc_data **oobd_local,
     const struct bt_le_oob_sc_data **oobd_remote);
# 645 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_passkey_set(unsigned int passkey);


struct bt_conn_oob_info {

 enum {

  BT_CONN_OOB_LE_LEGACY,


  BT_CONN_OOB_LE_SC,
 } type;

 union {

  struct {

   enum {

    BT_CONN_OOB_LOCAL_ONLY,


    BT_CONN_OOB_REMOTE_ONLY,


    BT_CONN_OOB_BOTH_PEERS,


    BT_CONN_OOB_NO_DATA,
   } oob_config;
  } lesc;
 };
};


struct bt_conn_auth_cb {
# 699 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*passkey_display)(struct bt_conn *conn, unsigned int passkey);
# 719 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*passkey_entry)(struct bt_conn *conn);
# 742 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*passkey_confirm)(struct bt_conn *conn, unsigned int passkey);
# 759 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*oob_data_request)(struct bt_conn *conn,
     struct bt_conn_oob_info *info);
# 774 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*cancel)(struct bt_conn *conn);
# 794 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*pairing_confirm)(struct bt_conn *conn);
# 826 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*pairing_complete)(struct bt_conn *conn, 
# 826 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
                                               _Bool 
# 826 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
                                                    bonded);






 void (*pairing_failed)(struct bt_conn *conn,
          enum bt_security_err reason);
};
# 846 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_cb_register(const struct bt_conn_auth_cb *cb);
# 858 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_passkey_entry(struct bt_conn *conn, unsigned int passkey);
# 868 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_cancel(struct bt_conn *conn);
# 879 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_passkey_confirm(struct bt_conn *conn);
# 890 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_pairing_confirm(struct bt_conn *conn);
# 902 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_pincode_entry(struct bt_conn *conn, const char *pin);


struct bt_br_conn_param {
 
# 906 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
_Bool 
# 906 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
     allow_role_switch;
};
# 934 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_create_br(const bt_addr_t *peer,
      const struct bt_br_conn_param *param);
# 946 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_create_sco(const bt_addr_t *peer);
# 24 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h" 1
# 20 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/../bluetooth/buf.h" 1
# 21 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h" 2
# 43 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
struct bt_l2cap_chan;






typedef void (*bt_l2cap_chan_destroy_t)(struct bt_l2cap_chan *chan);





typedef enum bt_l2cap_chan_state {

 BT_L2CAP_DISCONNECTED,

 BT_L2CAP_CONNECT,

 BT_L2CAP_CONFIG,

 BT_L2CAP_CONNECTED,

 BT_L2CAP_DISCONNECT,

} 
# 68 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h" 3
 __attribute__((__packed__)) 
# 68 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
          bt_l2cap_chan_state_t;


typedef enum bt_l2cap_chan_status {

 BT_L2CAP_STATUS_OUT,


 BT_L2CAP_NUM_STATUS,
} 
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h" 3
 __attribute__((__packed__)) 
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
          bt_l2cap_chan_status_t;


struct bt_l2cap_chan {

 struct bt_conn *conn;

 struct bt_l2cap_chan_ops *ops;
 sys_snode_t node;
 bt_l2cap_chan_destroy_t destroy;

 struct k_delayed_work rtx_work;
 atomic_t status[1 + ((BT_L2CAP_NUM_STATUS) - 1) / (sizeof(atomic_val_t) * 8)];
# 99 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
};


struct bt_l2cap_le_endpoint {

 u16_t cid;

 u16_t mtu;

 u16_t mps;

 u16_t init_credits;

 struct k_sem credits;
};


struct bt_l2cap_le_chan {

 struct bt_l2cap_chan chan;

 struct bt_l2cap_le_endpoint rx;

 struct bt_l2cap_le_endpoint tx;

 struct k_fifo tx_queue;

 struct net_buf *tx_buf;

 struct net_buf *_sdu;
 u16_t _sdu_len;

 struct k_work rx_work;
 struct k_fifo rx_queue;
};
# 147 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
struct bt_l2cap_br_endpoint {

 u16_t cid;

 u16_t mtu;
};


struct bt_l2cap_br_chan {

 struct bt_l2cap_chan chan;

 struct bt_l2cap_br_endpoint rx;

 struct bt_l2cap_br_endpoint tx;

 atomic_t flags[1];
};


struct bt_l2cap_chan_ops {







 void (*connected)(struct bt_l2cap_chan *chan);
# 185 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 void (*disconnected)(struct bt_l2cap_chan *chan);
# 202 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 void (*encrypt_change)(struct bt_l2cap_chan *chan, u8_t hci_status);
# 213 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 struct net_buf *(*alloc_buf)(struct bt_l2cap_chan *chan);
# 226 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 int (*recv)(struct bt_l2cap_chan *chan, struct net_buf *buf);
# 235 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 void (*sent)(struct bt_l2cap_chan *chan);
# 245 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 void (*status)(struct bt_l2cap_chan *chan, atomic_t *status);


    void (*mtu_changed)(struct bt_l2cap_chan *chan, u16_t mtu);

};







struct bt_l2cap_server {
# 271 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 u16_t psm;


 bt_security_t sec_level;
# 290 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 int (*accept)(struct bt_conn *conn, struct bt_l2cap_chan **chan);

 sys_snode_t node;
};
# 314 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_server_register(struct bt_l2cap_server *server);
# 326 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_br_server_register(struct bt_l2cap_server *server);
# 346 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_chan_connect(struct bt_conn *conn, struct bt_l2cap_chan *chan,
     u16_t psm);
# 360 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_chan_disconnect(struct bt_l2cap_chan *chan);
# 371 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_chan_send(struct bt_l2cap_chan *chan, struct net_buf *buf);
# 385 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_chan_recv_complete(struct bt_l2cap_chan *chan,
    struct net_buf *buf);
# 25 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 1
# 138 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
struct bt_hci_cp_vs_set_tx_pwr {
    int8_t power;
}
# 140 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
__attribute__((__packed__))
# 140 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
        ;



struct bt_hci_cp_vs_set_bd_addr {
    bt_addr_t bdaddr;
}
# 146 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
__attribute__((__packed__))
# 146 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
        ;




struct bt_hci_evt_vs {
 u8_t subevent;
} 
# 153 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 153 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_evt_vs_fatal_error {
 u64_t pc;
 u8_t err_info[0];
} 
# 159 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 159 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;







struct bt_hci_evt_vs_trace_info {
 u8_t type;
 u8_t data[0];
} 
# 170 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 170 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_evt_vs_scan_req_rx {
 bt_addr_le_t addr;
 s8_t rssi;
} 
# 176 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 176 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;
# 190 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
struct bt_hci_cp_mesh {
 u8_t opcode;
} 
# 192 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 192 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_rp_mesh_get_opts {
 u8_t status;
 u8_t opcode;
 u8_t revision;
 u8_t ch_map;
 s8_t min_tx_power;
 s8_t max_tx_power;
 u8_t max_scan_filter;
 u8_t max_filter_pattern;
 u8_t max_adv_slot;
 u8_t max_tx_window;
 u8_t evt_prefix_len;
 u8_t evt_prefix;
} 
# 208 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 208 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;




struct bt_hci_mesh_pattern {
 u8_t pattern_len;
 u8_t pattern[0];
} 
# 216 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 216 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;

struct bt_hci_cp_mesh_set_scan_filter {
 u8_t scan_filter;
 u8_t filter_dup;
 u8_t num_patterns;
 struct bt_hci_mesh_pattern patterns[0];
} 
# 223 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 223 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;
struct bt_hci_rp_mesh_set_scan_filter {
 u8_t status;
 u8_t opcode;
 u8_t scan_filter;
} 
# 228 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 228 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_cp_mesh_advertise {
 u8_t adv_slot;
 u8_t own_addr_type;
 bt_addr_t random_addr;
 u8_t ch_map;
 s8_t tx_power;
 u8_t min_tx_delay;
 u8_t max_tx_delay;
 u8_t retx_count;
 u8_t retx_interval;
 u8_t scan_delay;
 u16_t scan_duration;
 u8_t scan_filter;
 u8_t data_len;
 u8_t data[31];
} 
# 246 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 246 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;
struct bt_hci_rp_mesh_advertise {
 u8_t status;
 u8_t opcode;
 u8_t adv_slot;
} 
# 251 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 251 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_cp_mesh_advertise_timed {
 u8_t adv_slot;
 u8_t own_addr_type;
 bt_addr_t random_addr;
 u8_t ch_map;
 s8_t tx_power;
 u8_t retx_count;
 u8_t retx_interval;
 u32_t instant;
 u16_t tx_delay;
 u16_t tx_window;
 u8_t data_len;
 u8_t data[31];
} 
# 267 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 267 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;
struct bt_hci_rp_mesh_advertise_timed {
 u8_t status;
 u8_t opcode;
 u8_t adv_slot;
} 
# 272 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 272 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_cp_mesh_advertise_cancel {
 u8_t adv_slot;
} 
# 277 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 277 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;
struct bt_hci_rp_mesh_advertise_cancel {
 u8_t status;
 u8_t opcode;
 u8_t adv_slot;
} 
# 282 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 282 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_cp_mesh_set_scanning {
 u8_t enable;
 u8_t ch_map;
 u8_t scan_filter;
} 
# 289 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 289 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;
struct bt_hci_rp_mesh_set_scanning {
 u8_t status;
 u8_t opcode;
} 
# 293 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 293 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_evt_mesh {
 u8_t prefix;
 u8_t subevent;
} 
# 299 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 299 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_evt_mesh_adv_complete {
 u8_t adv_slot;
} 
# 304 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 304 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;


struct bt_hci_evt_mesh_scan_report {
 bt_addr_le_t addr;
 u8_t chan;
 s8_t rssi;
 u32_t instant;
 u8_t data_len;
 u8_t data[0];
} 
# 314 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 314 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;
struct bt_hci_evt_mesh_scanning_report {
 u8_t num_reports;
 struct bt_hci_evt_mesh_scan_report reports[0];
} 
# 318 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h" 3
 __attribute__((__packed__))
# 318 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_vs.h"
         ;
# 27 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h" 1
# 22 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/../../bluetooth/buf.h" 1
# 23 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h" 2





enum {

 BT_QUIRK_NO_RESET = (1UL << (0)),
};
# 47 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
static inline 
# 47 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h" 3 4
             _Bool 
# 47 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
                  bt_hci_evt_is_prio(u8_t evt)
{
 switch (evt) {
 case 0x0e:
 case 0x0f:


 case 0x13:
 case 0x1a:

  return 
# 57 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h" 3 4
        1
# 57 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
            ;
 default:
  return 
# 59 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h" 3 4
        0
# 59 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
             ;
 }
}
# 76 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
int bt_recv(struct net_buf *buf);
# 95 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
int bt_recv_prio(struct net_buf *buf);


enum bt_hci_driver_bus {
 BT_HCI_DRIVER_BUS_VIRTUAL = 0,
 BT_HCI_DRIVER_BUS_USB = 1,
 BT_HCI_DRIVER_BUS_PCCARD = 2,
 BT_HCI_DRIVER_BUS_UART = 3,
 BT_HCI_DRIVER_BUS_RS232 = 4,
 BT_HCI_DRIVER_BUS_PCI = 5,
 BT_HCI_DRIVER_BUS_SDIO = 6,
 BT_HCI_DRIVER_BUS_SPI = 7,
 BT_HCI_DRIVER_BUS_I2C = 8,
 BT_HCI_DRIVER_BUS_IPM = 9,
};







struct bt_hci_driver {

 const char *name;


 enum bt_hci_driver_bus bus;






 u32_t quirks;
# 144 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
 int (*open)(void);
# 158 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
 int (*send)(struct net_buf *buf);
};
# 171 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
int bt_hci_driver_register(const struct bt_hci_driver *drv);
# 193 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
void hci_driver_enque_recvq(struct net_buf *buf);

int hci_driver_init(void);
# 28 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.h" 1
# 23 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 57 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskSwitchContext( void );
extern void vEnvironmentCall( uint32_t exception );
# 97 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 152 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
BaseType_t xPortIsInsideInterrupt( void );
# 53 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
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
# 63 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1095 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1133 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1146 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1162 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1206 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1235 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1263 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 24 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
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
# 345 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
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
# 330 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1513 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;






        typedef void (*TlsDeleteCallbackFunction_t)( int, void * );




        UBaseType_t vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue, TlsDeleteCallbackFunction_t pvDelCallback);
# 1541 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1550 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1649 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
UBaseType_t xAddTasksToAllList( void ) ;
List_t * pxTaskGetAllList( void ) ;
# 1698 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1752 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1782 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1863 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1954 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2031 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2132 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2201 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2217 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2238 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2271 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2285 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2311 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2322 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2378 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2399 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2416 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 25 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.h" 2
# 88 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.h"
extern void user_vAssertCalled(void);
# 109 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.h"
static inline char *log_strdup(const char *str)
{
 return (char *)str;
}






const char *bt_hex_real(const void *buf, size_t len);
const char *bt_addr_str_real(const bt_addr_t *addr);
const char *bt_addr_le_str_real(const bt_addr_le_t *addr);
# 31 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/rpa.h" 1
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/rpa.h"

# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/rpa.h" 3 4
_Bool 
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/rpa.h"
    bt_rpa_irk_matches(const u8_t irk[16], const bt_addr_t *addr);
int bt_rpa_create(const u8_t irk[16], bt_addr_t *rpa);
# 33 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/keys.h" 1
# 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/keys.h"
enum {
 BT_KEYS_SLAVE_LTK = (1UL << (0)),
 BT_KEYS_IRK = (1UL << (1)),
 BT_KEYS_LTK = (1UL << (2)),
 BT_KEYS_LOCAL_CSRK = (1UL << (3)),
 BT_KEYS_REMOTE_CSRK = (1UL << (4)),
 BT_KEYS_LTK_P256 = (1UL << (5)),

 BT_KEYS_ALL = (BT_KEYS_SLAVE_LTK | BT_KEYS_IRK |
      BT_KEYS_LTK | BT_KEYS_LOCAL_CSRK |
      BT_KEYS_REMOTE_CSRK | BT_KEYS_LTK_P256),
};

enum {
 BT_KEYS_AUTHENTICATED = (1UL << (0)),
 BT_KEYS_DEBUG = (1UL << (1)),
 BT_KEYS_ID_PENDING_ADD = (1UL << (2)),
 BT_KEYS_ID_PENDING_DEL = (1UL << (3)),
 BT_KEYS_SC = (1UL << (4)),
};

struct bt_ltk {
 u8_t rand[8];
 u8_t ediv[2];
 u8_t val[16];
};

struct bt_irk {
 u8_t val[16];
 bt_addr_t rpa;
};

struct bt_csrk {
 u8_t val[16];
 u32_t cnt;
};

struct bt_keys {
 u8_t id;
 bt_addr_le_t addr;



 u8_t enc_size;
 u8_t flags;
 u16_t keys;
 struct bt_ltk ltk;
 struct bt_irk irk;

 struct bt_csrk local_csrk;
 struct bt_csrk remote_csrk;


 struct bt_ltk slave_ltk;


 u32_t aging_counter;

};






void bt_keys_foreach(int type, void (*func)(struct bt_keys *keys, void *data),
       void *data);

struct bt_keys *bt_keys_get_addr(u8_t id, const bt_addr_le_t *addr);
struct bt_keys *bt_keys_get_type(int type, u8_t id, const bt_addr_le_t *addr);
struct bt_keys *bt_keys_find(int type, u8_t id, const bt_addr_le_t *addr);
struct bt_keys *bt_keys_find_irk(u8_t id, const bt_addr_le_t *addr);
struct bt_keys *bt_keys_find_addr(u8_t id, const bt_addr_le_t *addr);




void bt_keys_add_type(struct bt_keys *keys, int type);
void bt_keys_clear(struct bt_keys *keys);
void bt_keys_clear_all(u8_t id);

int keys_commit(void);
int bt_keys_load(void);





static inline int bt_keys_store(struct bt_keys *keys)
{
 return 0;
}


enum {
 BT_LINK_KEY_AUTHENTICATED = (1UL << (0)),
 BT_LINK_KEY_DEBUG = (1UL << (1)),
 BT_LINK_KEY_SC = (1UL << (2)),
};

struct bt_keys_link_key {
 bt_addr_t addr;
 u8_t flags;
 u8_t val[16];
};

struct bt_keys_link_key *bt_keys_get_link_key(const bt_addr_t *addr);
struct bt_keys_link_key *bt_keys_find_link_key(const bt_addr_t *addr);
void bt_keys_link_key_clear(struct bt_keys_link_key *link_key);
void bt_keys_link_key_clear_addr(const bt_addr_t *addr);




void bt_keys_update_usage(u8_t id, const bt_addr_le_t *addr);
void bt_keys_link_key_store(struct bt_keys_link_key *link_key);
# 34 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/monitor.h" 1
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h" 1
# 32 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
enum {
 BT_EVENT_CMD_TX,
 BT_EVENT_CONN_TX_QUEUE,




};


enum {
 BT_DEV_ENABLE,
 BT_DEV_READY,
 BT_DEV_PRESET_ID,
 BT_DEV_USER_ID_ADDR,
 BT_DEV_HAS_PUB_KEY,
 BT_DEV_PUB_KEY_BUSY,

 BT_DEV_ADVERTISING,
 BT_DEV_ADVERTISING_NAME,
 BT_DEV_ADVERTISING_CONNECTABLE,
 BT_DEV_KEEP_ADVERTISING,
 BT_DEV_SCANNING,
 BT_DEV_EXPLICIT_SCAN,
 BT_DEV_ACTIVE_SCAN,
 BT_DEV_SCAN_FILTER_DUP,
 BT_DEV_SCAN_WL,
 BT_DEV_AUTO_CONN,

 BT_DEV_RPA_VALID,

 BT_DEV_ID_PENDING,
# 80 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
    BT_DEV_ASSIST_RUN,




 BT_DEV_NUM_FLAGS,
};






struct bt_dev_le {

 u8_t features[8];

 u64_t states;



 u16_t mtu;
 struct k_sem pkts;




 u8_t rl_size;



 u8_t rl_entries;




 u8_t wl_size;

 u8_t wl_entries;

};
# 140 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
struct bt_dev {

 bt_addr_le_t id_addr[1];
 u8_t id_count;


 u8_t adv_id;


 bt_addr_le_t random_addr;


 u8_t hci_version;
 u8_t lmp_version;
 u16_t hci_revision;
 u16_t lmp_subversion;
 u16_t manufacturer;


 u8_t features[1][8];


 u8_t supported_commands[64];







 struct k_work init;

 atomic_t flags[1 + ((BT_DEV_NUM_FLAGS) - 1) / (sizeof(atomic_val_t) * 8)];


 struct bt_dev_le le;







 struct k_sem ncmd_sem;


 struct net_buf *sent_cmd;







 struct k_fifo cmd_tx_queue;


 const struct bt_hci_driver *drv;
# 209 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
 char name[29 + 1];

};
# 237 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
extern struct bt_dev bt_dev;

extern const struct bt_conn_auth_cb *bt_auth;



# 242 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h" 3 4
_Bool 
# 242 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
    bt_le_conn_params_valid(const struct bt_le_conn_param *param);

int bt_le_scan_update(
# 244 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h" 3 4
                     _Bool 
# 244 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
                          fast_scan);

int bt_le_auto_conn(const struct bt_le_conn_param *conn_param);
int bt_le_auto_conn_cancel(void);


# 249 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h" 3 4
_Bool 
# 249 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
    bt_addr_le_is_bonded(u8_t id, const bt_addr_le_t *addr);
const bt_addr_le_t *bt_lookup_id_addr(u8_t id, const bt_addr_le_t *addr);

int bt_send(struct net_buf *buf);


struct bt_keys;
void bt_id_add(struct bt_keys *keys);
void bt_id_del(struct bt_keys *keys);

int bt_setup_id_addr(void);
void bt_finalize_init(void);

int bt_le_adv_start_internal(const struct bt_le_adv_param *param,
        const struct bt_data *ad, size_t ad_len,
        const struct bt_data *sd, size_t sd_len,
        const bt_addr_le_t *peer);
# 274 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
int bt_le_read_rssi(u16_t handle,int8_t *rssi);
int set_ad_and_rsp_d(u16_t hci_op, u8_t *data, u32_t ad_len);
int set_adv_enable(
# 276 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h" 3 4
                  _Bool 
# 276 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
                       enable);
int set_adv_param(const struct bt_le_adv_param *param);
int set_adv_channel_map(u8_t channel);
int bt_get_local_public_address(bt_addr_le_t *adv_addr);
int bt_get_local_ramdon_address(bt_addr_le_t *adv_addr);
int bt_le_set_data_len(struct bt_conn *conn, u16_t tx_octets, u16_t tx_time);
int hci_le_set_phy(struct bt_conn *conn, uint8_t all_phys,
    uint8_t pref_tx_phy, uint8_t pref_rx_phy, uint8_t phy_opts);
int hci_le_set_default_phy(u8_t default_phy);



int bt_set_bd_addr(const bt_addr_t *addr);



int bt_set_tx_pwr(int8_t power);



struct blhast_cb{
    void (*le_scan_cb)(const struct bt_le_scan_param *param, bt_le_scan_cb_t cb);
    void (*le_adv_cb)(const struct bt_le_adv_param *param, const struct bt_data *ad,
  size_t ad_len, const struct bt_data *sd, size_t sd_len);
};
int bt_set_flow_control(void);
int bt_set_event_mask(void);
int bt_le_set_event_mask(void);
void bt_hci_reset_complete(struct net_buf *buf);
void bt_register_host_assist_cb(struct blhast_cb *cb);


typedef void (*bredr_name_callback)(const char *name);
int remote_name_req(const bt_addr_t *addr, bredr_name_callback cb);
# 36 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_ecc.h" 1
# 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_ecc.h"
void bt_hci_ecc_init(void);
int bt_hci_ecc_send(struct net_buf *buf);
# 37 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/ecc.h" 1
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/ecc.h"
struct bt_pub_key_cb {
# 19 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/ecc.h"
 void (*func)(const u8_t key[64]);

 struct bt_pub_key_cb *_next;
};
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/ecc.h"
int bt_pub_key_gen(struct bt_pub_key_cb *cb);







const u8_t *bt_pub_key_get(void);
# 52 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/ecc.h"
typedef void (*bt_dh_key_cb_t)(const u8_t key[32]);
# 63 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/ecc.h"
int bt_dh_key_gen(const u8_t remote_pk[64], bt_dh_key_cb_t cb);
# 38 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h" 1
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
typedef enum 
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h" 3
            __attribute__((__packed__)) 
# 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
                     {
 BT_CONN_DISCONNECTED,
 BT_CONN_CONNECT_SCAN,
 BT_CONN_CONNECT_DIR_ADV,
 BT_CONN_CONNECT,
 BT_CONN_CONNECTED,
 BT_CONN_DISCONNECT,
} bt_conn_state_t;


enum {
 BT_CONN_AUTO_CONNECT,
 BT_CONN_BR_LEGACY_SECURE,
 BT_CONN_USER,
 BT_CONN_BR_PAIRING,
 BT_CONN_BR_NOBOND,
 BT_CONN_BR_PAIRING_INITIATOR,
 BT_CONN_CLEANUP,
 BT_CONN_AUTO_PHY_UPDATE,
 BT_CONN_SLAVE_PARAM_UPDATE,
 BT_CONN_SLAVE_PARAM_SET,
 BT_CONN_SLAVE_PARAM_L2CAP,
 BT_CONN_FORCE_PAIR,

 BT_CONN_AUTO_PHY_COMPLETE,
 BT_CONN_AUTO_FEATURE_EXCH,
 BT_CONN_AUTO_VERSION_INFO,


 BT_CONN_NUM_FLAGS,
};

struct bt_conn_le {
 bt_addr_le_t dst;

 bt_addr_le_t init_addr;
 bt_addr_le_t resp_addr;

 u16_t interval;
 u16_t interval_min;
 u16_t interval_max;

 u16_t latency;
 u16_t timeout;
 u16_t pending_latency;
 u16_t pending_timeout;

 u8_t features[8];

 struct bt_keys *keys;





};
# 89 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
struct bt_conn_iso {

 struct bt_conn *acl;

 uint8_t cig_id;

 uint8_t cis_id;
};

typedef void (*bt_conn_tx_cb_t)(struct bt_conn *conn, void *user_data);

struct bt_conn_tx {
 sys_snode_t node;

 bt_conn_tx_cb_t cb;
 void *user_data;


 u32_t pending_no_cb;
};

struct bt_conn {
 u16_t handle;
 u8_t type;
 u8_t role;

 atomic_t flags[1 + ((BT_CONN_NUM_FLAGS) - 1) / (sizeof(atomic_val_t) * 8)];


 u8_t id;


 bt_security_t sec_level;
 bt_security_t required_sec_level;
 u8_t encrypt;



 u8_t err;

 bt_conn_state_t state;

 u16_t rx_len;
 struct net_buf *rx;


 sys_slist_t tx_pending;



 u32_t pending_no_cb;


 sys_slist_t tx_complete;
 struct k_work tx_complete_work;



 struct k_fifo tx_queue;


 sys_slist_t channels;

 atomic_t ref;


 struct k_delayed_work update_work;

 union {
  struct bt_conn_le le;







 };
# 175 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
};

void bt_conn_reset_rx_state(struct bt_conn *conn);


void bt_conn_recv(struct bt_conn *conn, struct net_buf *buf, u8_t flags);


int bt_conn_send_cb(struct bt_conn *conn, struct net_buf *buf,
      bt_conn_tx_cb_t cb, void *user_data);

static inline int bt_conn_send(struct bt_conn *conn, struct net_buf *buf)
{
 return bt_conn_send_cb(conn, buf, 
# 188 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h" 3 4
                                  ((void *)0)
# 188 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
                                      , 
# 188 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h" 3 4
                                        ((void *)0)
# 188 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
                                            );
}


struct bt_conn *bt_conn_add_le(u8_t id, const bt_addr_le_t *peer);


struct bt_iso_create_param {
 uint8_t id;
 uint8_t num_conns;
 struct bt_conn **conns;
 struct bt_iso_chan **chans;
};


int bt_conn_bind_iso(struct bt_iso_create_param *param);


int bt_conn_connect_iso(struct bt_conn **conns, uint8_t num_conns);


struct bt_conn *bt_conn_add_iso(struct bt_conn *acl);


void bt_iso_cleanup(struct bt_conn *iso_conn);


struct bt_conn *iso_conn_new(struct bt_conn *conns, size_t size);


struct bt_conn *bt_conn_add_br(const bt_addr_t *peer);


struct bt_conn *bt_conn_add_sco(const bt_addr_t *peer, int link_type);


void bt_sco_cleanup(struct bt_conn *sco_conn);


struct bt_conn *bt_conn_lookup_addr_sco(const bt_addr_t *peer);


struct bt_conn *bt_conn_lookup_addr_br(const bt_addr_t *peer);

void bt_conn_pin_code_req(struct bt_conn *conn);
u8_t bt_conn_get_io_capa(void);
u8_t bt_conn_ssp_get_auth(const struct bt_conn *conn);
void bt_conn_ssp_auth(struct bt_conn *conn, u32_t passkey);
void bt_conn_ssp_auth_complete(struct bt_conn *conn, u8_t status);

void bt_conn_disconnect_all(u8_t id);


struct bt_conn *bt_conn_lookup_handle(u16_t handle);


int bt_conn_addr_le_cmp(const struct bt_conn *conn, const bt_addr_le_t *peer);







struct bt_conn *bt_conn_lookup_id(u8_t id);




struct bt_conn *bt_conn_lookup_state_le(const bt_addr_le_t *peer,
     const bt_conn_state_t state);


void bt_conn_set_state(struct bt_conn *conn, bt_conn_state_t state);

int bt_conn_le_conn_update(struct bt_conn *conn,
      const struct bt_le_conn_param *param);

void notify_remote_info(struct bt_conn *conn);

void notify_le_param_updated(struct bt_conn *conn);

void notify_le_phy_updated(struct bt_conn *conn, u8_t tx_phy, u8_t rx_phy);


# 272 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h" 3 4
_Bool 
# 272 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
    le_param_req(struct bt_conn *conn, struct bt_le_conn_param *param);



int bt_conn_le_start_encryption(struct bt_conn *conn, u8_t rand[8],
    u8_t ediv[2], const u8_t *ltk, size_t len);


void bt_conn_identity_resolved(struct bt_conn *conn);




void bt_conn_security_changed(struct bt_conn *conn, enum bt_security_err err);
# 301 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
struct net_buf *bt_conn_create_pdu_timeout(struct net_buf_pool *pool,
        size_t reserve, s32_t timeout);
# 321 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
struct net_buf *bt_conn_create_frag_timeout(size_t reserve, s32_t timeout);






int bt_conn_init(void);


struct k_sem *bt_conn_get_pkts(struct bt_conn *conn);


int bt_conn_prepare_events(struct k_poll_event events[]);




void bt_conn_process_tx(struct bt_conn *conn);
# 350 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
int bt_hci_get_conn_handle(const struct bt_conn *conn, u16_t *conn_handle);
# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 1
# 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
enum l2cap_conn_list_action {
 BT_L2CAP_CHAN_LOOKUP,
 BT_L2CAP_CHAN_DETACH,
};
# 26 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_hdr {
 u16_t len;
 u16_t cid;
} 
# 29 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 29 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;

struct bt_l2cap_sig_hdr {
 u8_t code;
 u8_t ident;
 u16_t len;
} 
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;






struct bt_l2cap_cmd_reject {
 u16_t reason;
 u8_t data[0];
} 
# 45 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 45 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;

struct bt_l2cap_cmd_reject_cid_data {
 u16_t scid;
 u16_t dcid;
} 
# 50 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 50 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_conn_req {
 u16_t psm;
 u16_t scid;
} 
# 56 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 56 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;
# 72 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_conn_rsp {
 u16_t dcid;
 u16_t scid;
 u16_t result;
 u16_t status;
} 
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;






struct bt_l2cap_conf_req {
 u16_t dcid;
 u16_t flags;
 u8_t data[0];
} 
# 88 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 88 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_conf_rsp {
 u16_t scid;
 u16_t flags;
 u16_t result;
 u8_t data[0];
} 
# 96 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 96 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;







struct bt_l2cap_conf_opt {
 u8_t type;
 u8_t len;
 u8_t data[0];
} 
# 108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_disconn_req {
 u16_t dcid;
 u16_t scid;
} 
# 114 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 114 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_disconn_rsp {
 u16_t dcid;
 u16_t scid;
} 
# 120 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 120 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;
# 129 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_info_req {
 u16_t type;
} 
# 131 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 131 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;






struct bt_l2cap_info_rsp {
 u16_t type;
 u16_t result;
 u8_t data[0];
} 
# 142 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 142 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_conn_param_req {
 u16_t min_interval;
 u16_t max_interval;
 u16_t latency;
 u16_t timeout;
} 
# 150 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 150 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;





struct bt_l2cap_conn_param_rsp {
 u16_t result;
} 
# 158 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 158 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_le_conn_req {
 u16_t psm;
 u16_t scid;
 u16_t mtu;
 u16_t mps;
 u16_t credits;
} 
# 167 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 167 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;
# 182 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_le_conn_rsp {
 u16_t dcid;
 u16_t mtu;
 u16_t mps;
 u16_t credits;
 u16_t result;
};


struct bt_l2cap_le_credits {
 u16_t cid;
 u16_t credits;
} 
# 194 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 194 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;
# 205 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_fixed_chan {
 u16_t cid;
 int (*accept)(struct bt_conn *conn, struct bt_l2cap_chan **chan);
 sys_snode_t node;
};
# 218 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_br_fixed_chan {
 u16_t cid;
 int (*accept)(struct bt_conn *conn, struct bt_l2cap_chan **chan);
};







void l2cap_chan_sdu_sent(struct bt_conn *conn, void *user_data);

void bt_l2cap_le_fixed_chan_register(struct bt_l2cap_fixed_chan *chan);


void bt_l2cap_connected(struct bt_conn *conn);


void bt_l2cap_disconnected(struct bt_conn *conn);


void bt_l2cap_chan_add(struct bt_conn *conn, struct bt_l2cap_chan *chan,
         bt_l2cap_chan_destroy_t destroy);


void bt_l2cap_chan_remove(struct bt_conn *conn, struct bt_l2cap_chan *chan);


void bt_l2cap_chan_del(struct bt_l2cap_chan *chan);

const char *bt_l2cap_chan_state_str(bt_l2cap_chan_state_t state);
# 258 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
void bt_l2cap_chan_set_state(struct bt_l2cap_chan *chan,
        bt_l2cap_chan_state_t state);






void bt_l2cap_encrypt_change(struct bt_conn *conn, u8_t hci_status);


struct net_buf *bt_l2cap_create_pdu_timeout(struct net_buf_pool *pool,
         size_t reserve, s32_t timeout);





struct net_buf *bt_l2cap_create_rsp(struct net_buf *buf, size_t reserve);
# 286 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
int bt_l2cap_send_cb(struct bt_conn *conn, u16_t cid, struct net_buf *buf,
       bt_conn_tx_cb_t cb, void *user_data);

static inline void bt_l2cap_send(struct bt_conn *conn, u16_t cid,
     struct net_buf *buf)
{
 bt_l2cap_send_cb(conn, cid, buf, 
# 292 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3 4
                                 ((void *)0)
# 292 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
                                     , 
# 292 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h" 3 4
                                       ((void *)0)
# 292 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/l2cap_internal.h"
                                           );
}


void bt_l2cap_recv(struct bt_conn *conn, struct net_buf *buf);


int bt_l2cap_update_conn_param(struct bt_conn *conn,
          const struct bt_le_conn_param *param);


void bt_l2cap_init(void);


struct bt_l2cap_chan *bt_l2cap_le_lookup_tx_cid(struct bt_conn *conn,
      u16_t cid);


struct bt_l2cap_chan *bt_l2cap_le_lookup_rx_cid(struct bt_conn *conn,
      u16_t cid);


void bt_l2cap_br_init(void);


void bt_l2cap_br_fixed_chan_register(struct bt_l2cap_fixed_chan *chan);


void bt_l2cap_br_connected(struct bt_conn *conn);


struct bt_l2cap_chan *bt_l2cap_br_lookup_rx_cid(struct bt_conn *conn,
      u16_t cid);


int bt_l2cap_br_chan_disconnect(struct bt_l2cap_chan *chan);


int bt_l2cap_br_chan_connect(struct bt_conn *conn, struct bt_l2cap_chan *chan,
        u16_t psm);


int bt_l2cap_br_chan_send(struct bt_l2cap_chan *chan, struct net_buf *buf);





void l2cap_br_encrypt_change(struct bt_conn *conn, u8_t hci_status);


void bt_l2cap_br_recv(struct bt_conn *conn, struct net_buf *buf);
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/gatt_internal.h" 1
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/gatt_internal.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 1
# 20 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 21 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 2



# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/uuid.h" 1
# 27 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/uuid.h"
enum {
 BT_UUID_TYPE_16,
 BT_UUID_TYPE_32,
 BT_UUID_TYPE_128,
};


struct bt_uuid {
 u8_t type;
};

struct bt_uuid_16 {
 struct bt_uuid uuid;
 u16_t val;
};

struct bt_uuid_32 {
 struct bt_uuid uuid;
 u32_t val;
};

struct bt_uuid_128 {
 struct bt_uuid uuid;
 u8_t val[16];
};
# 566 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/uuid.h"
int bt_uuid_cmp(const struct bt_uuid *u1, const struct bt_uuid *u2);
# 580 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/uuid.h"

# 580 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/uuid.h" 3 4
_Bool 
# 580 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/uuid.h"
    bt_uuid_create(struct bt_uuid *uuid, const u8_t *data, u8_t data_len);
# 594 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/uuid.h"
void bt_uuid_to_str(const struct bt_uuid *uuid, char *str, size_t len);

const char *bt_uuid_str_real(const struct bt_uuid *uuid);
# 25 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/att.h" 1
# 47 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/att.h"
typedef void (*bt_att_func_t)(struct bt_conn *conn, u8_t err,
         const void *pdu, u16_t length,
         void *user_data);
typedef void (*bt_att_destroy_t)(void *user_data);


struct bt_att_req {
 sys_snode_t node;
 bt_att_func_t func;
 bt_att_destroy_t destroy;
 struct net_buf_simple_state state;
 struct net_buf *buf;

 
# 60 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/att.h" 3 4
_Bool 
# 60 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/att.h"
     retrying;

};
struct bt_att_req *bt_att_get_att_req(struct bt_conn *conn);
# 26 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 2





enum {

 BT_GATT_PERM_NONE = 0,


 BT_GATT_PERM_READ = (1UL << (0)),


 BT_GATT_PERM_WRITE = (1UL << (1)),





 BT_GATT_PERM_READ_ENCRYPT = (1UL << (2)),





 BT_GATT_PERM_WRITE_ENCRYPT = (1UL << (3)),






 BT_GATT_PERM_READ_AUTHEN = (1UL << (4)),






 BT_GATT_PERM_WRITE_AUTHEN = (1UL << (5)),






 BT_GATT_PERM_PREPARE_WRITE = (1UL << (6)),
};
# 86 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
enum {





 BT_GATT_WRITE_FLAG_PREPARE = (1UL << (0)),






 BT_GATT_WRITE_FLAG_CMD = (1UL << (1)),
};


struct bt_gatt_attr {

 const struct bt_uuid *uuid;
# 121 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
 ssize_t (*read)(struct bt_conn *conn,
     const struct bt_gatt_attr *attr,
     void *buf, u16_t len,
     u16_t offset);
# 141 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
 ssize_t (*write)(struct bt_conn *conn,
      const struct bt_gatt_attr *attr,
      const void *buf, u16_t len,
      u16_t offset, u8_t flags);


 void *user_data;

 u16_t handle;

 u8_t perm;
};


struct bt_gatt_service_static {

 const struct bt_gatt_attr *attrs;

 size_t attr_count;
};


struct bt_gatt_service {

 struct bt_gatt_attr *attrs;

 size_t attr_count;
 sys_snode_t node;
};


struct bt_gatt_service_val {

 const struct bt_uuid *uuid;

 u16_t end_handle;
};


struct bt_gatt_include {

 const struct bt_uuid *uuid;

 u16_t start_handle;

 u16_t end_handle;
};
# 244 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
struct bt_gatt_chrc {

 const struct bt_uuid *uuid;

 u16_t value_handle;

 u8_t properties;
};






struct bt_gatt_cep {

 u16_t properties;
};
# 279 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
struct bt_gatt_ccc {

 u16_t flags;
};


struct bt_gatt_cpf {

 u8_t format;



 s8_t exponent;

 u16_t unit;

 u8_t name_space;

 u16_t description;
} 
# 298 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3
 __attribute__((__packed__))
# 298 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
         ;
# 316 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_service_register(struct bt_gatt_service *svc);







int bt_gatt_service_unregister(struct bt_gatt_service *svc);

enum {
 BT_GATT_ITER_STOP = 0,
 BT_GATT_ITER_CONTINUE,
};
# 340 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
typedef u8_t (*bt_gatt_attr_func_t)(const struct bt_gatt_attr *attr,
           void *user_data);
# 355 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
void bt_gatt_foreach_attr_type(u16_t start_handle, u16_t end_handle,
          const struct bt_uuid *uuid,
          const void *attr_data, uint16_t num_matches,
          bt_gatt_attr_func_t func,
          void *user_data);
# 370 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
static inline void bt_gatt_foreach_attr(u16_t start_handle, u16_t end_handle,
     bt_gatt_attr_func_t func,
     void *user_data)
{
 bt_gatt_foreach_attr_type(start_handle, end_handle, 
# 374 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
                                                    ((void *)0)
# 374 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
                                                        , 
# 374 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
                                                          ((void *)0)
# 374 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
                                                              , 0, func,
      user_data);
}
# 386 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
struct bt_gatt_attr *bt_gatt_attr_next(const struct bt_gatt_attr *attr);
# 396 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
uint16_t bt_gatt_attr_value_handle(const struct bt_gatt_attr *attr);
# 413 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_read(struct bt_conn *conn, const struct bt_gatt_attr *attr,
     void *buf, u16_t buf_len, u16_t offset,
     const void *value, u16_t value_len);
# 432 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_read_service(struct bt_conn *conn,
      const struct bt_gatt_attr *attr,
      void *buf, u16_t len, u16_t offset);
# 498 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_read_included(struct bt_conn *conn,
       const struct bt_gatt_attr *attr,
       void *buf, u16_t len, u16_t offset);
# 528 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_read_chrc(struct bt_conn *conn,
          const struct bt_gatt_attr *attr, void *buf,
          u16_t len, u16_t offset);
# 572 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
struct bt_gatt_ccc_cfg {
 u8_t id;
 bt_addr_le_t peer;
 u16_t value;
};


struct _bt_gatt_ccc {
 struct bt_gatt_ccc_cfg cfg[(1)];
 u16_t value;
 void (*cfg_changed)(const struct bt_gatt_attr *attr,
            u16_t value);
 
# 584 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
_Bool 
# 584 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
       (*cfg_write)(struct bt_conn *conn,
          const struct bt_gatt_attr *attr,
          u16_t value);
 
# 587 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
_Bool 
# 587 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
       (*cfg_match)(struct bt_conn *conn,
          const struct bt_gatt_attr *attr);
};
# 606 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_read_ccc(struct bt_conn *conn,
         const struct bt_gatt_attr *attr, void *buf,
         u16_t len, u16_t offset);
# 625 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_write_ccc(struct bt_conn *conn,
          const struct bt_gatt_attr *attr, const void *buf,
          u16_t len, u16_t offset, u8_t flags);
# 687 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_read_cep(struct bt_conn *conn,
         const struct bt_gatt_attr *attr, void *buf,
         u16_t len, u16_t offset);
# 718 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_read_cud(struct bt_conn *conn,
         const struct bt_gatt_attr *attr, void *buf,
         u16_t len, u16_t offset);
# 749 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
ssize_t bt_gatt_attr_read_cpf(struct bt_conn *conn,
         const struct bt_gatt_attr *attr, void *buf,
         u16_t len, u16_t offset);
# 803 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
typedef void (*bt_gatt_complete_func_t) (struct bt_conn *conn, void *user_data);

struct bt_gatt_notify_params {

 const struct bt_uuid *uuid;

 const struct bt_gatt_attr *attr;

 const void *data;

 u16_t len;

 bt_gatt_complete_func_t func;

 void *user_data;
};
# 840 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_notify_cb(struct bt_conn *conn,
        struct bt_gatt_notify_params *params);
# 862 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
static inline int bt_gatt_notify(struct bt_conn *conn,
     const struct bt_gatt_attr *attr,
     const void *data, u16_t len)
{
 struct bt_gatt_notify_params params;

 memset(&params, 0, sizeof(params));

 params.attr = attr;
 params.data = data;
 params.len = len;

 return bt_gatt_notify_cb(conn, &params);
}
# 886 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
typedef void (*bt_gatt_indicate_func_t)(struct bt_conn *conn,
     const struct bt_gatt_attr *attr,
     u8_t err);


struct bt_gatt_indicate_params {
 struct bt_att_req _req;

 const struct bt_uuid *uuid;

 const struct bt_gatt_attr *attr;

 bt_gatt_indicate_func_t func;

 const void *data;

 u16_t len;
};
# 931 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_indicate(struct bt_conn *conn,
       struct bt_gatt_indicate_params *params);
# 955 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"

# 955 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
_Bool 
# 955 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
    bt_gatt_is_subscribed(struct bt_conn *conn,
      const struct bt_gatt_attr *attr, u16_t ccc_value);
# 967 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
u16_t bt_gatt_get_mtu(struct bt_conn *conn);
# 978 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
struct bt_gatt_exchange_params {
 struct bt_att_req _req;

 void (*func)(struct bt_conn *conn, u8_t err,
       struct bt_gatt_exchange_params *params);
};
# 997 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_exchange_mtu(struct bt_conn *conn,
    struct bt_gatt_exchange_params *params);





struct bt_gatt_discover_params;
# 1021 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
typedef u8_t (*bt_gatt_discover_func_t)(struct bt_conn *conn,
     const struct bt_gatt_attr *attr,
     struct bt_gatt_discover_params *params);


enum {

 BT_GATT_DISCOVER_PRIMARY,

 BT_GATT_DISCOVER_SECONDARY,

 BT_GATT_DISCOVER_INCLUDE,




 BT_GATT_DISCOVER_CHARACTERISTIC,
# 1046 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
 BT_GATT_DISCOVER_DESCRIPTOR,
# 1055 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
 BT_GATT_DISCOVER_ATTRIBUTE,
};


struct bt_gatt_discover_params {
 struct bt_att_req _req;

 struct bt_uuid *uuid;

 bt_gatt_discover_func_t func;
 union {
  struct {

   u16_t attr_handle;

   u16_t start_handle;

   u16_t end_handle;
  } _included;

  u16_t start_handle;
 };

 u16_t end_handle;

 u8_t type;
};
# 1108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_discover(struct bt_conn *conn,
       struct bt_gatt_discover_params *params);

struct bt_gatt_read_params;
# 1122 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
typedef u8_t (*bt_gatt_read_func_t)(struct bt_conn *conn, u8_t err,
        struct bt_gatt_read_params *params,
        const void *data, u16_t length);
# 1140 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
struct bt_gatt_read_params {
 struct bt_att_req _req;
 bt_gatt_read_func_t func;
 size_t handle_count;
 union {
  struct {
   u16_t handle;
   u16_t offset;
  } single;
  u16_t *handles;
  struct {
   u16_t start_handle;
   u16_t end_handle;
   struct bt_uuid *uuid;
  } by_uuid;
 };
};
# 1178 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_read(struct bt_conn *conn, struct bt_gatt_read_params *params);

struct bt_gatt_write_params;
# 1189 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
typedef void (*bt_gatt_write_func_t)(struct bt_conn *conn, u8_t err,
         struct bt_gatt_write_params *params);


struct bt_gatt_write_params {
 struct bt_att_req _req;

 bt_gatt_write_func_t func;

 u16_t handle;

 u16_t offset;

 const void *data;

 u16_t length;
};
# 1220 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_write(struct bt_conn *conn, struct bt_gatt_write_params *params);
# 1252 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_write_without_response_cb(struct bt_conn *conn, u16_t handle,
          const void *data, u16_t length,
          
# 1254 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
         _Bool 
# 1254 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
              sign, bt_gatt_complete_func_t func,
          void *user_data);
# 1270 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
static inline int bt_gatt_write_without_response(struct bt_conn *conn,
       u16_t handle, const void *data,
       u16_t length, 
# 1272 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
                    _Bool 
# 1272 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
                         sign)
{
 return bt_gatt_write_without_response_cb(conn, handle, data, length,
       sign, 
# 1275 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
            ((void *)0)
# 1275 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
                , 
# 1275 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h" 3 4
                  ((void *)0)
# 1275 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
                      );
}

struct bt_gatt_subscribe_params;
# 1289 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
typedef u8_t (*bt_gatt_notify_func_t)(struct bt_conn *conn,
          struct bt_gatt_subscribe_params *params,
          const void *data, u16_t length);


enum {
# 1304 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
 BT_GATT_SUBSCRIBE_FLAG_VOLATILE,






 BT_GATT_SUBSCRIBE_FLAG_WRITE_PENDING,

 BT_GATT_SUBSCRIBE_NUM_FLAGS
};


struct bt_gatt_subscribe_params {
 struct bt_att_req _req;
 bt_addr_le_t _peer;

 bt_gatt_notify_func_t notify;

 u16_t value_handle;

 u16_t ccc_handle;

 u16_t value;

 atomic_t flags[1 + ((BT_GATT_SUBSCRIBE_NUM_FLAGS) - 1) / (sizeof(atomic_val_t) * 8)];

 sys_snode_t node;
};
# 1351 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_subscribe(struct bt_conn *conn,
        struct bt_gatt_subscribe_params *params);
# 1366 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatt_unsubscribe(struct bt_conn *conn,
   struct bt_gatt_subscribe_params *params);






void bt_gatt_cancel(struct bt_conn *conn, void *params);


typedef void (*bt_gatt_mtu_changed_cb_t)(struct bt_conn *conn, int mtu);
void bt_gatt_register_mtu_callback(bt_gatt_mtu_changed_cb_t cb);



typedef void(*bt_notification_all_cb_t)(struct bt_conn *conn, u16_t handle,const void *data, u16_t length);
void bt_gatt_register_notification_callback(bt_notification_all_cb_t cb);
# 1392 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
void bt_gatt_ccc_load(void);



struct simple_svc_info{

    uint16_t idx;

    uint8_t state;

    uint8_t type;

    char uuid[37];
};

struct char_info{

    uint16_t svc_idx;

    uint16_t char_idx;

    char uuid[37];

    uint8_t prop;
};

struct descrip_info{

    uint16_t svc_idx;

    uint16_t char_idx;

    uint16_t desp_idx;

    char uuid[37];
};

struct add_gatts_attr{
    struct bt_gatt_attr *attr;
    sys_snode_t node;
};

struct customer_svc_list{
    struct bt_gatt_service *svc;
    uint16_t svc_idx;
    sys_snode_t node;
};
# 1447 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
int bt_gatts_add_serv_attr(const struct bt_uuid *uuid, uint8_t is_primary,uint32_t number_attrs);






int bt_gatts_add_char(const struct bt_gatt_attr *char_attr,uint32_t val_prop);





int bt_gatts_add_desc(const struct bt_gatt_attr *desp_attr);






int bt_gatts_get_service_simple_info(uint16_t svc_id,struct simple_svc_info *info,uint16_t info_num);






int bt_gatts_get_service_char(uint16_t svc_id,struct char_info *info,uint16_t char_num);






int bt_gatts_get_service_desc(uint16_t svc_id,struct descrip_info *info,uint16_t desp_num);



uint16_t bt_gatts_add_service(void);





int bt_gatts_del_service(uint16_t svc_id);
# 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/gatt_internal.h" 2
# 27 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/gatt_internal.h"
void bt_gatt_init(void);

void bt_gatt_deinit(void);

void bt_gatt_connected(struct bt_conn *conn);
void bt_gatt_encrypt_change(struct bt_conn *conn);
void bt_gatt_disconnected(struct bt_conn *conn);


# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/gatt_internal.h" 3 4
_Bool 
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/gatt_internal.h"
    bt_gatt_change_aware(struct bt_conn *conn, 
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/gatt_internal.h" 3 4
                                               _Bool 
# 35 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/gatt_internal.h"
                                                    req);

int bt_gatt_store_ccc(u8_t id, const bt_addr_le_t *addr);

int bt_gatt_clear(u8_t id, const bt_addr_le_t *addr);


void bt_gatt_mtu_changed(struct bt_conn *conn, u16_t mtu);




void bt_gatt_notification(struct bt_conn *conn, u16_t handle,
     const void *data, u16_t length);







struct bt_gatt_attr;


u8_t bt_gatt_check_perm(struct bt_conn *conn, const struct bt_gatt_attr *attr,
   u8_t mask);
# 42 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 1
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
struct bt_smp_hdr {
 u8_t code;
} 
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;
# 60 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
struct bt_smp_pairing {
 u8_t io_capability;
 u8_t oob_flag;
 u8_t auth_req;
 u8_t max_key_size;
 u8_t init_key_dist;
 u8_t resp_key_dist;
} 
# 67 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 67 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_pairing_confirm {
 u8_t val[16];
} 
# 72 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 72 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_pairing_random {
 u8_t val[16];
} 
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 77 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_pairing_fail {
 u8_t reason;
} 
# 82 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 82 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_encrypt_info {
 u8_t ltk[16];
} 
# 87 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 87 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_master_ident {
 u8_t ediv[2];
 u8_t rand[8];
} 
# 93 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 93 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_ident_info {
 u8_t irk[16];
} 
# 98 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 98 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_ident_addr_info {
 bt_addr_le_t addr;
} 
# 103 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 103 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_signing_info {
 u8_t csrk[16];
} 
# 108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 108 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_security_request {
 u8_t auth_req;
} 
# 113 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 113 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_public_key {
 u8_t x[32];
 u8_t y[32];
} 
# 119 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 119 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_dhkey_check {
 u8_t e[16];
} 
# 124 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 124 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
         ;

int bt_smp_start_security(struct bt_conn *conn);

# 127 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h" 3 4
_Bool 
# 127 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
    bt_smp_request_ltk(struct bt_conn *conn, u64_t rand, u16_t ediv,
   u8_t *ltk);

void bt_smp_update_keys(struct bt_conn *conn);

int bt_smp_br_send_pairing_req(struct bt_conn *conn);

int bt_smp_init(void);

int bt_smp_auth_passkey_entry(struct bt_conn *conn, unsigned int passkey);
int bt_smp_auth_passkey_confirm(struct bt_conn *conn);
int bt_smp_auth_pairing_confirm(struct bt_conn *conn);
int bt_smp_auth_cancel(struct bt_conn *conn);

int bt_smp_le_oob_generate_sc_data(struct bt_le_oob_sc_data *le_sc_oob);
int bt_smp_le_oob_set_sc_data(struct bt_conn *conn,
         const struct bt_le_oob_sc_data *oobd_local,
         const struct bt_le_oob_sc_data *oobd_remote);
int bt_smp_le_oob_get_sc_data(struct bt_conn *conn,
         const struct bt_le_oob_sc_data **oobd_local,
         const struct bt_le_oob_sc_data **oobd_remote);
# 156 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
int bt_smp_sign_verify(struct bt_conn *conn, struct net_buf *buf);
# 165 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
int bt_smp_sign(struct bt_conn *conn, struct net_buf *buf);
# 186 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/smp.h"
void smp_set_auth(u8_t auth);
# 43 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/crypto.h" 1







int prng_init(void);
# 44 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/../include/bluetooth/crypto.h" 1
# 38 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/../include/bluetooth/crypto.h"
int bt_rand(void *buf, size_t len);
# 52 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/../include/bluetooth/crypto.h"
int bt_encrypt_le(const u8_t key[16], const u8_t plaintext[16],
    u8_t enc_data[16]);
# 67 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/../include/bluetooth/crypto.h"
int bt_encrypt_be(const u8_t key[16], const u8_t plaintext[16],
    u8_t enc_data[16]);
# 45 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/settings.h" 1
# 18 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/settings.h"
void bt_settings_encode_key(char *path, size_t path_size, const char *subsys,
       bt_addr_le_t *addr, const char *key);
int bt_settings_decode_key(const char *key, bt_addr_le_t *addr);

void bt_settings_save_id(void);

int bt_settings_init(void);
# 33 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/settings.h"
int bt_settings_get_bin(const char *key, u8_t *value, size_t exp_len, size_t *real_len);
int bt_settings_set_bin(const char *key, const u8_t *value, size_t length);
int settings_delete(const char *key);
int settings_save_one(const char *key, const u8_t *value, size_t length);
void bt_settings_save_name(void);
void bt_local_info_load(void);
# 46 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/bl_hci_wrapper/bl_hci_wrapper.h" 1






struct rx_msg_struct{
    uint8_t pkt_type;
    uint16_t src_id;
    uint8_t *param;
    uint8_t param_len;
}
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/bl_hci_wrapper/bl_hci_wrapper.h" 3
__attribute__((__packed__))
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/bl_hci_wrapper/bl_hci_wrapper.h"
        ;

typedef enum {
  DATA_TYPE_COMMAND = 1,
  DATA_TYPE_ACL = 2,
  DATA_TYPE_SCO = 3,
  DATA_TYPE_EVENT = 4
} serial_data_type_t;

uint8_t bl_onchiphci_interface_init(void);
void bl_onchiphci_interface_deinit(void);
void bl_trigger_queued_msg(void);
int bl_onchiphci_send_2_controller(struct net_buf *buf);
# 48 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blecontroller/ble_inc/ble_lib_api.h" 1






void ble_controller_init(uint8_t task_priority);
void ble_controller_deinit(void);




void ble_controller_reset(void);

char * ble_controller_get_lib_ver(void);



int8_t ble_controller_set_scan_filter_table_size(uint8_t size);




int32_t ble_controller_sleep(int32_t max_sleep_cycles);
void ble_controller_sleep_restore(void);

# 26 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blecontroller/ble_inc/ble_lib_api.h" 3 4
_Bool 
# 26 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blecontroller/ble_inc/ble_lib_api.h"
    ble_controller_sleep_is_ongoing(void);
void ble_controller_set_tx_pwr(int ble_tx_power);
void ble_rf_set_tx_channel(uint16_t tx_channel);
void ble_controller_disable_adv_random_delay(
# 29 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blecontroller/ble_inc/ble_lib_api.h" 3 4
                                            _Bool 
# 29 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blecontroller/ble_inc/ble_lib_api.h"
                                                 disable);
# 49 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 1
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/hbn_reg.h" 1
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/hbn_reg.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 65 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum {
# 79 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
    MSOFT_IRQn = 3,
    MTIME_IRQn = 7,
    MEXT_IRQn = 11,
    CLIC_SOFT_PEND_IRQn = 12,


    BMX_ERR_IRQn = 16 + 0,
    BMX_TO_IRQn = 16 + 1,
    L1C_BMX_ERR_IRQn = 16 + 2,
    L1C_BMX_TO_IRQn = 16 + 3,
    SEC_BMX_ERR_IRQn = 16 + 4,
    RF_TOP_INT0_IRQn = 16 + 5,
    RF_TOP_INT1_IRQn = 16 + 6,
    SDIO_IRQn = 16 + 7,
    DMA_BMX_ERR_IRQn = 16 + 8,
    SEC_GMAC_IRQn = 16 + 9,
    SEC_CDET_IRQn = 16 + 10,
    SEC_PKA_IRQn = 16 + 11,
    SEC_TRNG_IRQn = 16 + 12,
    SEC_AES_IRQn = 16 + 13,
    SEC_SHA_IRQn = 16 + 14,
    DMA_ALL_IRQn = 16 + 15,
    RESERVED0 = 16 + 16,
    RESERVED1 = 16 + 17,
    RESERVED2 = 16 + 18,
    IRTX_IRQn = 16 + 19,
    IRRX_IRQn = 16 + 20,
    RESERVED3 = 16 + 21,
    RESERVED4 = 16 + 22,
    SF_CTRL_IRQn = 16 + 23,
    RESERVED5 = 16 + 24,
    GPADC_DMA_IRQn = 16 + 25,
    EFUSE_IRQn = 16 + 26,
    SPI_IRQn = 16 + 27,
    RESERVED6 = 16 + 28,
    UART0_IRQn = 16 + 29,
    UART1_IRQn = 16 + 30,
    RESERVED7 = 16 + 31,
    I2C_IRQn = 16 + 32,
    RESERVED8 = 16 + 33,
    PWM_IRQn = 16 + 34,
    RESERVED9 = 16 + 35,
    TIMER_CH0_IRQn = 16 + 36,
    TIMER_CH1_IRQn = 16 + 37,
    TIMER_WDT_IRQn = 16 + 38,
    RESERVED10 = 16 + 39,
    RESERVED11 = 16 + 40,
    RESERVED12 = 16 + 41,
    RESERVED13 = 16 + 42,
    RESERVED14 = 16 + 43,
    GPIO_INT0_IRQn = 16 + 44,
    RESERVED16 = 16 + 45,
    RESERVED17 = 16 + 46,
    RESERVED18 = 16 + 47,
    RESERVED19 = 16 + 48,
    RESERVED20 = 16 + 49,
    PDS_WAKEUP_IRQn = 16 + 50,
    HBN_OUT0_IRQn = 16 + 51,
    HBN_OUT1_IRQn = 16 + 52,
    BOR_IRQn = 16 + 53,
    WIFI_IRQn = 16 + 54,
    BZ_PHY_IRQn = 16 + 55,
    BLE_IRQn = 16 + 56,
    MAC_TXRX_TIMER_IRQn = 16 + 57,
    MAC_TXRX_MISC_IRQn = 16 + 58,
    MAC_RX_TRG_IRQn = 16 + 59,
    MAC_TX_TRG_IRQn = 16 + 60,
    MAC_GEN_IRQn = 16 + 61,
    MAC_PORT_TRG_IRQn = 16 + 62,
    WIFI_IPC_PUBLIC_IRQn = 16 + 63,
    IRQn_LAST,
} IRQn_Type;
# 211 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum {
    BL_AHB_SLAVE1_GLB = 0x00,
    BL_AHB_SLAVE1_RF = 0x01,
    BL_AHB_SLAVE1_GPIP_PHY_AGC = 0x02,
    BL_AHB_SLAVE1_SEC_DBG = 0x03,
    BL_AHB_SLAVE1_SEC = 0x04,
    BL_AHB_SLAVE1_TZ1 = 0x05,
    BL_AHB_SLAVE1_TZ2 = 0x06,
    BL_AHB_SLAVE1_EFUSE = 0x07,
    BL_AHB_SLAVE1_CCI = 0x08,
    BL_AHB_SLAVE1_L1C = 0x09,
    BL_AHB_SLAVE1_RSVD0A = 0x0A,
    BL_AHB_SLAVE1_SFC = 0x0B,
    BL_AHB_SLAVE1_DMA = 0x0C,
    BL_AHB_SLAVE1_SDU = 0x0D,
    BL_AHB_SLAVE1_PDS_HBN_AON_HBNRAM = 0x0E,
    BL_AHB_SLAVE1_RSVD0F = 0x0F,
    BL_AHB_SLAVE1_UART0 = 0x10,
    BL_AHB_SLAVE1_UART1 = 0x11,
    BL_AHB_SLAVE1_SPI = 0x12,
    BL_AHB_SLAVE1_I2C = 0x13,
    BL_AHB_SLAVE1_PWM = 0x14,
    BL_AHB_SLAVE1_TMR = 0x15,
    BL_AHB_SLAVE1_IRR = 0x16,
    BL_AHB_SLAVE1_CKS = 0x17,
    BL_AHB_SLAVE1_MAX = 0x18,
} BL_AHB_Slave1_Type;

typedef enum {
    BL_AHB_SEC_ENG_AES0 = 0,
    BL_AHB_SEC_ENG_AES1,
    BL_AHB_SEC_ENG_SHA0,
    BL_AHB_SEC_ENG_SHA1,
} BL_AHB_Sec_Eng_Type;

typedef enum {
    BL_AHB_DMA0_CH0 = 0,
    BL_AHB_DMA0_CH1,
    BL_AHB_DMA0_CH2,
    BL_AHB_DMA0_CH3,
    BL_AHB_DMA0_CH4,
} BL_AHB_DMA0_CHNL_Type;

typedef enum {
    BL_CORE_MASTER_IBUS_CPU = 0,
    BL_CORE_MASTER_DBUS_CPU,
    BL_CORE_MASTER_BUS_S2F,
    BL_CORE_MASTER_MAX,
} BL_Core_Master_Type;

typedef enum {
    BL_CORE_SLAVE0_DTCM_CPU = 0,
    BL_CORE_SLAVE0_MAX,
} BL_Core_Slave0_Type;

typedef enum {
    BL_CORE_SLAVE1_XIP_CPU = 0,
    BL_CORE_SLAVE1_ITCM_CPU,
    BL_CORE_SLAVE1_ROM,
    BL_CORE_SLAVE1_MAX,
} BL_Core_Slave1_Type;

typedef enum {
    BL_CORE_SLAVE2_F2S = 0,
    BL_CORE_SLAVE2_MAX,
} BL_Core_Slave2_Type;





# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h" 1







extern uint32_t SystemCoreClock;

extern void SystemCoreClockUpdate (void);
extern void SystemInit (void);
extern void System_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
extern void Systick_Stop(void);
extern void Systick_Start(void);
# 283 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 295 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
# 87 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("csrsi mstatus, 8");
}

__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("csrci mstatus, 8");
}

__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

    uint32_t res = 0;

    res = (value << 24) | (value >> 24);
    res &= 0xFF0000FF;
    res |= ((value >> 8) & 0x0000FF00) | ((value << 8) & 0x00FF0000);

    return res;
}

__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  return __builtin_bswap16(value);
}

extern void clic_enable_interrupt (uint32_t source);
extern void clic_disable_interrupt ( uint32_t source);
extern void clic_set_pending(uint32_t source);
extern void clic_clear_pending(uint32_t source);
# 296 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/clic.h" 1
# 297 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/riscv_encoding.h" 1
# 298 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/hbn_reg.h" 2
# 491 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/hbn_reg.h"
struct hbn_reg {

    union {
        struct
        {
            uint32_t rtc_ctl : 7;
            uint32_t hbn_mode : 1;
            uint32_t trap_mode : 1;
            uint32_t pwrdn_hbn_core : 1;
            uint32_t reserved_10 : 1;
            uint32_t pwrdn_hbn_rtc : 1;
            uint32_t sw_rst : 1;
            uint32_t hbn_dis_pwr_off_ldo11 : 1;
            uint32_t hbn_dis_pwr_off_ldo11_rt : 1;
            uint32_t hbn_ldo11_rt_vout_sel : 4;
            uint32_t hbn_ldo11_aon_vout_sel : 4;
            uint32_t pu_dcdc18_aon : 1;
            uint32_t rtc_dly_option : 1;
            uint32_t pwr_on_option : 1;
            uint32_t sram_slp_option : 1;
            uint32_t sram_slp : 1;
            uint32_t hbn_state : 4;
        } BF;
        uint32_t WORD;
    } HBN_CTL;


    union {
        struct
        {
            uint32_t hbn_time_l : 32;
        } BF;
        uint32_t WORD;
    } HBN_TIME_L;


    union {
        struct
        {
            uint32_t hbn_time_h : 8;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } HBN_TIME_H;


    union {
        struct
        {
            uint32_t rtc_time_latch_l : 32;
        } BF;
        uint32_t WORD;
    } RTC_TIME_L;


    union {
        struct
        {
            uint32_t rtc_time_latch_h : 8;
            uint32_t reserved_8_30 : 23;
            uint32_t rtc_time_latch : 1;
        } BF;
        uint32_t WORD;
    } RTC_TIME_H;


    union {
        struct
        {
            uint32_t hbn_pin_wakeup_mode : 3;
            uint32_t hbn_pin_wakeup_mask : 2;
            uint32_t reserved_5_7 : 3;
            uint32_t reg_aon_pad_ie_smt : 1;
            uint32_t reserved_9_15 : 7;
            uint32_t reg_en_hw_pu_pd : 1;
            uint32_t reserved_17 : 1;
            uint32_t irq_bor_en : 1;
            uint32_t reserved_19 : 1;
            uint32_t irq_acomp0_en : 2;
            uint32_t irq_acomp1_en : 2;
            uint32_t pin_wakeup_sel : 3;
            uint32_t pin_wakeup_en : 1;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } HBN_IRQ_MODE;


    union {
        struct
        {
            uint32_t irq_stat : 32;
        } BF;
        uint32_t WORD;
    } HBN_IRQ_STAT;


    union {
        struct
        {
            uint32_t irq_clr : 32;
        } BF;
        uint32_t WORD;
    } HBN_IRQ_CLR;


    union {
        struct
        {
            uint32_t pir_hpf_sel : 2;
            uint32_t pir_lpf_sel : 1;
            uint32_t reserved_3 : 1;
            uint32_t pir_dis : 2;
            uint32_t reserved_6 : 1;
            uint32_t pir_en : 1;
            uint32_t gpadc_cgen : 1;
            uint32_t gpadc_nosync : 1;
            uint32_t reserved_10_31 : 22;
        } BF;
        uint32_t WORD;
    } HBN_PIR_CFG;


    union {
        struct
        {
            uint32_t pir_vth : 14;
            uint32_t reserved_14_31 : 18;
        } BF;
        uint32_t WORD;
    } HBN_PIR_VTH;


    union {
        struct
        {
            uint32_t pir_interval : 12;
            uint32_t reserved_12_31 : 20;
        } BF;
        uint32_t WORD;
    } HBN_PIR_INTERVAL;


    union {
        struct
        {
            uint32_t bor_sel : 1;
            uint32_t bor_vth : 1;
            uint32_t pu_bor : 1;
            uint32_t r_bor_out : 1;
            uint32_t reserved_4_31 : 28;
        } BF;
        uint32_t WORD;
    } HBN_BOR_CFG;


    union {
        struct
        {
            uint32_t hbn_root_clk_sel : 2;
            uint32_t hbn_uart_clk_sel : 1;
            uint32_t hbn_f32k_sel : 2;
            uint32_t hbn_pu_rc32k : 1;
            uint32_t reserved_6_15 : 10;
            uint32_t sw_ldo11soc_vout_sel_aon : 4;
            uint32_t reserved_20_23 : 4;
            uint32_t sw_ldo11_rt_vout_sel : 4;
            uint32_t sw_ldo11_aon_vout_sel : 4;
        } BF;
        uint32_t WORD;
    } HBN_GLB;


    union {
        struct
        {
            uint32_t reserved_0_5 : 6;
            uint32_t retram_ret : 1;
            uint32_t retram_slp : 1;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } HBN_SRAM;


    uint8_t RESERVED0x38[200];


    union {
        struct
        {
            uint32_t HBN_RSV0 : 32;
        } BF;
        uint32_t WORD;
    } HBN_RSV0;


    union {
        struct
        {
            uint32_t HBN_RSV1 : 32;
        } BF;
        uint32_t WORD;
    } HBN_RSV1;


    union {
        struct
        {
            uint32_t HBN_RSV2 : 32;
        } BF;
        uint32_t WORD;
    } HBN_RSV2;


    union {
        struct
        {
            uint32_t HBN_RSV3 : 32;
        } BF;
        uint32_t WORD;
    } HBN_RSV3;


    uint8_t RESERVED0x110[240];


    union {
        struct
        {
            uint32_t rc32k_cal_done : 1;
            uint32_t rc32k_rdy : 1;
            uint32_t rc32k_cal_inprogress : 1;
            uint32_t rc32k_cal_div : 2;
            uint32_t rc32k_cal_precharge : 1;
            uint32_t rc32k_dig_code_fr_cal : 10;
            uint32_t rc32k_vref_dly : 2;
            uint32_t rc32k_allow_cal : 1;
            uint32_t rc32k_ext_code_en : 1;
            uint32_t rc32k_cal_en : 1;
            uint32_t reserved_21 : 1;
            uint32_t rc32k_code_fr_ext : 10;
        } BF;
        uint32_t WORD;
    } rc32k_ctrl0;


    union {
        struct
        {
            uint32_t reserved_0_1 : 2;
            uint32_t xtal32k_ext_sel : 1;
            uint32_t xtal32k_amp_ctrl : 2;
            uint32_t xtal32k_reg : 2;
            uint32_t xtal32k_outbuf_stre : 1;
            uint32_t xtal32k_otf_short : 1;
            uint32_t xtal32k_inv_stre : 2;
            uint32_t xtal32k_capbank : 6;
            uint32_t xtal32k_ac_cap_short : 1;
            uint32_t pu_xtal32k_buf : 1;
            uint32_t pu_xtal32k : 1;
            uint32_t reserved_20_31 : 12;
        } BF;
        uint32_t WORD;
    } xtal32k;
};

typedef volatile struct hbn_reg hbn_reg_t;
# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h" 1
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/aon_reg.h" 1
# 1075 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/aon_reg.h"
struct aon_reg {

    uint8_t RESERVED0x0[2048];


    union {
        struct
        {
            uint32_t aon_resv : 8;
            uint32_t reserved_8_11 : 4;
            uint32_t pu_aon_dc_tbuf : 1;
            uint32_t reserved_13_19 : 7;
            uint32_t ldo11_rt_pulldown : 1;
            uint32_t ldo11_rt_pulldown_sel : 1;
            uint32_t sw_pu_ldo11_rt : 1;
            uint32_t reserved_23_31 : 9;
        } BF;
        uint32_t WORD;
    } aon;


    union {
        struct
        {
            uint32_t tmux_aon : 3;
            uint32_t reserved_3 : 1;
            uint32_t ten_aon : 1;
            uint32_t dten_xtal32k : 1;
            uint32_t ten_xtal32k : 1;
            uint32_t reserved_7 : 1;
            uint32_t ten_vddcore_aon : 1;
            uint32_t ten_ldo11soc_aon : 1;
            uint32_t ten_dcdc18_0_aon : 1;
            uint32_t ten_dcdc18_1_aon : 1;
            uint32_t ten_bg_sys_aon : 1;
            uint32_t reserved_13_15 : 3;
            uint32_t ten_ldo15rf_aon : 1;
            uint32_t ten_xtal_aon : 1;
            uint32_t dten_xtal_aon : 1;
            uint32_t ten_mbg_aon : 1;
            uint32_t ten_cip_misc_aon : 1;
            uint32_t reserved_21_31 : 11;
        } BF;
        uint32_t WORD;
    } aon_common;


    union {
        struct
        {
            uint32_t sw_soc_en_aon : 1;
            uint32_t sw_wb_en_aon : 1;
            uint32_t reserved_2_31 : 30;
        } BF;
        uint32_t WORD;
    } aon_misc;


    uint8_t RESERVED0x80c[4];


    union {
        struct
        {
            uint32_t pmip_resv : 8;
            uint32_t pu_bg_sys_aon : 1;
            uint32_t reserved_9_11 : 3;
            uint32_t bg_sys_start_ctrl_aon : 1;
            uint32_t reserved_13_31 : 19;
        } BF;
        uint32_t WORD;
    } bg_sys_top;


    union {
        struct
        {
            uint32_t reserved_0 : 1;
            uint32_t dcdc18_vout_sel_aon : 5;
            uint32_t reserved_6_7 : 2;
            uint32_t dcdc18_vpfm_aon : 4;
            uint32_t dcdc18_osc_2m_mode_aon : 1;
            uint32_t reserved_13_15 : 3;
            uint32_t dcdc18_osc_freq_trim_aon : 4;
            uint32_t dcdc18_slope_curr_sel_aon : 5;
            uint32_t dcdc18_stop_osc_aon : 1;
            uint32_t dcdc18_slow_osc_aon : 1;
            uint32_t dcdc18_osc_inhibit_t2_aon : 1;
            uint32_t dcdc18_sstart_time_aon : 2;
            uint32_t reserved_30 : 1;
            uint32_t dcdc18_rdy_aon : 1;
        } BF;
        uint32_t WORD;
    } dcdc18_top_0;


    union {
        struct
        {
            uint32_t dcdc18_force_cs_zvs_aon : 1;
            uint32_t dcdc18_cs_delay_aon : 3;
            uint32_t dcdc18_zvs_td_opt_aon : 3;
            uint32_t reserved_7 : 1;
            uint32_t dcdc18_nonoverlap_td_aon : 5;
            uint32_t reserved_13_15 : 3;
            uint32_t dcdc18_rc_sel_aon : 4;
            uint32_t dcdc18_chf_sel_aon : 4;
            uint32_t dcdc18_cfb_sel_aon : 4;
            uint32_t dcdc18_en_antiring_aon : 1;
            uint32_t dcdc18_pulldown_aon : 1;
            uint32_t reserved_30_31 : 2;
        } BF;
        uint32_t WORD;
    } dcdc18_top_1;


    union {
        struct
        {
            uint32_t pu_ldo11soc_aon : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t ldo11soc_sstart_sel_aon : 1;
            uint32_t reserved_5_7 : 3;
            uint32_t ldo11soc_sstart_delay_aon : 2;
            uint32_t ldo11soc_pulldown_aon : 1;
            uint32_t ldo11soc_pulldown_sel_aon : 1;
            uint32_t ldo11soc_vth_sel_aon : 2;
            uint32_t reserved_14_23 : 10;
            uint32_t ldo11soc_cc_aon : 2;
            uint32_t reserved_26_27 : 2;
            uint32_t ldo11soc_rdy_aon : 1;
            uint32_t ldo11soc_power_good_aon : 1;
            uint32_t pu_vddcore_misc_aon : 1;
            uint32_t pmip_dc_tp_out_en_aon : 1;
        } BF;
        uint32_t WORD;
    } ldo11soc_and_dctest;


    union {
        struct
        {
            uint32_t pu_ir_psw_aon : 1;
            uint32_t reserved_1_31 : 31;
        } BF;
        uint32_t WORD;
    } psw_irrcv;


    uint8_t RESERVED0x824[92];


    union {
        struct
        {
            uint32_t pu_mbg_aon : 1;
            uint32_t pu_ldo15rf_aon : 1;
            uint32_t pu_sfreg_aon : 1;
            uint32_t reserved_3 : 1;
            uint32_t pu_xtal_buf_aon : 1;
            uint32_t pu_xtal_aon : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t ldo15rf_sstart_sel_aon : 1;
            uint32_t ldo15rf_sstart_delay_aon : 2;
            uint32_t reserved_11 : 1;
            uint32_t ldo15rf_pulldown_aon : 1;
            uint32_t ldo15rf_pulldown_sel_aon : 1;
            uint32_t reserved_14_15 : 2;
            uint32_t ldo15rf_vout_sel_aon : 3;
            uint32_t reserved_19_23 : 5;
            uint32_t ldo15rf_cc_aon : 2;
            uint32_t reserved_26_27 : 2;
            uint32_t ldo15rf_bypass_aon : 1;
            uint32_t reserved_29_31 : 3;
        } BF;
        uint32_t WORD;
    } rf_top_aon;


    union {
        struct
        {
            uint32_t xtal_bk_aon : 2;
            uint32_t xtal_capcode_extra_aon : 1;
            uint32_t xtal_ext_sel_aon : 1;
            uint32_t xtal_buf_en_aon : 4;
            uint32_t xtal_buf_hp_aon : 4;
            uint32_t xtal_fast_startup_aon : 1;
            uint32_t xtal_sleep_aon : 1;
            uint32_t xtal_amp_ctrl_aon : 2;
            uint32_t xtal_capcode_out_aon : 6;
            uint32_t xtal_capcode_in_aon : 6;
            uint32_t xtal_gm_boost_aon : 2;
            uint32_t xtal_rdy_sel_aon : 2;
        } BF;
        uint32_t WORD;
    } xtal_cfg;


    union {
        struct
        {
            uint32_t tsen_refcode_corner : 12;
            uint32_t reserved_12_15 : 4;
            uint32_t tsen_refcode_rfcal : 12;
            uint32_t xtal_rdy : 1;
            uint32_t xtal_inn_cfg_en_aon : 1;
            uint32_t xtal_rdy_int_sel_aon : 2;
        } BF;
        uint32_t WORD;
    } tsen;


    uint8_t RESERVED0x88c[116];


    union {
        struct
        {
            uint32_t acomp0_en : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t acomp0_hyst_seln : 3;
            uint32_t acomp0_hyst_selp : 3;
            uint32_t acomp0_bias_prog : 2;
            uint32_t acomp0_level_sel : 6;
            uint32_t acomp0_neg_sel : 4;
            uint32_t acomp0_pos_sel : 4;
            uint32_t acomp0_muxen : 1;
            uint32_t reserved_27_31 : 5;
        } BF;
        uint32_t WORD;
    } acomp0_ctrl;


    union {
        struct
        {
            uint32_t acomp1_en : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t acomp1_hyst_seln : 3;
            uint32_t acomp1_hyst_selp : 3;
            uint32_t acomp1_bias_prog : 2;
            uint32_t acomp1_level_sel : 6;
            uint32_t acomp1_neg_sel : 4;
            uint32_t acomp1_pos_sel : 4;
            uint32_t acomp1_muxen : 1;
            uint32_t reserved_27_31 : 5;
        } BF;
        uint32_t WORD;
    } acomp1_ctrl;


    union {
        struct
        {
            uint32_t acomp1_rstn_ana : 1;
            uint32_t acomp0_rstn_ana : 1;
            uint32_t reserved_2_7 : 6;
            uint32_t acomp1_test_en : 1;
            uint32_t acomp0_test_en : 1;
            uint32_t acomp1_test_sel : 2;
            uint32_t acomp0_test_sel : 2;
            uint32_t reserved_14_16 : 3;
            uint32_t acomp1_out_raw : 1;
            uint32_t reserved_18 : 1;
            uint32_t acomp0_out_raw : 1;
            uint32_t reserved_20_23 : 4;
            uint32_t acomp_reserved : 8;
        } BF;
        uint32_t WORD;
    } acomp_ctrl;


    union {
        struct
        {
            uint32_t gpadc_global_en : 1;
            uint32_t gpadc_conv_start : 1;
            uint32_t gpadc_soft_rst : 1;
            uint32_t gpadc_neg_sel : 5;
            uint32_t gpadc_pos_sel : 5;
            uint32_t gpadc_neg_gnd : 1;
            uint32_t gpadc_micbias_en : 1;
            uint32_t gpadc_micpga_en : 1;
            uint32_t gpadc_byp_micboost : 1;
            uint32_t reserved_17 : 1;
            uint32_t gpadc_dwa_en : 1;
            uint32_t gpadc_mic2_diff : 1;
            uint32_t gpadc_mic1_diff : 1;
            uint32_t gpadc_mic_pga2_gain : 2;
            uint32_t gpadc_micboost_32db_en : 1;
            uint32_t reserved_24_26 : 3;
            uint32_t gpadc_chip_sen_pu : 1;
            uint32_t gpadc_sen_sel : 2;
            uint32_t gpadc_sen_test_en : 1;
            uint32_t reserved_31 : 1;
        } BF;
        uint32_t WORD;
    } gpadc_reg_cmd;


    union {
        struct
        {
            uint32_t gpadc_cal_os_en : 1;
            uint32_t gpadc_cont_conv_en : 1;
            uint32_t gpadc_res_sel : 3;
            uint32_t reserved_5_16 : 12;
            uint32_t gpadc_clk_ana_inv : 1;
            uint32_t gpadc_clk_div_ratio : 3;
            uint32_t gpadc_scan_length : 4;
            uint32_t gpadc_scan_en : 1;
            uint32_t gpadc_dither_en : 1;
            uint32_t gpadc_v11_sel : 2;
            uint32_t gpadc_v18_sel : 2;
            uint32_t reserved_31 : 1;
        } BF;
        uint32_t WORD;
    } gpadc_reg_config1;


    union {
        struct
        {
            uint32_t reserved_0_1 : 2;
            uint32_t gpadc_diff_mode : 1;
            uint32_t gpadc_vref_sel : 1;
            uint32_t gpadc_vbat_en : 1;
            uint32_t gpadc_tsext_sel : 1;
            uint32_t gpadc_ts_en : 1;
            uint32_t gpadc_pga_vcm : 2;
            uint32_t gpadc_pga_os_cal : 4;
            uint32_t gpadc_pga_en : 1;
            uint32_t gpadc_pga_vcmi_en : 1;
            uint32_t gpadc_chop_mode : 2;
            uint32_t gpadc_bias_sel : 1;
            uint32_t gpadc_test_en : 1;
            uint32_t gpadc_test_sel : 3;
            uint32_t gpadc_pga2_gain : 3;
            uint32_t gpadc_pga1_gain : 3;
            uint32_t gpadc_dly_sel : 3;
            uint32_t gpadc_tsvbe_low : 1;
        } BF;
        uint32_t WORD;
    } gpadc_reg_config2;


    union {
        struct
        {
            uint32_t gpadc_scan_pos_0 : 5;
            uint32_t gpadc_scan_pos_1 : 5;
            uint32_t gpadc_scan_pos_2 : 5;
            uint32_t gpadc_scan_pos_3 : 5;
            uint32_t gpadc_scan_pos_4 : 5;
            uint32_t gpadc_scan_pos_5 : 5;
            uint32_t reserved_30_31 : 2;
        } BF;
        uint32_t WORD;
    } gpadc_reg_scn_pos1;


    union {
        struct
        {
            uint32_t gpadc_scan_pos_6 : 5;
            uint32_t gpadc_scan_pos_7 : 5;
            uint32_t gpadc_scan_pos_8 : 5;
            uint32_t gpadc_scan_pos_9 : 5;
            uint32_t gpadc_scan_pos_10 : 5;
            uint32_t gpadc_scan_pos_11 : 5;
            uint32_t reserved_30_31 : 2;
        } BF;
        uint32_t WORD;
    } gpadc_reg_scn_pos2;


    union {
        struct
        {
            uint32_t gpadc_scan_neg_0 : 5;
            uint32_t gpadc_scan_neg_1 : 5;
            uint32_t gpadc_scan_neg_2 : 5;
            uint32_t gpadc_scan_neg_3 : 5;
            uint32_t gpadc_scan_neg_4 : 5;
            uint32_t gpadc_scan_neg_5 : 5;
            uint32_t reserved_30_31 : 2;
        } BF;
        uint32_t WORD;
    } gpadc_reg_scn_neg1;


    union {
        struct
        {
            uint32_t gpadc_scan_neg_6 : 5;
            uint32_t gpadc_scan_neg_7 : 5;
            uint32_t gpadc_scan_neg_8 : 5;
            uint32_t gpadc_scan_neg_9 : 5;
            uint32_t gpadc_scan_neg_10 : 5;
            uint32_t gpadc_scan_neg_11 : 5;
            uint32_t reserved_30_31 : 2;
        } BF;
        uint32_t WORD;
    } gpadc_reg_scn_neg2;


    union {
        struct
        {
            uint32_t gpadc_data_rdy : 1;
            uint32_t reserved_1_15 : 15;
            uint32_t gpadc_reserved : 16;
        } BF;
        uint32_t WORD;
    } gpadc_reg_status;


    union {
        struct
        {
            uint32_t gpadc_neg_satur : 1;
            uint32_t gpadc_pos_satur : 1;
            uint32_t reserved_2_3 : 2;
            uint32_t gpadc_neg_satur_clr : 1;
            uint32_t gpadc_pos_satur_clr : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t gpadc_neg_satur_mask : 1;
            uint32_t gpadc_pos_satur_mask : 1;
            uint32_t reserved_10_31 : 22;
        } BF;
        uint32_t WORD;
    } gpadc_reg_isr;


    union {
        struct
        {
            uint32_t gpadc_data_out : 26;
            uint32_t reserved_26_31 : 6;
        } BF;
        uint32_t WORD;
    } gpadc_reg_result;


    union {
        struct
        {
            uint32_t gpadc_raw_data : 12;
            uint32_t reserved_12_31 : 20;
        } BF;
        uint32_t WORD;
    } gpadc_reg_raw_result;


    union {
        struct
        {
            uint32_t gpadc_os_cal_data : 16;
            uint32_t reserved_16_31 : 16;
        } BF;
        uint32_t WORD;
    } gpadc_reg_define;


    union {
        struct
        {
            uint32_t hbncore_resv0_data : 32;
        } BF;
        uint32_t WORD;
    } hbncore_resv0;


    union {
        struct
        {
            uint32_t hbncore_resv1_data : 32;
        } BF;
        uint32_t WORD;
    } hbncore_resv1;
};

typedef volatile struct aon_reg aon_reg_t;
# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/glb_reg.h" 1
# 2745 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/glb_reg.h"
struct glb_reg {

    union {
        struct
        {
            uint32_t reg_pll_en : 1;
            uint32_t reg_fclk_en : 1;
            uint32_t reg_hclk_en : 1;
            uint32_t reg_bclk_en : 1;
            uint32_t reg_pll_sel : 2;
            uint32_t hbn_root_clk_sel : 2;
            uint32_t reg_hclk_div : 8;
            uint32_t reg_bclk_div : 8;
            uint32_t fclk_sw_state : 3;
            uint32_t chip_rdy : 1;
            uint32_t glb_id : 4;
        } BF;
        uint32_t WORD;
    } clk_cfg0;


    union {
        struct
        {
            uint32_t wifi_mac_core_div : 4;
            uint32_t wifi_mac_wt_div : 4;
            uint32_t reserved_8_15 : 8;
            uint32_t ble_clk_sel : 6;
            uint32_t reserved_22_23 : 2;
            uint32_t ble_en : 1;
            uint32_t reserved_25_31 : 7;
        } BF;
        uint32_t WORD;
    } clk_cfg1;


    union {
        struct
        {
            uint32_t uart_clk_div : 3;
            uint32_t reserved_3 : 1;
            uint32_t uart_clk_en : 1;
            uint32_t reserved_5_6 : 2;
            uint32_t hbn_uart_clk_sel : 1;
            uint32_t sf_clk_div : 3;
            uint32_t sf_clk_en : 1;
            uint32_t sf_clk_sel : 2;
            uint32_t sf_clk_sel2 : 2;
            uint32_t ir_clk_div : 6;
            uint32_t reserved_22 : 1;
            uint32_t ir_clk_en : 1;
            uint32_t dma_clk_en : 8;
        } BF;
        uint32_t WORD;
    } clk_cfg2;


    union {
        struct
        {
            uint32_t spi_clk_div : 5;
            uint32_t reserved_5_7 : 3;
            uint32_t spi_clk_en : 1;
            uint32_t reserved_9_15 : 7;
            uint32_t i2c_clk_div : 8;
            uint32_t i2c_clk_en : 1;
            uint32_t reserved_25_31 : 7;
        } BF;
        uint32_t WORD;
    } clk_cfg3;


    union {
        struct
        {
            uint32_t swrst_s00 : 1;
            uint32_t swrst_s01 : 1;
            uint32_t reserved_2_3 : 2;
            uint32_t swrst_s20 : 1;
            uint32_t reserved_5_7 : 3;
            uint32_t swrst_s30 : 1;
            uint32_t reserved_9_31 : 23;
        } BF;
        uint32_t WORD;
    } swrst_cfg0;


    union {
        struct
        {
            uint32_t swrst_s10 : 1;
            uint32_t swrst_s11 : 1;
            uint32_t swrst_s12 : 1;
            uint32_t swrst_s13 : 1;
            uint32_t swrst_s14 : 1;
            uint32_t swrst_s15 : 1;
            uint32_t swrst_s16 : 1;
            uint32_t swrst_s17 : 1;
            uint32_t swrst_s18 : 1;
            uint32_t swrst_s19 : 1;
            uint32_t swrst_s1a : 1;
            uint32_t swrst_s1b : 1;
            uint32_t swrst_s1c : 1;
            uint32_t swrst_s1d : 1;
            uint32_t swrst_s1e : 1;
            uint32_t swrst_s1f : 1;
            uint32_t swrst_s1a0 : 1;
            uint32_t swrst_s1a1 : 1;
            uint32_t swrst_s1a2 : 1;
            uint32_t swrst_s1a3 : 1;
            uint32_t swrst_s1a4 : 1;
            uint32_t swrst_s1a5 : 1;
            uint32_t swrst_s1a6 : 1;
            uint32_t swrst_s1a7 : 1;
            uint32_t reserved_24_31 : 8;
        } BF;
        uint32_t WORD;
    } swrst_cfg1;


    union {
        struct
        {
            uint32_t reg_ctrl_pwron_rst : 1;
            uint32_t reg_ctrl_cpu_reset : 1;
            uint32_t reg_ctrl_sys_reset : 1;
            uint32_t reserved_3 : 1;
            uint32_t reg_ctrl_reset_dummy : 4;
            uint32_t reserved_8_23 : 16;
            uint32_t pka_clk_sel : 1;
            uint32_t reserved_25_31 : 7;
        } BF;
        uint32_t WORD;
    } swrst_cfg2;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } swrst_cfg3;


    union {
        struct
        {
            uint32_t cgen_m : 8;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } cgen_cfg0;


    union {
        struct
        {
            uint32_t cgen_s1 : 16;
            uint32_t cgen_s1a : 8;
            uint32_t reserved_24_31 : 8;
        } BF;
        uint32_t WORD;
    } cgen_cfg1;


    union {
        struct
        {
            uint32_t cgen_s2 : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t cgen_s3 : 1;
            uint32_t reserved_5_31 : 27;
        } BF;
        uint32_t WORD;
    } cgen_cfg2;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } cgen_cfg3;


    union {
        struct
        {
            uint32_t irom_mbist_mode : 1;
            uint32_t hsram_mbist_mode : 1;
            uint32_t tag_mbist_mode : 1;
            uint32_t ocram_mbist_mode : 1;
            uint32_t wifi_mbist_mode : 1;
            uint32_t reserved_5_30 : 26;
            uint32_t reg_mbist_rst_n : 1;
        } BF;
        uint32_t WORD;
    } MBIST_CTL;


    union {
        struct
        {
            uint32_t irom_mbist_done : 1;
            uint32_t hsram_mbist_done : 1;
            uint32_t tag_mbist_done : 1;
            uint32_t ocram_mbist_done : 1;
            uint32_t wifi_mbist_done : 1;
            uint32_t reserved_5_15 : 11;
            uint32_t irom_mbist_fail : 1;
            uint32_t hsram_mbist_fail : 1;
            uint32_t tag_mbist_fail : 1;
            uint32_t ocram_mbist_fail : 1;
            uint32_t wifi_mbist_fail : 1;
            uint32_t reserved_21_31 : 11;
        } BF;
        uint32_t WORD;
    } MBIST_STAT;


    uint8_t RESERVED0x38[24];


    union {
        struct
        {
            uint32_t bmx_timeout_en : 4;
            uint32_t bmx_arb_mode : 2;
            uint32_t reserved_6_7 : 2;
            uint32_t bmx_err_en : 1;
            uint32_t bmx_busy_option_dis : 1;
            uint32_t bmx_gating_dis : 1;
            uint32_t reserved_11 : 1;
            uint32_t hsel_option : 4;
            uint32_t pds_apb_cfg : 8;
            uint32_t hbn_apb_cfg : 8;
        } BF;
        uint32_t WORD;
    } bmx_cfg1;


    union {
        struct
        {
            uint32_t bmx_err_addr_dis : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t bmx_err_dec : 1;
            uint32_t bmx_err_tz : 1;
            uint32_t reserved_6_27 : 22;
            uint32_t bmx_dbg_sel : 4;
        } BF;
        uint32_t WORD;
    } bmx_cfg2;


    union {
        struct
        {
            uint32_t bmx_err_addr : 32;
        } BF;
        uint32_t WORD;
    } bmx_err_addr;


    union {
        struct
        {
            uint32_t bmx_dbg_out : 32;
        } BF;
        uint32_t WORD;
    } bmx_dbg_out;


    union {
        struct
        {
            uint32_t rsvd_31_0 : 32;
        } BF;
        uint32_t WORD;
    } rsv0;


    union {
        struct
        {
            uint32_t rsvd_31_0 : 32;
        } BF;
        uint32_t WORD;
    } rsv1;


    union {
        struct
        {
            uint32_t rsvd_31_0 : 32;
        } BF;
        uint32_t WORD;
    } rsv2;


    union {
        struct
        {
            uint32_t rsvd_31_0 : 32;
        } BF;
        uint32_t WORD;
    } rsv3;


    union {
        struct
        {
            uint32_t reg_sram_ret : 32;
        } BF;
        uint32_t WORD;
    } sram_ret;


    union {
        struct
        {
            uint32_t reg_sram_slp : 32;
        } BF;
        uint32_t WORD;
    } sram_slp;


    union {
        struct
        {
            uint32_t reg_sram_parm : 32;
        } BF;
        uint32_t WORD;
    } sram_parm;


    union {
        struct
        {
            uint32_t em_sel : 4;
            uint32_t reserved_4_31 : 28;
        } BF;
        uint32_t WORD;
    } seam_misc;


    union {
        struct
        {
            uint32_t reg_bd_en : 1;
            uint32_t reg_ext_rst_smt : 1;
            uint32_t jtag_swap_set : 6;
            uint32_t swap_sflash_io_3_io_0 : 1;
            uint32_t sel_embedded_sflash : 1;
            uint32_t reserved_10_11 : 2;
            uint32_t reg_spi_0_master_mode : 1;
            uint32_t reg_spi_0_swap : 1;
            uint32_t reserved_14 : 1;
            uint32_t reg_cci_use_jtag_pin : 1;
            uint32_t reg_cci_use_sdio_pin : 1;
            uint32_t p1_adc_test_with_cci : 1;
            uint32_t p2_dac_test_with_cci : 1;
            uint32_t p3_cci_use_io_2_5 : 1;
            uint32_t p4_adc_test_with_jtag : 1;
            uint32_t p5_dac_test_with_jtag : 1;
            uint32_t p6_sdio_use_io_0_5 : 1;
            uint32_t p7_jtag_use_io_2_5 : 1;
            uint32_t uart_swap_set : 3;
            uint32_t reserved_27_31 : 5;
        } BF;
        uint32_t WORD;
    } glb_parm;


    uint8_t RESERVED0x84[12];


    union {
        struct
        {
            uint32_t cpu_rtc_div : 17;
            uint32_t reserved_17 : 1;
            uint32_t cpu_rtc_en : 1;
            uint32_t cpu_rtc_sel : 1;
            uint32_t debug_ndreset_gate : 1;
            uint32_t reserved_21_31 : 11;
        } BF;
        uint32_t WORD;
    } CPU_CLK_CFG;


    uint8_t RESERVED0x94[16];


    union {
        struct
        {
            uint32_t gpadc_32m_clk_div : 6;
            uint32_t reserved_6 : 1;
            uint32_t gpadc_32m_clk_sel : 1;
            uint32_t gpadc_32m_div_en : 1;
            uint32_t reserved_9_31 : 23;
        } BF;
        uint32_t WORD;
    } GPADC_32M_SRC_CTRL;


    union {
        struct
        {
            uint32_t dig_32k_div : 11;
            uint32_t reserved_11 : 1;
            uint32_t dig_32k_en : 1;
            uint32_t dig_32k_comp : 1;
            uint32_t reserved_14_15 : 2;
            uint32_t dig_512k_div : 7;
            uint32_t reserved_23 : 1;
            uint32_t dig_512k_en : 1;
            uint32_t dig_512k_comp : 1;
            uint32_t reserved_26_27 : 2;
            uint32_t dig_clk_src_sel : 1;
            uint32_t reserved_29_30 : 2;
            uint32_t reg_en_platform_wakeup : 1;
        } BF;
        uint32_t WORD;
    } DIG32K_WAKEUP_CTRL;


    union {
        struct
        {
            uint32_t coex_bt_channel : 7;
            uint32_t coex_bt_pti : 4;
            uint32_t coex_bt_bw : 1;
            uint32_t en_gpio_bt_coex : 1;
            uint32_t reserved_13_31 : 19;
        } BF;
        uint32_t WORD;
    } WIFI_BT_COEX_CTRL;


    uint8_t RESERVED0xb0[16];


    union {
        struct
        {
            uint32_t uart_sig_0_sel : 4;
            uint32_t uart_sig_1_sel : 4;
            uint32_t uart_sig_2_sel : 4;
            uint32_t uart_sig_3_sel : 4;
            uint32_t uart_sig_4_sel : 4;
            uint32_t uart_sig_5_sel : 4;
            uint32_t uart_sig_6_sel : 4;
            uint32_t uart_sig_7_sel : 4;
        } BF;
        uint32_t WORD;
    } UART_SIG_SEL_0;


    uint8_t RESERVED0xc4[12];


    union {
        struct
        {
            uint32_t reg_dbg_ll_ctrl : 32;
        } BF;
        uint32_t WORD;
    } DBG_SEL_LL;


    union {
        struct
        {
            uint32_t reg_dbg_lh_ctrl : 32;
        } BF;
        uint32_t WORD;
    } DBG_SEL_LH;


    union {
        struct
        {
            uint32_t reg_dbg_hl_ctrl : 32;
        } BF;
        uint32_t WORD;
    } DBG_SEL_HL;


    union {
        struct
        {
            uint32_t reg_dbg_hh_ctrl : 32;
        } BF;
        uint32_t WORD;
    } DBG_SEL_HH;


    union {
        struct
        {
            uint32_t debug_oe : 1;
            uint32_t debug_i : 31;
        } BF;
        uint32_t WORD;
    } debug;


    uint8_t RESERVED0xe4[28];


    union {
        struct
        {
            uint32_t reg_gpio_0_ie : 1;
            uint32_t reg_gpio_0_smt : 1;
            uint32_t reg_gpio_0_drv : 2;
            uint32_t reg_gpio_0_pu : 1;
            uint32_t reg_gpio_0_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_0_func_sel : 4;
            uint32_t real_gpio_0_func_sel : 4;
            uint32_t reg_gpio_1_ie : 1;
            uint32_t reg_gpio_1_smt : 1;
            uint32_t reg_gpio_1_drv : 2;
            uint32_t reg_gpio_1_pu : 1;
            uint32_t reg_gpio_1_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_1_func_sel : 4;
            uint32_t real_gpio_1_func_sel : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL0;


    union {
        struct
        {
            uint32_t reg_gpio_2_ie : 1;
            uint32_t reg_gpio_2_smt : 1;
            uint32_t reg_gpio_2_drv : 2;
            uint32_t reg_gpio_2_pu : 1;
            uint32_t reg_gpio_2_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_2_func_sel : 4;
            uint32_t real_gpio_2_func_sel : 4;
            uint32_t reg_gpio_3_ie : 1;
            uint32_t reg_gpio_3_smt : 1;
            uint32_t reg_gpio_3_drv : 2;
            uint32_t reg_gpio_3_pu : 1;
            uint32_t reg_gpio_3_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_3_func_sel : 4;
            uint32_t real_gpio_3_func_sel : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL1;


    union {
        struct
        {
            uint32_t reg_gpio_4_ie : 1;
            uint32_t reg_gpio_4_smt : 1;
            uint32_t reg_gpio_4_drv : 2;
            uint32_t reg_gpio_4_pu : 1;
            uint32_t reg_gpio_4_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_4_func_sel : 4;
            uint32_t real_gpio_4_func_sel : 4;
            uint32_t reg_gpio_5_ie : 1;
            uint32_t reg_gpio_5_smt : 1;
            uint32_t reg_gpio_5_drv : 2;
            uint32_t reg_gpio_5_pu : 1;
            uint32_t reg_gpio_5_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_5_func_sel : 4;
            uint32_t real_gpio_5_func_sel : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL2;


    union {
        struct
        {
            uint32_t reg_gpio_6_ie : 1;
            uint32_t reg_gpio_6_smt : 1;
            uint32_t reg_gpio_6_drv : 2;
            uint32_t reg_gpio_6_pu : 1;
            uint32_t reg_gpio_6_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_6_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_7_ie : 1;
            uint32_t reg_gpio_7_smt : 1;
            uint32_t reg_gpio_7_drv : 2;
            uint32_t reg_gpio_7_pu : 1;
            uint32_t reg_gpio_7_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_7_func_sel : 4;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL3;


    union {
        struct
        {
            uint32_t reg_gpio_8_ie : 1;
            uint32_t reg_gpio_8_smt : 1;
            uint32_t reg_gpio_8_drv : 2;
            uint32_t reg_gpio_8_pu : 1;
            uint32_t reg_gpio_8_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_8_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_9_ie : 1;
            uint32_t reg_gpio_9_smt : 1;
            uint32_t reg_gpio_9_drv : 2;
            uint32_t reg_gpio_9_pu : 1;
            uint32_t reg_gpio_9_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_9_func_sel : 4;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL4;


    union {
        struct
        {
            uint32_t reg_gpio_10_ie : 1;
            uint32_t reg_gpio_10_smt : 1;
            uint32_t reg_gpio_10_drv : 2;
            uint32_t reg_gpio_10_pu : 1;
            uint32_t reg_gpio_10_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_10_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_11_ie : 1;
            uint32_t reg_gpio_11_smt : 1;
            uint32_t reg_gpio_11_drv : 2;
            uint32_t reg_gpio_11_pu : 1;
            uint32_t reg_gpio_11_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_11_func_sel : 4;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL5;


    union {
        struct
        {
            uint32_t reg_gpio_12_ie : 1;
            uint32_t reg_gpio_12_smt : 1;
            uint32_t reg_gpio_12_drv : 2;
            uint32_t reg_gpio_12_pu : 1;
            uint32_t reg_gpio_12_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_12_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_13_ie : 1;
            uint32_t reg_gpio_13_smt : 1;
            uint32_t reg_gpio_13_drv : 2;
            uint32_t reg_gpio_13_pu : 1;
            uint32_t reg_gpio_13_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_13_func_sel : 4;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL6;


    union {
        struct
        {
            uint32_t reg_gpio_14_ie : 1;
            uint32_t reg_gpio_14_smt : 1;
            uint32_t reg_gpio_14_drv : 2;
            uint32_t reg_gpio_14_pu : 1;
            uint32_t reg_gpio_14_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_14_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_15_ie : 1;
            uint32_t reg_gpio_15_smt : 1;
            uint32_t reg_gpio_15_drv : 2;
            uint32_t reg_gpio_15_pu : 1;
            uint32_t reg_gpio_15_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_15_func_sel : 4;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL7;


    union {
        struct
        {
            uint32_t reg_gpio_16_ie : 1;
            uint32_t reg_gpio_16_smt : 1;
            uint32_t reg_gpio_16_drv : 2;
            uint32_t reg_gpio_16_pu : 1;
            uint32_t reg_gpio_16_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_16_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_17_ie : 1;
            uint32_t reg_gpio_17_smt : 1;
            uint32_t reg_gpio_17_drv : 2;
            uint32_t reg_gpio_17_pu : 1;
            uint32_t reg_gpio_17_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_17_func_sel : 4;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL8;


    union {
        struct
        {
            uint32_t reg_gpio_18_ie : 1;
            uint32_t reg_gpio_18_smt : 1;
            uint32_t reg_gpio_18_drv : 2;
            uint32_t reg_gpio_18_pu : 1;
            uint32_t reg_gpio_18_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_18_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_19_ie : 1;
            uint32_t reg_gpio_19_smt : 1;
            uint32_t reg_gpio_19_drv : 2;
            uint32_t reg_gpio_19_pu : 1;
            uint32_t reg_gpio_19_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_19_func_sel : 4;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL9;


    union {
        struct
        {
            uint32_t reg_gpio_20_ie : 1;
            uint32_t reg_gpio_20_smt : 1;
            uint32_t reg_gpio_20_drv : 2;
            uint32_t reg_gpio_20_pu : 1;
            uint32_t reg_gpio_20_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_20_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_21_ie : 1;
            uint32_t reg_gpio_21_smt : 1;
            uint32_t reg_gpio_21_drv : 2;
            uint32_t reg_gpio_21_pu : 1;
            uint32_t reg_gpio_21_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_21_func_sel : 4;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL10;


    union {
        struct
        {
            uint32_t reg_gpio_22_ie : 1;
            uint32_t reg_gpio_22_smt : 1;
            uint32_t reg_gpio_22_drv : 2;
            uint32_t reg_gpio_22_pu : 1;
            uint32_t reg_gpio_22_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_22_func_sel : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t reg_gpio_23_ie : 1;
            uint32_t reg_gpio_23_smt : 1;
            uint32_t reg_gpio_23_drv : 2;
            uint32_t reg_gpio_23_pu : 1;
            uint32_t reg_gpio_23_pd : 1;
            uint32_t reserved_22_31 : 10;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL11;


    union {
        struct
        {
            uint32_t reg_gpio_24_ie : 1;
            uint32_t reg_gpio_24_smt : 1;
            uint32_t reg_gpio_24_drv : 2;
            uint32_t reg_gpio_24_pu : 1;
            uint32_t reg_gpio_24_pd : 1;
            uint32_t reserved_6_15 : 10;
            uint32_t reg_gpio_25_ie : 1;
            uint32_t reg_gpio_25_smt : 1;
            uint32_t reg_gpio_25_drv : 2;
            uint32_t reg_gpio_25_pu : 1;
            uint32_t reg_gpio_25_pd : 1;
            uint32_t reserved_22_31 : 10;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL12;


    union {
        struct
        {
            uint32_t reg_gpio_26_ie : 1;
            uint32_t reg_gpio_26_smt : 1;
            uint32_t reg_gpio_26_drv : 2;
            uint32_t reg_gpio_26_pu : 1;
            uint32_t reg_gpio_26_pd : 1;
            uint32_t reserved_6_15 : 10;
            uint32_t reg_gpio_27_ie : 1;
            uint32_t reg_gpio_27_smt : 1;
            uint32_t reg_gpio_27_drv : 2;
            uint32_t reg_gpio_27_pu : 1;
            uint32_t reg_gpio_27_pd : 1;
            uint32_t reserved_22_31 : 10;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL13;


    union {
        struct
        {
            uint32_t reg_gpio_28_ie : 1;
            uint32_t reg_gpio_28_smt : 1;
            uint32_t reg_gpio_28_drv : 2;
            uint32_t reg_gpio_28_pu : 1;
            uint32_t reg_gpio_28_pd : 1;
            uint32_t reserved_6_31 : 26;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL14;


    uint8_t RESERVED0x13c[68];


    union {
        struct
        {
            uint32_t reg_gpio_0_i : 1;
            uint32_t reg_gpio_1_i : 1;
            uint32_t reg_gpio_2_i : 1;
            uint32_t reg_gpio_3_i : 1;
            uint32_t reg_gpio_4_i : 1;
            uint32_t reg_gpio_5_i : 1;
            uint32_t reg_gpio_6_i : 1;
            uint32_t reg_gpio_7_i : 1;
            uint32_t reg_gpio_8_i : 1;
            uint32_t reg_gpio_9_i : 1;
            uint32_t reg_gpio_10_i : 1;
            uint32_t reg_gpio_11_i : 1;
            uint32_t reg_gpio_12_i : 1;
            uint32_t reg_gpio_13_i : 1;
            uint32_t reg_gpio_14_i : 1;
            uint32_t reg_gpio_15_i : 1;
            uint32_t reg_gpio_16_i : 1;
            uint32_t reg_gpio_17_i : 1;
            uint32_t reg_gpio_18_i : 1;
            uint32_t reg_gpio_19_i : 1;
            uint32_t reg_gpio_20_i : 1;
            uint32_t reg_gpio_21_i : 1;
            uint32_t reg_gpio_22_i : 1;
            uint32_t reserved_23_31 : 9;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL30;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL31;


    union {
        struct
        {
            uint32_t reg_gpio_0_o : 1;
            uint32_t reg_gpio_1_o : 1;
            uint32_t reg_gpio_2_o : 1;
            uint32_t reg_gpio_3_o : 1;
            uint32_t reg_gpio_4_o : 1;
            uint32_t reg_gpio_5_o : 1;
            uint32_t reg_gpio_6_o : 1;
            uint32_t reg_gpio_7_o : 1;
            uint32_t reg_gpio_8_o : 1;
            uint32_t reg_gpio_9_o : 1;
            uint32_t reg_gpio_10_o : 1;
            uint32_t reg_gpio_11_o : 1;
            uint32_t reg_gpio_12_o : 1;
            uint32_t reg_gpio_13_o : 1;
            uint32_t reg_gpio_14_o : 1;
            uint32_t reg_gpio_15_o : 1;
            uint32_t reg_gpio_16_o : 1;
            uint32_t reg_gpio_17_o : 1;
            uint32_t reg_gpio_18_o : 1;
            uint32_t reg_gpio_19_o : 1;
            uint32_t reg_gpio_20_o : 1;
            uint32_t reg_gpio_21_o : 1;
            uint32_t reg_gpio_22_o : 1;
            uint32_t reserved_23_31 : 9;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL32;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL33;


    union {
        struct
        {
            uint32_t reg_gpio_0_oe : 1;
            uint32_t reg_gpio_1_oe : 1;
            uint32_t reg_gpio_2_oe : 1;
            uint32_t reg_gpio_3_oe : 1;
            uint32_t reg_gpio_4_oe : 1;
            uint32_t reg_gpio_5_oe : 1;
            uint32_t reg_gpio_6_oe : 1;
            uint32_t reg_gpio_7_oe : 1;
            uint32_t reg_gpio_8_oe : 1;
            uint32_t reg_gpio_9_oe : 1;
            uint32_t reg_gpio_10_oe : 1;
            uint32_t reg_gpio_11_oe : 1;
            uint32_t reg_gpio_12_oe : 1;
            uint32_t reg_gpio_13_oe : 1;
            uint32_t reg_gpio_14_oe : 1;
            uint32_t reg_gpio_15_oe : 1;
            uint32_t reg_gpio_16_oe : 1;
            uint32_t reg_gpio_17_oe : 1;
            uint32_t reg_gpio_18_oe : 1;
            uint32_t reg_gpio_19_oe : 1;
            uint32_t reg_gpio_20_oe : 1;
            uint32_t reg_gpio_21_oe : 1;
            uint32_t reg_gpio_22_oe : 1;
            uint32_t reserved_23_31 : 9;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL34;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL35;


    uint8_t RESERVED0x198[8];


    union {
        struct
        {
            uint32_t reg_gpio_int_mask1 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_INT_MASK1;


    uint8_t RESERVED0x1a4[4];


    union {
        struct
        {
            uint32_t gpio_int_stat1 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_INT_STAT1;


    uint8_t RESERVED0x1ac[4];


    union {
        struct
        {
            uint32_t reg_gpio_int_clr1 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_INT_CLR1;


    uint8_t RESERVED0x1b4[12];


    union {
        struct
        {
            uint32_t reg_gpio_int_mode_set1 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_INT_MODE_SET1;


    union {
        struct
        {
            uint32_t reg_gpio_int_mode_set2 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_INT_MODE_SET2;


    union {
        struct
        {
            uint32_t reg_gpio_int_mode_set3 : 32;
        } BF;
        uint32_t WORD;
    } GPIO_INT_MODE_SET3;


    uint8_t RESERVED0x1cc[88];


    union {
        struct
        {
            uint32_t led_din_reg : 1;
            uint32_t led_din_sel : 1;
            uint32_t led_din_polarity_sel : 1;
            uint32_t reserved_3 : 1;
            uint32_t leddrv_ibias : 4;
            uint32_t ir_rx_gpio_sel : 2;
            uint32_t reserved_10_30 : 21;
            uint32_t pu_leddrv : 1;
        } BF;
        uint32_t WORD;
    } led_driver;


    uint8_t RESERVED0x228[224];


    union {
        struct
        {
            uint32_t gpdaca_rstn_ana : 1;
            uint32_t gpdacb_rstn_ana : 1;
            uint32_t reserved_2_6 : 5;
            uint32_t gpdac_test_en : 1;
            uint32_t gpdac_ref_sel : 1;
            uint32_t gpdac_test_sel : 3;
            uint32_t reserved_12_23 : 12;
            uint32_t gpdac_reserved : 8;
        } BF;
        uint32_t WORD;
    } gpdac_ctrl;


    union {
        struct
        {
            uint32_t gpdac_a_en : 1;
            uint32_t gpdac_ioa_en : 1;
            uint32_t reserved_2_17 : 16;
            uint32_t gpdac_a_rng : 2;
            uint32_t gpdac_a_outmux : 3;
            uint32_t reserved_23_31 : 9;
        } BF;
        uint32_t WORD;
    } gpdac_actrl;


    union {
        struct
        {
            uint32_t gpdac_b_en : 1;
            uint32_t gpdac_iob_en : 1;
            uint32_t reserved_2_17 : 16;
            uint32_t gpdac_b_rng : 2;
            uint32_t gpdac_b_outmux : 3;
            uint32_t reserved_23_31 : 9;
        } BF;
        uint32_t WORD;
    } gpdac_bctrl;


    union {
        struct
        {
            uint32_t gpdac_b_data : 10;
            uint32_t reserved_10_15 : 6;
            uint32_t gpdac_a_data : 10;
            uint32_t reserved_26_31 : 6;
        } BF;
        uint32_t WORD;
    } gpdac_data;


    uint8_t RESERVED0x318[3048];


    union {
        struct
        {
            uint32_t tzc_glb_swrst_s00_lock : 1;
            uint32_t tzc_glb_swrst_s01_lock : 1;
            uint32_t reserved_2_7 : 6;
            uint32_t tzc_glb_swrst_s30_lock : 1;
            uint32_t reserved_9_11 : 3;
            uint32_t tzc_glb_ctrl_pwron_rst_lock : 1;
            uint32_t tzc_glb_ctrl_cpu_reset_lock : 1;
            uint32_t tzc_glb_ctrl_sys_reset_lock : 1;
            uint32_t tzc_glb_ctrl_ungated_ap_lock : 1;
            uint32_t reserved_16_24 : 9;
            uint32_t tzc_glb_misc_lock : 1;
            uint32_t tzc_glb_sram_lock : 1;
            uint32_t tzc_glb_l2c_lock : 1;
            uint32_t tzc_glb_bmx_lock : 1;
            uint32_t tzc_glb_dbg_lock : 1;
            uint32_t tzc_glb_mbist_lock : 1;
            uint32_t tzc_glb_clk_lock : 1;
        } BF;
        uint32_t WORD;
    } tzc_glb_ctrl_0;


    union {
        struct
        {
            uint32_t tzc_glb_swrst_s20_lock : 1;
            uint32_t tzc_glb_swrst_s21_lock : 1;
            uint32_t tzc_glb_swrst_s22_lock : 1;
            uint32_t tzc_glb_swrst_s23_lock : 1;
            uint32_t tzc_glb_swrst_s24_lock : 1;
            uint32_t tzc_glb_swrst_s25_lock : 1;
            uint32_t tzc_glb_swrst_s26_lock : 1;
            uint32_t tzc_glb_swrst_s27_lock : 1;
            uint32_t tzc_glb_swrst_s28_lock : 1;
            uint32_t tzc_glb_swrst_s29_lock : 1;
            uint32_t tzc_glb_swrst_s2a_lock : 1;
            uint32_t tzc_glb_swrst_s2b_lock : 1;
            uint32_t tzc_glb_swrst_s2c_lock : 1;
            uint32_t tzc_glb_swrst_s2d_lock : 1;
            uint32_t tzc_glb_swrst_s2e_lock : 1;
            uint32_t tzc_glb_swrst_s2f_lock : 1;
            uint32_t tzc_glb_swrst_s10_lock : 1;
            uint32_t tzc_glb_swrst_s11_lock : 1;
            uint32_t tzc_glb_swrst_s12_lock : 1;
            uint32_t tzc_glb_swrst_s13_lock : 1;
            uint32_t tzc_glb_swrst_s14_lock : 1;
            uint32_t tzc_glb_swrst_s15_lock : 1;
            uint32_t tzc_glb_swrst_s16_lock : 1;
            uint32_t tzc_glb_swrst_s17_lock : 1;
            uint32_t tzc_glb_swrst_s18_lock : 1;
            uint32_t tzc_glb_swrst_s19_lock : 1;
            uint32_t tzc_glb_swrst_s1a_lock : 1;
            uint32_t tzc_glb_swrst_s1b_lock : 1;
            uint32_t tzc_glb_swrst_s1c_lock : 1;
            uint32_t tzc_glb_swrst_s1d_lock : 1;
            uint32_t tzc_glb_swrst_s1e_lock : 1;
            uint32_t tzc_glb_swrst_s1f_lock : 1;
        } BF;
        uint32_t WORD;
    } tzc_glb_ctrl_1;


    union {
        struct
        {
            uint32_t tzc_glb_gpio_0_lock : 1;
            uint32_t tzc_glb_gpio_1_lock : 1;
            uint32_t tzc_glb_gpio_2_lock : 1;
            uint32_t tzc_glb_gpio_3_lock : 1;
            uint32_t tzc_glb_gpio_4_lock : 1;
            uint32_t tzc_glb_gpio_5_lock : 1;
            uint32_t tzc_glb_gpio_6_lock : 1;
            uint32_t tzc_glb_gpio_7_lock : 1;
            uint32_t tzc_glb_gpio_8_lock : 1;
            uint32_t tzc_glb_gpio_9_lock : 1;
            uint32_t tzc_glb_gpio_10_lock : 1;
            uint32_t tzc_glb_gpio_11_lock : 1;
            uint32_t tzc_glb_gpio_12_lock : 1;
            uint32_t tzc_glb_gpio_13_lock : 1;
            uint32_t tzc_glb_gpio_14_lock : 1;
            uint32_t tzc_glb_gpio_15_lock : 1;
            uint32_t tzc_glb_gpio_16_lock : 1;
            uint32_t tzc_glb_gpio_17_lock : 1;
            uint32_t tzc_glb_gpio_18_lock : 1;
            uint32_t tzc_glb_gpio_19_lock : 1;
            uint32_t tzc_glb_gpio_20_lock : 1;
            uint32_t tzc_glb_gpio_21_lock : 1;
            uint32_t tzc_glb_gpio_22_lock : 1;
            uint32_t tzc_glb_gpio_23_lock : 1;
            uint32_t tzc_glb_gpio_24_lock : 1;
            uint32_t tzc_glb_gpio_25_lock : 1;
            uint32_t tzc_glb_gpio_26_lock : 1;
            uint32_t tzc_glb_gpio_27_lock : 1;
            uint32_t tzc_glb_gpio_28_lock : 1;
            uint32_t reserved_29_31 : 3;
        } BF;
        uint32_t WORD;
    } tzc_glb_ctrl_2;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } tzc_glb_ctrl_3;
};

typedef volatile struct glb_reg glb_reg_t;
# 4061 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/glb_reg.h"
struct glb_gpio_reg {

    union {
        struct
        {
            uint32_t reg_gpio_0_ie : 1;
            uint32_t reg_gpio_0_smt : 1;
            uint32_t reg_gpio_0_drv : 2;
            uint32_t reg_gpio_0_pu : 1;
            uint32_t reg_gpio_0_pd : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t reg_gpio_0_func_sel : 4;
            uint32_t real_gpio_0_func_sel : 4;
            uint32_t reg_gpio_1_ie : 1;
            uint32_t reg_gpio_1_smt : 1;
            uint32_t reg_gpio_1_drv : 2;
            uint32_t reg_gpio_1_pu : 1;
            uint32_t reg_gpio_1_pd : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t reg_gpio_1_func_sel : 4;
            uint32_t real_gpio_1_func_sel : 4;
        } BF;
        uint32_t WORD;
    } GPIO_CFGCTL;
};

typedef volatile struct glb_gpio_reg glb_gpio_reg_t;
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h" 2

# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pds_reg.h" 1
# 745 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pds_reg.h"
struct pds_reg {

    union {
        struct
        {
            uint32_t pds_start_ps : 1;
            uint32_t cr_sleep_forever : 1;
            uint32_t cr_xtal_force_off : 1;
            uint32_t cr_wifi_pds_save_state : 1;
            uint32_t cr_pds_pd_dcdc18 : 1;
            uint32_t cr_pds_pd_bg_sys : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t cr_pds_gate_clk : 1;
            uint32_t cr_pds_mem_stby : 1;
            uint32_t reserved_10 : 1;
            uint32_t cr_pds_iso_en : 1;
            uint32_t cr_pds_wait_xtal_rdy : 1;
            uint32_t cr_pds_pwr_off : 1;
            uint32_t cr_pds_pd_xtal : 1;
            uint32_t cr_pds_soc_enb_force_on : 1;
            uint32_t cr_pds_rst_soc_en : 1;
            uint32_t cr_pds_rc32m_off_dis : 1;
            uint32_t cr_pds_ldo_vsel_en : 1;
            uint32_t reserved_19_20 : 2;
            uint32_t cr_np_wfi_mask : 1;
            uint32_t cr_pds_pd_ldo11 : 1;
            uint32_t reserved_23 : 1;
            uint32_t cr_pds_ldo_vol : 4;
            uint32_t cr_pds_ctrl_rf : 2;
            uint32_t cr_pds_ctrl_pll : 2;
        } BF;
        uint32_t WORD;
    } PDS_CTL;


    union {
        struct
        {
            uint32_t cr_sleep_duration : 32;
        } BF;
        uint32_t WORD;
    } PDS_TIME1;


    uint8_t RESERVED0x8[4];


    union {
        struct
        {
            uint32_t ro_pds_wake_int : 1;
            uint32_t ro_pds_irq_in : 1;
            uint32_t ro_pds_rf_done_int : 1;
            uint32_t ro_pds_pll_done_int : 1;
            uint32_t reserved_4_7 : 4;
            uint32_t cr_pds_wake_int_mask : 1;
            uint32_t cr_pds_irq_in_dis : 1;
            uint32_t cr_pds_rf_done_int_mask : 1;
            uint32_t cr_pds_pll_done_int_mask : 1;
            uint32_t reserved_12_15 : 4;
            uint32_t cr_pds_int_clr : 1;
            uint32_t reserved_17_31 : 15;
        } BF;
        uint32_t WORD;
    } PDS_INT;


    union {
        struct
        {
            uint32_t cr_pds_force_np_pwr_off : 1;
            uint32_t reserved_1 : 1;
            uint32_t cr_pds_force_wb_pwr_off : 1;
            uint32_t reserved_3 : 1;
            uint32_t cr_pds_force_np_iso_en : 1;
            uint32_t reserved_5 : 1;
            uint32_t cr_pds_force_wb_iso_en : 1;
            uint32_t reserved_7 : 1;
            uint32_t cr_pds_force_np_pds_rst : 1;
            uint32_t reserved_9 : 1;
            uint32_t cr_pds_force_wb_pds_rst : 1;
            uint32_t reserved_11 : 1;
            uint32_t cr_pds_force_np_mem_stby : 1;
            uint32_t reserved_13 : 1;
            uint32_t cr_pds_force_wb_mem_stby : 1;
            uint32_t reserved_15 : 1;
            uint32_t cr_pds_force_np_gate_clk : 1;
            uint32_t reserved_17 : 1;
            uint32_t cr_pds_force_wb_gate_clk : 1;
            uint32_t reserved_19_31 : 13;
        } BF;
        uint32_t WORD;
    } PDS_CTL2;


    union {
        struct
        {
            uint32_t reserved_0 : 1;
            uint32_t cr_pds_force_misc_pwr_off : 1;
            uint32_t reserved_2_3 : 2;
            uint32_t cr_pds_force_misc_iso_en : 1;
            uint32_t reserved_5_6 : 2;
            uint32_t cr_pds_force_misc_pds_rst : 1;
            uint32_t reserved_8_9 : 2;
            uint32_t cr_pds_force_misc_mem_stby : 1;
            uint32_t reserved_11_12 : 2;
            uint32_t cr_pds_force_misc_gate_clk : 1;
            uint32_t reserved_14_23 : 10;
            uint32_t cr_pds_np_iso_en : 1;
            uint32_t reserved_25_26 : 2;
            uint32_t cr_pds_wb_iso_en : 1;
            uint32_t reserved_28_29 : 2;
            uint32_t cr_pds_misc_iso_en : 1;
            uint32_t reserved_31 : 1;
        } BF;
        uint32_t WORD;
    } PDS_CTL3;


    union {
        struct
        {
            uint32_t cr_pds_np_pwr_off : 1;
            uint32_t cr_pds_np_reset : 1;
            uint32_t cr_pds_np_mem_stby : 1;
            uint32_t cr_pds_np_gate_clk : 1;
            uint32_t reserved_4_11 : 8;
            uint32_t cr_pds_wb_pwr_off : 1;
            uint32_t cr_pds_wb_reset : 1;
            uint32_t cr_pds_wb_mem_stby : 1;
            uint32_t cr_pds_wb_gate_clk : 1;
            uint32_t reserved_16_23 : 8;
            uint32_t cr_pds_misc_pwr_off : 1;
            uint32_t cr_pds_misc_reset : 1;
            uint32_t cr_pds_misc_mem_stby : 1;
            uint32_t cr_pds_misc_gate_clk : 1;
            uint32_t reserved_28_31 : 4;
        } BF;
        uint32_t WORD;
    } PDS_CTL4;


    union {
        struct
        {
            uint32_t ro_pds_state : 4;
            uint32_t reserved_4_7 : 4;
            uint32_t ro_pds_rf_state : 4;
            uint32_t reserved_12_15 : 4;
            uint32_t ro_pds_pll_state : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } pds_stat;


    union {
        struct
        {
            uint32_t cr_np_sram_pwr : 8;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } pds_ram1;


    uint8_t RESERVED0x24[732];


    union {
        struct
        {
            uint32_t rc32m_cal_done : 1;
            uint32_t rc32m_rdy : 1;
            uint32_t rc32m_cal_inprogress : 1;
            uint32_t rc32m_cal_div : 2;
            uint32_t rc32m_cal_precharge : 1;
            uint32_t rc32m_dig_code_fr_cal : 8;
            uint32_t reserved_14_16 : 3;
            uint32_t rc32m_allow_cal : 1;
            uint32_t rc32m_refclk_half : 1;
            uint32_t rc32m_ext_code_en : 1;
            uint32_t rc32m_cal_en : 1;
            uint32_t rc32m_pd : 1;
            uint32_t rc32m_code_fr_ext : 8;
            uint32_t reserved_30_31 : 2;
        } BF;
        uint32_t WORD;
    } rc32m_ctrl0;


    union {
        struct
        {
            uint32_t rc32m_test_en : 1;
            uint32_t rc32m_soft_rst : 1;
            uint32_t rc32m_clk_soft_rst : 1;
            uint32_t rc32m_clk_inv : 1;
            uint32_t rc32m_clk_force_on : 1;
            uint32_t reserved_5_23 : 19;
            uint32_t rc32m_reserved : 8;
        } BF;
        uint32_t WORD;
    } rc32m_ctrl1;


    uint8_t RESERVED0x308[248];


    union {
        struct
        {
            uint32_t clkpll_sdm_reset : 1;
            uint32_t clkpll_reset_postdiv : 1;
            uint32_t clkpll_reset_fbdv : 1;
            uint32_t clkpll_reset_refdiv : 1;
            uint32_t clkpll_pu_postdiv : 1;
            uint32_t clkpll_pu_fbdv : 1;
            uint32_t clkpll_pu_clamp_op : 1;
            uint32_t clkpll_pu_pfd : 1;
            uint32_t clkpll_pu_cp : 1;
            uint32_t pu_clkpll_sfreg : 1;
            uint32_t pu_clkpll : 1;
            uint32_t reserved_11_31 : 21;
        } BF;
        uint32_t WORD;
    } pu_rst_clkpll;


    union {
        struct
        {
            uint32_t clkpll_postdiv : 7;
            uint32_t reserved_7 : 1;
            uint32_t clkpll_refdiv_ratio : 4;
            uint32_t clkpll_xtal_rc32m_sel : 1;
            uint32_t reserved_13_15 : 3;
            uint32_t clkpll_refclk_sel : 1;
            uint32_t reserved_17_19 : 3;
            uint32_t clkpll_vg11_sel : 2;
            uint32_t reserved_22_23 : 2;
            uint32_t clkpll_vg13_sel : 2;
            uint32_t reserved_26_31 : 6;
        } BF;
        uint32_t WORD;
    } clkpll_top_ctrl;


    union {
        struct
        {
            uint32_t clkpll_sel_cp_bias : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t clkpll_icp_5u : 2;
            uint32_t clkpll_icp_1u : 2;
            uint32_t clkpll_int_frac_sw : 1;
            uint32_t clkpll_cp_startup_en : 1;
            uint32_t clkpll_cp_opamp_en : 1;
            uint32_t reserved_11_31 : 21;
        } BF;
        uint32_t WORD;
    } clkpll_cp;


    union {
        struct
        {
            uint32_t clkpll_c4_en : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t clkpll_r4 : 2;
            uint32_t reserved_6_7 : 2;
            uint32_t clkpll_r4_short : 1;
            uint32_t reserved_9_11 : 3;
            uint32_t clkpll_c3 : 2;
            uint32_t clkpll_cz : 2;
            uint32_t clkpll_rz : 3;
            uint32_t reserved_19_31 : 13;
        } BF;
        uint32_t WORD;
    } clkpll_rz;


    union {
        struct
        {
            uint32_t clkpll_sel_sample_clk : 2;
            uint32_t clkpll_sel_fb_clk : 2;
            uint32_t reserved_4_31 : 28;
        } BF;
        uint32_t WORD;
    } clkpll_fbdv;


    union {
        struct
        {
            uint32_t clkpll_vco_speed : 3;
            uint32_t clkpll_shrtr : 1;
            uint32_t reserved_4_31 : 28;
        } BF;
        uint32_t WORD;
    } clkpll_vco;


    union {
        struct
        {
            uint32_t clkpll_sdmin : 24;
            uint32_t clkpll_dither_sel : 2;
            uint32_t reserved_26_27 : 2;
            uint32_t clkpll_sdm_flag : 1;
            uint32_t clkpll_sdm_bypass : 1;
            uint32_t reserved_30_31 : 2;
        } BF;
        uint32_t WORD;
    } clkpll_sdm;


    union {
        struct
        {
            uint32_t clkpll_en_480m : 1;
            uint32_t clkpll_en_240m : 1;
            uint32_t clkpll_en_192m : 1;
            uint32_t clkpll_en_160m : 1;
            uint32_t clkpll_en_120m : 1;
            uint32_t clkpll_en_96m : 1;
            uint32_t clkpll_en_80m : 1;
            uint32_t clkpll_en_48m : 1;
            uint32_t clkpll_en_32m : 1;
            uint32_t clkpll_en_div2_480m : 1;
            uint32_t reserved_10_31 : 22;
        } BF;
        uint32_t WORD;
    } clkpll_output_en;
};

typedef volatile struct pds_reg pds_reg_t;
# 43 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h" 1
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/ef_ctrl_reg.h" 1
# 574 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/ef_ctrl_reg.h"
struct ef_ctrl_reg {

    uint8_t RESERVED0x0[2048];


    union {
        struct
        {
            uint32_t ef_if_0_autoload_p1_done : 1;
            uint32_t ef_if_0_autoload_done : 1;
            uint32_t ef_if_0_busy : 1;
            uint32_t ef_if_0_rw : 1;
            uint32_t ef_if_0_trig : 1;
            uint32_t ef_if_0_manual_en : 1;
            uint32_t ef_if_0_cyc_modify : 1;
            uint32_t ef_clk_sahb_data_sel : 1;
            uint32_t ef_if_prot_code_ctrl : 8;
            uint32_t ef_if_por_dig : 1;
            uint32_t ef_clk_sahb_data_gate : 1;
            uint32_t ef_if_auto_rd_en : 1;
            uint32_t ef_if_cyc_modify_lock : 1;
            uint32_t ef_if_0_int : 1;
            uint32_t ef_if_0_int_clr : 1;
            uint32_t ef_if_0_int_set : 1;
            uint32_t reserved_23 : 1;
            uint32_t ef_if_prot_code_cyc : 8;
        } BF;
        uint32_t WORD;
    } ef_if_ctrl_0;


    union {
        struct
        {
            uint32_t ef_if_cyc_rd_dmy : 6;
            uint32_t ef_if_cyc_rd_dat : 6;
            uint32_t ef_if_cyc_rd_adr : 6;
            uint32_t ef_if_cyc_cs : 6;
            uint32_t ef_if_cyc_pd_cs_s : 8;
        } BF;
        uint32_t WORD;
    } ef_if_cyc_0;


    union {
        struct
        {
            uint32_t ef_if_cyc_pi : 6;
            uint32_t ef_if_cyc_pp : 8;
            uint32_t ef_if_cyc_wr_adr : 6;
            uint32_t ef_if_cyc_ps_cs : 6;
            uint32_t ef_if_cyc_pd_cs_h : 6;
        } BF;
        uint32_t WORD;
    } ef_if_cyc_1;


    union {
        struct
        {
            uint32_t ef_if_a : 10;
            uint32_t ef_if_pd : 1;
            uint32_t ef_if_ps : 1;
            uint32_t ef_if_strobe : 1;
            uint32_t ef_if_pgenb : 1;
            uint32_t ef_if_load : 1;
            uint32_t ef_if_csb : 1;
            uint32_t ef_if_0_q : 8;
            uint32_t ef_if_prot_code_manual : 8;
        } BF;
        uint32_t WORD;
    } ef_if_0_manual;


    union {
        struct
        {
            uint32_t ef_if_0_status : 32;
        } BF;
        uint32_t WORD;
    } ef_if_0_status;


    union {
        struct
        {
            uint32_t ef_if_sf_aes_mode : 2;
            uint32_t ef_if_sboot_sign_mode : 2;
            uint32_t ef_if_sboot_en : 2;
            uint32_t ef_if_cpu1_enc_en : 1;
            uint32_t ef_if_cpu0_enc_en : 1;
            uint32_t ef_if_boot_sel : 4;
            uint32_t ef_if_sw_usage_1 : 2;
            uint32_t ef_if_sdu_dis : 1;
            uint32_t ef_if_ble_dis : 1;
            uint32_t ef_if_wifi_dis : 1;
            uint32_t ef_if_0_key_enc_en : 1;
            uint32_t ef_if_cam_dis : 1;
            uint32_t ef_if_sf_dis : 1;
            uint32_t ef_if_cpu1_dis : 1;
            uint32_t ef_if_cpu_rst_dbg_dis : 1;
            uint32_t ef_if_se_dbg_dis : 1;
            uint32_t ef_if_efuse_dbg_dis : 1;
            uint32_t ef_if_dbg_jtag_1_dis : 2;
            uint32_t ef_if_dbg_jtag_0_dis : 2;
            uint32_t ef_if_dbg_mode : 4;
        } BF;
        uint32_t WORD;
    } ef_if_cfg_0;


    union {
        struct
        {
            uint32_t ef_sw_sf_aes_mode : 2;
            uint32_t ef_sw_sboot_sign_mode : 2;
            uint32_t ef_sw_sboot_en : 2;
            uint32_t ef_sw_cpu1_enc_en : 1;
            uint32_t ef_sw_cpu0_enc_en : 1;
            uint32_t reserved_8_11 : 4;
            uint32_t ef_sw_sw_usage_1 : 2;
            uint32_t ef_sw_sdu_dis : 1;
            uint32_t ef_sw_ble_dis : 1;
            uint32_t ef_sw_wifi_dis : 1;
            uint32_t ef_sw_0_key_enc_en : 1;
            uint32_t ef_sw_cam_dis : 1;
            uint32_t ef_sw_sf_dis : 1;
            uint32_t ef_sw_cpu1_dis : 1;
            uint32_t ef_sw_cpu_rst_dbg_dis : 1;
            uint32_t ef_sw_se_dbg_dis : 1;
            uint32_t ef_sw_efuse_dbg_dis : 1;
            uint32_t ef_sw_dbg_jtag_1_dis : 2;
            uint32_t ef_sw_dbg_jtag_0_dis : 2;
            uint32_t ef_sw_dbg_mode : 4;
        } BF;
        uint32_t WORD;
    } ef_sw_cfg_0;


    union {
        struct
        {
            uint32_t ef_reserved : 32;
        } BF;
        uint32_t WORD;
    } ef_reserved;


    union {
        struct
        {
            uint32_t ef_if_ana_trim_0 : 32;
        } BF;
        uint32_t WORD;
    } ef_if_ana_trim_0;


    union {
        struct
        {
            uint32_t ef_if_sw_usage_0 : 32;
        } BF;
        uint32_t WORD;
    } ef_if_sw_usage_0;


    uint8_t RESERVED0x828[472];


    union {
        struct
        {
            uint32_t ef_crc_busy : 1;
            uint32_t ef_crc_trig : 1;
            uint32_t ef_crc_en : 1;
            uint32_t ef_crc_mode : 1;
            uint32_t ef_crc_error : 1;
            uint32_t ef_crc_dout_inv_en : 1;
            uint32_t ef_crc_dout_endian : 1;
            uint32_t ef_crc_din_endian : 1;
            uint32_t ef_crc_int : 1;
            uint32_t ef_crc_int_clr : 1;
            uint32_t ef_crc_int_set : 1;
            uint32_t ef_crc_lock : 1;
            uint32_t reserved_12_15 : 4;
            uint32_t ef_crc_slp_n : 16;
        } BF;
        uint32_t WORD;
    } ef_crc_ctrl_0;


    union {
        struct
        {
            uint32_t ef_crc_data_0_en : 32;
        } BF;
        uint32_t WORD;
    } ef_crc_ctrl_1;


    union {
        struct
        {
            uint32_t ef_crc_data_1_en : 32;
        } BF;
        uint32_t WORD;
    } ef_crc_ctrl_2;


    union {
        struct
        {
            uint32_t ef_crc_iv : 32;
        } BF;
        uint32_t WORD;
    } ef_crc_ctrl_3;


    union {
        struct
        {
            uint32_t ef_crc_golden : 32;
        } BF;
        uint32_t WORD;
    } ef_crc_ctrl_4;


    union {
        struct
        {
            uint32_t ef_crc_dout : 32;
        } BF;
        uint32_t WORD;
    } ef_crc_ctrl_5;
};

typedef volatile struct ef_ctrl_reg ef_ctrl_reg_t;
# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 1



# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 1
# 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
void * pvPortMalloc( size_t xWantedSize );
void* pvPortRealloc(void* ptr, size_t newsize);
void* pvPortCalloc(size_t numElements, size_t sizeOfElement);
void vPortFree( void *pv );






void bflb_platform_init(uint32_t baudrate);
void bflb_platform_deinit(void);
void bflb_platform_printf(char *fmt,...);
void bflb_platform_dump(const void *data,uint32_t len);
void bflb_platform_prints(char *data);
void bflb_platform_printx(uint32_t val);
void bflb_platform_printc(char c);
void bflb_platform_print_set(uint8_t logDisable);
int bflb_platform_get_random(uint8_t *data,uint32_t len);
int bflb_platform_get_input(uint8_t *data,uint32_t maxLen);

void bflb_platform_clear_time(void);
uint32_t bflb_platform_get_systick_int_cnt(void);
uint64_t bflb_platform_get_time_ms();
void bflb_platform_start_time(void);
void bflb_platform_stop_time(void);
void bflb_platform_set_alarm_time(uint64_t time);
void bflb_platform_init_time(void);
void bflb_platform_deinit_time(void);
void bflb_platform_delay_ms(uint32_t time);
uint32_t bflb_platform_get_log(uint8_t *data,uint32_t maxlen);
# 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 22 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  SUCCESS = 0,
  ERROR = 1,
  TIMEOUT = 2,
}BL_Err_Type;




typedef enum
{
  DISABLE = 0,
  ENABLE = 1,
}BL_Fun_Type;




typedef enum
{
  RESET = 0,
  SET = 1,
}BL_Sts_Type;




typedef enum
{
  UNMASK = 0,
  MASK = 1
}BL_Mask_Type;
# 106 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  LOGIC_LO = 0,
  LOGIC_HI = !LOGIC_LO
}LogicalStatus;




typedef enum
{
  DEACTIVE = 0,
  ACTIVE = !DEACTIVE
}ActiveStatus;




typedef void (intCallback_Type)(void);
typedef void( *pFunc )( void );







void Interrupt_Handler_Register(IRQn_Type irq,pFunc interruptFun);
void ASM_Delay_Us(uint32_t core,uint32_t cnt);
void BL602_Delay_US(uint32_t cnt);
void BL602_Delay_MS(uint32_t cnt);
void *BL602_MemCpy(void *dst, const void *src, uint32_t n);
uint32_t *BL602_MemCpy4(uint32_t *dst, const uint32_t *src, uint32_t n);
void *BL602_MemCpy_Fast(void *pdst, const void *psrc, uint32_t n);
void* BL602_MemSet(void *s, uint8_t c, uint32_t n);
uint32_t *BL602_MemSet4(uint32_t *dst, const uint32_t val, uint32_t n);
int BL602_MemCmp(const void *s1, const void *s2, uint32_t n);
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h" 2
# 57 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
typedef enum {
    EF_CTRL_KEY_SLOT0,
    EF_CTRL_KEY_SLOT1,
    EF_CTRL_KEY_SLOT2,
    EF_CTRL_KEY_SLOT3,
    EF_CTRL_KEY_SLOT4,
    EF_CTRL_KEY_SLOT5,
    EF_CTRL_KEY_MAX,
}EF_Ctrl_Key_Type;




typedef enum {
    EF_CTRL_SIGN_NONE,
    EF_CTRL_SIGN_RSA,
    EF_CTRL_SIGN_ECC,
}EF_Ctrl_Sign_Type;




typedef enum {
    EF_CTRL_SF_AES_NONE,
    EF_CTRL_SF_AES_128,
    EF_CTRL_SF_AES_192,
    EF_CTRL_SF_AES_256,
}EF_Ctrl_SF_AES_Type;




typedef enum {
    EF_CTRL_DBG_OPEN = 0,
    EF_CTRL_DBG_PASSWORD,
    EF_CTRL_DBG_CLOSE=4,
}EF_Ctrl_Dbg_Mode_Type;




typedef enum {
    EF_CTRL_EF_CLK,
    EF_CTRL_SAHB_CLK,
}EF_Ctrl_CLK_Type;




typedef enum {
    EF_CTRL_PARA_DFT ,
    EF_CTRL_PARA_MANUAL,
}EF_Ctrl_CYC_PARA_Type;




typedef enum {
    EF_CTRL_OP_MODE_AUTO ,
    EF_CTRL_OP_MODE_MANUAL,
}EF_Ctrl_OP_MODE_Type;




typedef struct {
    EF_Ctrl_Dbg_Mode_Type ef_dbg_mode;
    uint8_t ef_dbg_jtag_0_dis;
    uint8_t ef_sboot_en;
    uint8_t ef_no_hd_boot_en;
}EF_Ctrl_Sec_Param_Type;




typedef struct {
    uint32_t trimRc32mCodeFrExt : 8;
    uint32_t trimRc32mCodeFrExtParity : 1;
    uint32_t trimRc32mExtCodeEn : 1;
    uint32_t reserved : 22;
}Efuse_Ana_RC32M_Trim_Type;




typedef struct {
    uint32_t trimRc32kCodeFrExt : 10;
    uint32_t trimRc32kCodeFrExtParity : 1;
    uint32_t trimRc32kExtCodeEn : 1;
    uint32_t reserved : 20;
}Efuse_Ana_RC32K_Trim_Type;




typedef struct {
    uint32_t tsenRefcodeCorner : 12;
    uint32_t tsenRefcodeCornerParity : 1;
    uint32_t tsenRefcodeCornerEn : 1;
    uint32_t tsenRefcodeCornerVersion : 1;
    uint32_t reserved : 17;
}Efuse_TSEN_Refcode_Corner_Type;




typedef struct {
    uint32_t adcGainCoeff : 12;
    uint32_t adcGainCoeffParity : 1;
    uint32_t adcGainCoeffEn : 1;
    uint32_t reserved : 18;
}Efuse_ADC_Gain_Coeff_Type;




typedef struct {
    uint32_t rsvd : 22;
    uint32_t customerID : 2;
    uint32_t rsvd_info : 3;
    uint32_t memoryInfo : 2;
    uint32_t coreInfo : 1;
    uint32_t mcuInfo : 1;
    uint32_t pinInfo : 1;
}Efuse_Device_Info_Type;




typedef struct {
    uint32_t capCode : 6;
    uint32_t parity : 1;
    uint32_t en : 1;
    uint32_t rsvd : 24;
}Efuse_Capcode_Info_Type;




typedef struct {
    uint32_t sel_value : 4;
    uint32_t parity : 1;
    uint32_t en : 1;
    uint32_t rsvd : 26;
}Efuse_Ldo11VoutSelTrim_Info_Type;




typedef struct {
    uint32_t txpower : 5;
    uint32_t parity : 1;
    uint32_t en : 1;
    uint32_t rsvd : 25;
}Efuse_TxPower_Info_Type;
# 282 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
void EF_Ctrl_Load_Efuse_R0(void);
void EF_Ctrl_Program_Efuse_0(void);
BL_Sts_Type EF_Ctrl_Busy(void);
BL_Sts_Type EF_Ctrl_AutoLoad_Done(void);
void EF_Ctrl_Write_Dbg_Pwd(uint32_t passWdLow, uint32_t passWdHigh,uint8_t program);
void EF_Ctrl_Read_Dbg_Pwd(uint32_t *passWdLow, uint32_t *passWdHigh);
void EF_Ctrl_Readlock_Dbg_Pwd(uint8_t program);
void EF_Ctrl_Writelock_Dbg_Pwd(uint8_t program);
void EF_Ctrl_Write_Secure_Cfg(EF_Ctrl_Sec_Param_Type *cfg,uint8_t program);
void EF_Ctrl_Read_Secure_Cfg(EF_Ctrl_Sec_Param_Type *cfg);
void EF_Ctrl_Write_Secure_Boot(EF_Ctrl_Sign_Type sign[1], EF_Ctrl_SF_AES_Type aes[1],uint8_t program);
void EF_Ctrl_Read_Secure_Boot(EF_Ctrl_Sign_Type sign[1], EF_Ctrl_SF_AES_Type aes[1]);
void EF_Ctrl_Read_CPU_Cfg(uint8_t *apDisabled,uint8_t *npDisabled,uint8_t *npCpuType);
uint8_t EF_Ctrl_Get_Trim_Enable(void);
uint8_t EF_Ctrl_Get_Trim_Parity(uint32_t val,uint8_t len);
void EF_Ctrl_Write_Ana_Trim(uint32_t index, uint32_t trim,uint8_t program);
void EF_Ctrl_Read_Ana_Trim( uint32_t index, uint32_t *trim);
void EF_Ctrl_Read_RC32M_Trim( Efuse_Ana_RC32M_Trim_Type *trim);
void EF_Ctrl_Read_RC32K_Trim( Efuse_Ana_RC32K_Trim_Type *trim);
void EF_Ctrl_Read_TSEN_Trim( Efuse_TSEN_Refcode_Corner_Type *trim);
void EF_Ctrl_Read_ADC_Gain_Trim( Efuse_ADC_Gain_Coeff_Type *trim);
void EF_Ctrl_Write_Sw_Usage(uint32_t index, uint32_t usage,uint8_t program);
void EF_Ctrl_Read_Sw_Usage( uint32_t index, uint32_t *usage);
void EF_Ctrl_Writelock_Sw_Usage(uint32_t index, uint8_t program);
void EF_Ctrl_Write_MAC_Address(uint8_t mac[6],uint8_t program);
BL_Err_Type EF_Ctrl_Read_MAC_Address(uint8_t mac[6]);
BL_Err_Type EF_Ctrl_Read_MAC_Address_Raw(uint8_t mac[7]);
void EF_Ctrl_Writelock_MAC_Address(uint8_t program);
BL_Err_Type EF_Ctrl_Read_Chip_ID(uint8_t id[8]);
void EF_Ctrl_Read_Device_Info(Efuse_Device_Info_Type *deviceInfo);
void EF_Ctrl_Write_AES_Key(uint8_t index,uint32_t *keyData,uint32_t len,uint8_t program);
void EF_Ctrl_Read_AES_Key(uint8_t index,uint32_t *keyData,uint32_t len);
void EF_Ctrl_Writelock_AES_Key(uint8_t index,uint8_t program);
void EF_Ctrl_Readlock_AES_Key(uint8_t index,uint8_t program);
void EF_Ctrl_Program_Direct_R0(uint32_t index, uint32_t *data, uint32_t len);
void EF_Ctrl_Read_Direct_R0(uint32_t index, uint32_t *data, uint32_t len);
void EF_Ctrl_Program_Direct(uint32_t index, uint32_t *data, uint32_t len);
void EF_Ctrl_Read_Direct(uint32_t index, uint32_t *data, uint32_t len);
void EF_Ctrl_Clear(uint32_t index, uint32_t len);
void EF_Ctrl_Crc_Enable(void);
BL_Sts_Type EF_Ctrl_Crc_Is_Busy(void);
void EF_Ctrl_Crc_Set_Golden(uint32_t goldenValue);
BL_Err_Type EF_Ctrl_Crc_Result(void);
void EF_Ctrl_Sw_AHB_Clk_0(void);
uint8_t EF_Ctrl_Is_MAC_Address_Slot_Empty(uint8_t slot,uint8_t reload);
BL_Err_Type EF_Ctrl_Write_MAC_Address_Opt(uint8_t slot,uint8_t mac[6],uint8_t program);
BL_Err_Type EF_Ctrl_Read_MAC_Address_Opt(uint8_t slot,uint8_t mac[6],uint8_t reload);
uint8_t EF_Ctrl_Is_CapCode_Slot_Empty(uint8_t slot,uint8_t reload);
BL_Err_Type EF_Ctrl_Write_CapCode_Opt(uint8_t slot,uint8_t code,uint8_t program);
BL_Err_Type EF_Ctrl_Read_CapCode_Opt(uint8_t slot,uint8_t *code,uint8_t reload);
uint8_t EF_Ctrl_Is_PowerOffset_Slot_Empty(uint8_t slot,uint8_t reload);
BL_Err_Type EF_Ctrl_Write_PowerOffset_Opt(uint8_t slot,int8_t pwrOffset[3],uint8_t program);
BL_Err_Type EF_Ctrl_Read_PowerOffset_Opt(uint8_t slot,int8_t pwrOffset[3],uint8_t reload);
void EF_Ctrl_Write_R0(uint32_t index, uint32_t *data, uint32_t len);
void EF_Ctrl_Read_R0(uint32_t index, uint32_t *data, uint32_t len);
BL_Err_Type EF_Ctrl_Read_Ldo11VoutSel_Opt(uint8_t *Ldo11VoutSelValue);
BL_Err_Type EF_Ctrl_Read_TxPower_ATE(int8_t *TxPower,uint8_t *slot);
# 44 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h" 2
# 76 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h"
BL_Err_Type AON_Power_On_MBG(void);
BL_Err_Type AON_Power_Off_MBG(void);

BL_Err_Type AON_Power_On_XTAL(void);
BL_Err_Type AON_Set_Xtal_CapCode(uint8_t capIn,uint8_t capOut);
uint8_t AON_Get_Xtal_CapCode(void);
BL_Err_Type AON_Power_Off_XTAL(void);

BL_Err_Type AON_Power_On_BG(void);
BL_Err_Type AON_Power_Off_BG(void);

BL_Err_Type AON_Power_On_LDO11_SOC(void);
BL_Err_Type AON_Power_Off_LDO11_SOC(void);

BL_Err_Type AON_Power_On_LDO15_RF(void);
BL_Err_Type AON_Power_Off_LDO15_RF(void);

BL_Err_Type AON_Power_On_SFReg(void);
BL_Err_Type AON_Power_Off_SFReg(void);

BL_Err_Type AON_LowPower_Enter_PDS0(void);
BL_Err_Type AON_LowPower_Exit_PDS0(void);

BL_Err_Type AON_Set_LDO11_SOC_Sstart_Delay(uint8_t delay);
              ;
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 2
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h" 1
# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h" 1
# 39 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
# 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/sf_ctrl_reg.h" 1
# 1295 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/sf_ctrl_reg.h"
struct sf_ctrl_reg {

    union {
        struct
        {
            uint32_t reserved_0_1 : 2;
            uint32_t sf_clk_sf_rx_inv_sel : 1;
            uint32_t sf_clk_out_gate_en : 1;
            uint32_t sf_clk_out_inv_sel : 1;
            uint32_t sf_clk_sahb_sram_sel : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t sf_if_read_dly_n : 3;
            uint32_t sf_if_read_dly_en : 1;
            uint32_t reserved_12_15 : 4;
            uint32_t sf_if_int : 1;
            uint32_t sf_if_int_clr : 1;
            uint32_t sf_if_int_set : 1;
            uint32_t sf_aes_dly_mode : 1;
            uint32_t sf_aes_dout_endian : 1;
            uint32_t sf_aes_ctr_plus_en : 1;
            uint32_t sf_aes_key_endian : 1;
            uint32_t sf_aes_iv_endian : 1;
            uint32_t sf_id : 8;
        } BF;
        uint32_t WORD;
    } sf_ctrl_0;


    union {
        struct
        {
            uint32_t sf_if_sr_pat_mask : 8;
            uint32_t sf_if_sr_pat : 8;
            uint32_t sf_if_sr_int : 1;
            uint32_t sf_if_sr_int_en : 1;
            uint32_t sf_if_sr_int_set : 1;
            uint32_t reserved_19 : 1;
            uint32_t sf_if_0_ack_lat : 3;
            uint32_t reserved_23 : 1;
            uint32_t sf_if_reg_hold : 1;
            uint32_t sf_if_reg_wp : 1;
            uint32_t sf_ahb2sif_stopped : 1;
            uint32_t sf_ahb2sif_stop : 1;
            uint32_t sf_if_fn_sel : 1;
            uint32_t sf_if_en : 1;
            uint32_t sf_ahb2sif_en : 1;
            uint32_t sf_ahb2sram_en : 1;
        } BF;
        uint32_t WORD;
    } sf_ctrl_1;


    union {
        struct sf_if_sahb {
            uint32_t sf_if_busy : 1;
            uint32_t sf_if_0_trig : 1;
            uint32_t sf_if_0_dat_byte : 10;
            uint32_t sf_if_0_dmy_byte : 5;
            uint32_t sf_if_0_adr_byte : 3;
            uint32_t sf_if_0_cmd_byte : 3;
            uint32_t sf_if_0_dat_rw : 1;
            uint32_t sf_if_0_dat_en : 1;
            uint32_t sf_if_0_dmy_en : 1;
            uint32_t sf_if_0_adr_en : 1;
            uint32_t sf_if_0_cmd_en : 1;
            uint32_t sf_if_0_spi_mode : 3;
            uint32_t sf_if_0_qpi_mode_en : 1;
        } BF;
        uint32_t WORD;
    } sf_if_sahb_0;


    union {
        struct
        {
            uint32_t sf_if_0_cmd_buf_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_sahb_1;


    union {
        struct
        {
            uint32_t sf_if_0_cmd_buf_1 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_sahb_2;


    union {
        struct sf_if_iahb {
            uint32_t reserved_0_11 : 12;
            uint32_t sf_if_1_dmy_byte : 5;
            uint32_t sf_if_1_adr_byte : 3;
            uint32_t sf_if_1_cmd_byte : 3;
            uint32_t sf_if_1_dat_rw : 1;
            uint32_t sf_if_1_dat_en : 1;
            uint32_t sf_if_1_dmy_en : 1;
            uint32_t sf_if_1_adr_en : 1;
            uint32_t sf_if_1_cmd_en : 1;
            uint32_t sf_if_1_spi_mode : 3;
            uint32_t sf_if_1_qpi_mode_en : 1;
        } BF;
        uint32_t WORD;
    } sf_if_iahb_0;


    union {
        struct
        {
            uint32_t sf_if_1_cmd_buf_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_iahb_1;


    union {
        struct
        {
            uint32_t sf_if_1_cmd_buf_1 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_iahb_2;


    union {
        struct
        {
            uint32_t sf_if_status_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_status_0;


    union {
        struct
        {
            uint32_t sf_if_status_1 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_status_1;


    union {
        struct
        {
            uint32_t sf_aes_en : 1;
            uint32_t sf_aes_mode : 2;
            uint32_t sf_aes_pref_trig : 1;
            uint32_t sf_aes_pref_busy : 1;
            uint32_t sf_aes_status : 27;
        } BF;
        uint32_t WORD;
    } sf_aes;


    union {
        struct
        {
            uint32_t sf_ahb2sif_status : 32;
        } BF;
        uint32_t WORD;
    } sf_ahb2sif_status;


    union {
        struct
        {
            uint32_t sf_cs_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf_clk_out_dly_sel : 2;
            uint32_t reserved_10_25 : 16;
            uint32_t sf_dqs_oe_dly_sel : 2;
            uint32_t sf_dqs_di_dly_sel : 2;
            uint32_t sf_dqs_do_dly_sel : 2;
        } BF;
        uint32_t WORD;
    } sf_if_io_dly_0;


    union {
        struct
        {
            uint32_t sf_io_0_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf_io_0_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf_io_0_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf_if_io_dly_1;


    union {
        struct
        {
            uint32_t sf_io_1_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf_io_1_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf_io_1_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf_if_io_dly_2;


    union {
        struct
        {
            uint32_t sf_io_2_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf_io_2_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf_io_2_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf_if_io_dly_3;


    union {
        struct
        {
            uint32_t sf_io_3_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf_io_3_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf_io_3_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf_if_io_dly_4;


    union {
        struct
        {
            uint32_t sf_reserved : 32;
        } BF;
        uint32_t WORD;
    } sf_reserved;


    union {
        struct
        {
            uint32_t sf2_cs_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf2_clk_out_dly_sel : 2;
            uint32_t reserved_10_25 : 16;
            uint32_t sf2_dqs_oe_dly_sel : 2;
            uint32_t sf2_dqs_di_dly_sel : 2;
            uint32_t sf2_dqs_do_dly_sel : 2;
        } BF;
        uint32_t WORD;
    } sf2_if_io_dly_0;


    union {
        struct
        {
            uint32_t sf2_io_0_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf2_io_0_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf2_io_0_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf2_if_io_dly_1;


    union {
        struct
        {
            uint32_t sf2_io_1_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf2_io_1_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf2_io_1_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf2_if_io_dly_2;


    union {
        struct
        {
            uint32_t sf2_io_2_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf2_io_2_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf2_io_2_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf2_if_io_dly_3;


    union {
        struct
        {
            uint32_t sf2_io_3_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf2_io_3_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf2_io_3_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf2_if_io_dly_4;


    union {
        struct
        {
            uint32_t sf3_cs_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf3_clk_out_dly_sel : 2;
            uint32_t reserved_10_25 : 16;
            uint32_t sf3_dqs_oe_dly_sel : 2;
            uint32_t sf3_dqs_di_dly_sel : 2;
            uint32_t sf3_dqs_do_dly_sel : 2;
        } BF;
        uint32_t WORD;
    } sf3_if_io_dly_0;


    union {
        struct
        {
            uint32_t sf3_io_0_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf3_io_0_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf3_io_0_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf3_if_io_dly_1;


    union {
        struct
        {
            uint32_t sf3_io_1_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf3_io_1_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf3_io_1_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf3_if_io_dly_2;


    union {
        struct
        {
            uint32_t sf3_io_2_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf3_io_2_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf3_io_2_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf3_if_io_dly_3;


    union {
        struct
        {
            uint32_t sf3_io_3_oe_dly_sel : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t sf3_io_3_di_dly_sel : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t sf3_io_3_do_dly_sel : 2;
            uint32_t reserved_18_31 : 14;
        } BF;
        uint32_t WORD;
    } sf3_if_io_dly_4;


    union {
        struct
        {
            uint32_t sf_if_pad_sel : 2;
            uint32_t reserved_2 : 1;
            uint32_t sf_if_pad_sel_lock : 1;
            uint32_t sf_if_dtr_en : 1;
            uint32_t sf_if_dqs_en : 1;
            uint32_t reserved_6_31 : 26;
        } BF;
        uint32_t WORD;
    } sf_ctrl_2;


    union {
        struct
        {
            uint32_t sf_cmds_wrap_len : 4;
            uint32_t sf_cmds_en : 1;
            uint32_t sf_cmds_bt_dly : 3;
            uint32_t sf_cmds_bt_en : 1;
            uint32_t sf_cmds_wrap_q_ini : 1;
            uint32_t sf_cmds_wrap_mode : 1;
            uint32_t reserved_11_28 : 18;
            uint32_t sf_if_1_ack_lat : 3;
        } BF;
        uint32_t WORD;
    } sf_ctrl_3;


    union {
        struct
        {
            uint32_t reserved_0_11 : 12;
            uint32_t sf_if_2_dmy_byte : 5;
            uint32_t sf_if_2_adr_byte : 3;
            uint32_t sf_if_2_cmd_byte : 3;
            uint32_t sf_if_2_dat_rw : 1;
            uint32_t sf_if_2_dat_en : 1;
            uint32_t sf_if_2_dmy_en : 1;
            uint32_t sf_if_2_adr_en : 1;
            uint32_t sf_if_2_cmd_en : 1;
            uint32_t sf_if_2_spi_mode : 3;
            uint32_t sf_if_2_qpi_mode_en : 1;
        } BF;
        uint32_t WORD;
    } sf_if_iahb_3;


    union {
        struct
        {
            uint32_t sf_if_2_cmd_buf_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_iahb_4;


    union {
        struct
        {
            uint32_t sf_if_2_cmd_buf_1 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_iahb_5;


    union {
        struct
        {
            uint32_t reserved_0_19 : 20;
            uint32_t sf_if_3_cmd_byte : 3;
            uint32_t reserved_23_27 : 5;
            uint32_t sf_if_3_spi_mode : 3;
            uint32_t sf_if_3_qpi_mode_en : 1;
        } BF;
        uint32_t WORD;
    } sf_if_iahb_6;


    union {
        struct
        {
            uint32_t sf_if_3_cmd_buf_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_if_iahb_7;


    uint8_t RESERVED0x8c[116];


    union {
        struct
        {
            uint32_t sf_ctrl_prot_en_rd : 1;
            uint32_t sf_ctrl_id0_en_rd : 1;
            uint32_t sf_ctrl_id1_en_rd : 1;
            uint32_t reserved_3_29 : 27;
            uint32_t sf_if_0_trig_wr_lock : 1;
            uint32_t sf_dbg_dis : 1;
        } BF;
        uint32_t WORD;
    } sf_ctrl_prot_en_rd;


    union {
        struct
        {
            uint32_t sf_ctrl_prot_en : 1;
            uint32_t sf_ctrl_id0_en : 1;
            uint32_t sf_ctrl_id1_en : 1;
            uint32_t reserved_3_31 : 29;
        } BF;
        uint32_t WORD;
    } sf_ctrl_prot_en;


    uint8_t RESERVED0x108[248];


    union {
        struct
        {
            uint32_t sf_aes_key_r0_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r0_0;


    union {
        struct
        {
            uint32_t sf_aes_key_r0_1 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r0_1;


    union {
        struct
        {
            uint32_t sf_aes_key_r0_2 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r0_2;


    union {
        struct
        {
            uint32_t sf_aes_key_r0_3 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r0_3;


    union {
        struct
        {
            uint32_t sf_aes_key_r0_4 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r0_4;


    union {
        struct
        {
            uint32_t sf_aes_key_r0_5 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r0_5;


    union {
        struct
        {
            uint32_t sf_aes_key_r0_6 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r0_6;


    union {
        struct
        {
            uint32_t sf_aes_key_r0_7 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r0_7;


    union {
        struct
        {
            uint32_t sf_aes_iv_r0_w0 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r0_w0;


    union {
        struct
        {
            uint32_t sf_aes_iv_r0_w1 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r0_w1;


    union {
        struct
        {
            uint32_t sf_aes_iv_r0_w2 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r0_w2;


    union {
        struct
        {
            uint32_t sf_aes_iv_r0_w3 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r0_w3;


    union {
        struct
        {
            uint32_t sf_aes_region_r0_end : 14;
            uint32_t sf_aes_region_r0_start : 14;
            uint32_t reserved_28 : 1;
            uint32_t sf_aes_region_r0_hw_key_en : 1;
            uint32_t sf_aes_region_r0_en : 1;
            uint32_t sf_aes_region_r0_lock : 1;
        } BF;
        uint32_t WORD;
    } sf_aes_cfg_r0;


    uint8_t RESERVED0x234[204];


    union {
        struct
        {
            uint32_t sf_aes_key_r1_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r1_0;


    union {
        struct
        {
            uint32_t sf_aes_key_r1_1 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r1_1;


    union {
        struct
        {
            uint32_t sf_aes_key_r1_2 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r1_2;


    union {
        struct
        {
            uint32_t sf_aes_key_r1_3 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r1_3;


    union {
        struct
        {
            uint32_t sf_aes_key_r1_4 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r1_4;


    union {
        struct
        {
            uint32_t sf_aes_key_r1_5 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r1_5;


    union {
        struct
        {
            uint32_t sf_aes_key_r1_6 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r1_6;


    union {
        struct
        {
            uint32_t sf_aes_key_r1_7 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r1_7;


    union {
        struct
        {
            uint32_t sf_aes_iv_r1_w0 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r1_w0;


    union {
        struct
        {
            uint32_t sf_aes_iv_r1_w1 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r1_w1;


    union {
        struct
        {
            uint32_t sf_aes_iv_r1_w2 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r1_w2;


    union {
        struct
        {
            uint32_t sf_aes_iv_r1_w3 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r1_w3;


    union {
        struct
        {
            uint32_t sf_aes_r1_end : 14;
            uint32_t sf_aes_r1_start : 14;
            uint32_t reserved_28 : 1;
            uint32_t sf_aes_r1_hw_key_en : 1;
            uint32_t sf_aes_r1_en : 1;
            uint32_t sf_aes_r1_lock : 1;
        } BF;
        uint32_t WORD;
    } sf_aes_r1;


    uint8_t RESERVED0x334[204];


    union {
        struct
        {
            uint32_t sf_aes_key_r2_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r2_0;


    union {
        struct
        {
            uint32_t sf_aes_key_r2_1 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r2_1;


    union {
        struct
        {
            uint32_t sf_aes_key_r2_2 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r2_2;


    union {
        struct
        {
            uint32_t sf_aes_key_r2_3 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r2_3;


    union {
        struct
        {
            uint32_t sf_aes_key_r2_4 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r2_4;


    union {
        struct
        {
            uint32_t sf_aes_key_r2_5 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r2_5;


    union {
        struct
        {
            uint32_t sf_aes_key_r2_6 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r2_6;


    union {
        struct
        {
            uint32_t sf_aes_key_r2_7 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_r2_7;


    union {
        struct
        {
            uint32_t sf_aes_iv_r2_w0 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r2_w0;


    union {
        struct
        {
            uint32_t sf_aes_iv_r2_w1 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r2_w1;


    union {
        struct
        {
            uint32_t sf_aes_iv_r2_w2 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r2_w2;


    union {
        struct
        {
            uint32_t sf_aes_iv_r2_w3 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_r2_w3;


    union {
        struct
        {
            uint32_t sf_aes_r2_end : 14;
            uint32_t sf_aes_r2_start : 14;
            uint32_t reserved_28 : 1;
            uint32_t sf_aes_r2_hw_key_en : 1;
            uint32_t sf_aes_r2_en : 1;
            uint32_t sf_aes_r2_lock : 1;
        } BF;
        uint32_t WORD;
    } sf_aes_r2;


    union {
        struct
        {
            uint32_t sf_id0_offset : 24;
            uint32_t reserved_24_31 : 8;
        } BF;
        uint32_t WORD;
    } sf_id0_offset;


    union {
        struct
        {
            uint32_t sf_id1_offset : 24;
            uint32_t reserved_24_31 : 8;
        } BF;
        uint32_t WORD;
    } sf_id1_offset;
};

typedef volatile struct sf_ctrl_reg sf_ctrl_reg_t;
# 2322 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/sf_ctrl_reg.h"
struct sf_ctrl_aes_region_reg {

    union {
        struct
        {
            uint32_t sf_aes_key_0 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_0;


    union {
        struct
        {
            uint32_t sf_aes_key_1 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_1;


    union {
        struct
        {
            uint32_t sf_aes_key_2 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_2;


    union {
        struct
        {
            uint32_t sf_aes_key_3 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_3;


    union {
        struct
        {
            uint32_t sf_aes_key_4 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_4;


    union {
        struct
        {
            uint32_t sf_aes_key_5 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_5;


    union {
        struct
        {
            uint32_t sf_aes_key_6 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_6;


    union {
        struct
        {
            uint32_t sf_aes_key_7 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_key_7;


    union {
        struct
        {
            uint32_t sf_aes_iv_w0 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_w0;


    union {
        struct
        {
            uint32_t sf_aes_iv_w1 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_w1;


    union {
        struct
        {
            uint32_t sf_aes_iv_w2 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_w2;


    union {
        struct
        {
            uint32_t sf_aes_iv_w3 : 32;
        } BF;
        uint32_t WORD;
    } sf_aes_iv_w3;


    union {
        struct
        {
            uint32_t sf_aes_region_end : 14;
            uint32_t sf_aes_region_start : 14;
            uint32_t reserved_28 : 1;
            uint32_t sf_aes_region_hw_key_en : 1;
            uint32_t sf_aes_region_en : 1;
            uint32_t sf_aes_region_lock : 1;
        } BF;
        uint32_t WORD;
    } sf_aes_cfg;
};

typedef volatile struct sf_ctrl_aes_region_reg sf_ctrl_aes_region_reg_t;
# 40 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h" 2
# 57 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
typedef enum {
    SF_CTRL_EMBEDDED_SEL,
    SF_CTRL_EXTERNAL_17TO22_SEL,
    SF_CTRL_EXTERNAL_0TO2_20TO22_SEL,
}SF_Ctrl_Pad_Sel;




typedef enum {
    SF_CTRL_OWNER_SAHB,
    SF_CTRL_OWNER_IAHB,
}SF_Ctrl_Owner_Type;




typedef enum {
    SF_CTRL_SAHB_CLOCK,
    SF_CTRL_FLASH_CLOCK,
}SF_Ctrl_Sahb_Type;




typedef enum {
    HIGH_SPEED_MODE_CLOCK,
    REMOVE_CLOCK_CONSTRAIN,
}SF_Ctrl_Ahb2sif_Type;




typedef enum {
    SF_CTRL_READ,
    SF_CTRL_WRITE,
}SF_Ctrl_RW_Type;




typedef enum {
    SF_CTRL_NIO_MODE,
    SF_CTRL_DO_MODE,
    SF_CTRL_QO_MODE,
    SF_CTRL_DIO_MODE,
    SF_CTRL_QIO_MODE,
}SF_Ctrl_IO_Type;




typedef enum {
    SF_CTRL_SPI_MODE,
    SF_CTRL_QPI_MODE,
}SF_Ctrl_Mode_Type;




typedef enum {
    SF_CTRL_CMD_1_LINE,
    SF_CTRL_CMD_4_LINES,
}SF_Ctrl_Cmd_Mode_Type;




typedef enum {
    SF_CTRL_ADDR_1_LINE,
    SF_CTRL_ADDR_2_LINES,
    SF_CTRL_ADDR_4_LINES,
}SF_Ctrl_Addr_Mode_Type;




typedef enum {
    SF_CTRL_DUMMY_1_LINE,
    SF_CTRL_DUMMY_2_LINES,
    SF_CTRL_DUMMY_4_LINES,
}SF_Ctrl_Dmy_Mode_Type;




typedef enum {
    SF_CTRL_DATA_1_LINE,
    SF_CTRL_DATA_2_LINES,
    SF_CTRL_DATA_4_LINES,
}SF_Ctrl_Data_Mode_Type;




typedef enum {
    SF_CTRL_AES_128BITS,
    SF_CTRL_AES_256BITS,
    SF_CTRL_AES_192BITS,
    SF_CTRL_AES_128BITS_DOUBLE_KEY,
}SF_Ctrl_AES_Key_Type;




typedef struct {
    SF_Ctrl_Owner_Type owner;
    SF_Ctrl_Sahb_Type sahbClock;
    SF_Ctrl_Ahb2sif_Type ahb2sifMode;
    uint8_t clkDelay;
    uint8_t clkInvert;
    uint8_t rxClkInvert;
    uint8_t doDelay;
    uint8_t diDelay;
    uint8_t oeDelay;
}SF_Ctrl_Cfg_Type;




typedef struct {
    uint8_t rwFlag;
    SF_Ctrl_Cmd_Mode_Type cmdMode;
    SF_Ctrl_Addr_Mode_Type addrMode;
    uint8_t addrSize;
    uint8_t dummyClks;
    SF_Ctrl_Dmy_Mode_Type dummyMode;
    SF_Ctrl_Data_Mode_Type dataMode;
    uint8_t rsv[1];
    uint32_t nbData;
    uint32_t cmdBuf[2];
}SF_Ctrl_Cmd_Cfg_Type;
# 291 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
void SF_Ctrl_IRQHandler(void);

void SF_Ctrl_Enable(const SF_Ctrl_Cfg_Type *cfg);
void SF_Ctrl_Set_Owner(SF_Ctrl_Owner_Type owner);
void SF_Ctrl_Disable(void);
void SF_Ctrl_Select_Pad(SF_Ctrl_Pad_Sel sel);
void SF_Ctrl_AES_Enable_BE(void);
void SF_Ctrl_AES_Enable_LE(void);
void SF_Ctrl_AES_Set_Region(uint8_t region,uint8_t enable, uint8_t hwKey,uint32_t startAddr,
uint32_t endAddr,
                            uint8_t locked);
void SF_Ctrl_AES_Set_Key(uint8_t region,uint8_t *key, SF_Ctrl_AES_Key_Type keyType);
void SF_Ctrl_AES_Set_Key_BE(uint8_t region,uint8_t *key, SF_Ctrl_AES_Key_Type keyType);
void SF_Ctrl_AES_Set_IV(uint8_t region,uint8_t *iv,uint32_t addrOffset);
void SF_Ctrl_AES_Set_IV_BE(uint8_t region,uint8_t *iv,uint32_t addrOffset);
void SF_Ctrl_AES_Enable(void);
void SF_Ctrl_AES_Disable(void);
void SF_Ctrl_Set_Flash_Image_Offset(uint32_t addrOffset);
uint32_t SF_Ctrl_Get_Flash_Image_Offset(void);
void SF_Ctrl_Select_Clock(SF_Ctrl_Sahb_Type sahbType);
void SF_Ctrl_SendCmd(SF_Ctrl_Cmd_Cfg_Type *cfg);
void SF_Ctrl_Icache_Set(SF_Ctrl_Cmd_Cfg_Type *cfg,uint8_t cmdValid);
void SF_Ctrl_Icache2_Set(SF_Ctrl_Cmd_Cfg_Type *cfg,uint8_t cmdValid);
BL_Sts_Type SF_Ctrl_GetBusyState(void);
uint8_t SF_Ctrl_Is_AES_Enable(void);
uint8_t SF_Ctrl_Get_Clock_Delay(void);
void SF_Ctrl_Set_Clock_Delay(uint8_t delay);
# 41 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h" 2
# 57 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
typedef struct {
    uint8_t ioMode;
    uint8_t cReadSupport;
    uint8_t clkDelay;
    uint8_t clkInvert;
    uint8_t resetEnCmd;
    uint8_t resetCmd;
    uint8_t resetCreadCmd;
    uint8_t resetCreadCmdSize;
    uint8_t jedecIdCmd;
    uint8_t jedecIdCmdDmyClk;
    uint8_t qpiJedecIdCmd;
    uint8_t qpiJedecIdCmdDmyClk;
    uint8_t sectorSize;
    uint8_t mid;
    uint16_t pageSize;
    uint8_t chipEraseCmd;
    uint8_t sectorEraseCmd;
    uint8_t blk32EraseCmd;
    uint8_t blk64EraseCmd;
    uint8_t writeEnableCmd;
    uint8_t pageProgramCmd;
    uint8_t qpageProgramCmd;
    uint8_t qppAddrMode;
    uint8_t fastReadCmd;
    uint8_t frDmyClk;
    uint8_t qpiFastReadCmd;
    uint8_t qpiFrDmyClk;
    uint8_t fastReadDoCmd;
    uint8_t frDoDmyClk;
    uint8_t fastReadDioCmd;
    uint8_t frDioDmyClk;
    uint8_t fastReadQoCmd;
    uint8_t frQoDmyClk;
    uint8_t fastReadQioCmd;
    uint8_t frQioDmyClk;
    uint8_t qpiFastReadQioCmd;
    uint8_t qpiFrQioDmyClk;
    uint8_t qpiPageProgramCmd;
    uint8_t writeVregEnableCmd;
    uint8_t wrEnableIndex;
    uint8_t qeIndex;
    uint8_t busyIndex;
    uint8_t wrEnableBit;
    uint8_t qeBit;
    uint8_t busyBit;
    uint8_t wrEnableWriteRegLen;
    uint8_t wrEnableReadRegLen;
    uint8_t qeWriteRegLen;
    uint8_t qeReadRegLen;
    uint8_t releasePowerDown;
    uint8_t busyReadRegLen;
    uint8_t readRegCmd[4];
    uint8_t writeRegCmd[4];
    uint8_t enterQpi;
    uint8_t exitQpi;
    uint8_t cReadMode;
    uint8_t cRExit;
    uint8_t burstWrapCmd;
    uint8_t burstWrapCmdDmyClk;
    uint8_t burstWrapDataMode;
    uint8_t burstWrapData;
    uint8_t deBurstWrapCmd;
    uint8_t deBurstWrapCmdDmyClk;
    uint8_t deBurstWrapDataMode;
    uint8_t deBurstWrapData;
    uint16_t timeEsector;
    uint16_t timeE32k;
    uint16_t timeE64k;
    uint16_t timePagePgm;
    uint16_t timeCe;
    uint8_t pdDelay;
    uint8_t qeData;
}__attribute__ ((packed)) SPI_Flash_Cfg_Type;
# 152 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
void SFlash_Init(const SF_Ctrl_Cfg_Type *sfCtrlCfg);
BL_Err_Type SFlash_SetSPIMode(SF_Ctrl_Mode_Type mode);
BL_Err_Type SFlash_Read_Reg(SPI_Flash_Cfg_Type *flashCfg,uint8_t regIndex,uint8_t *regValue,uint8_t regLen);
BL_Err_Type SFlash_Write_Reg(SPI_Flash_Cfg_Type *flashCfg,uint8_t regIndex,uint8_t *regValue,uint8_t regLen);
BL_Sts_Type SFlash_Busy(SPI_Flash_Cfg_Type *flashCfg);
BL_Err_Type SFlash_Write_Enable(SPI_Flash_Cfg_Type *flashCfg);
BL_Err_Type SFlash_Qspi_Enable(SPI_Flash_Cfg_Type *flashCfg);
void SFlash_Volatile_Reg_Write_Enable(SPI_Flash_Cfg_Type *flashCfg);
BL_Err_Type SFlash_Chip_Erase(SPI_Flash_Cfg_Type *flashCfg);
BL_Err_Type SFlash_Sector_Erase(SPI_Flash_Cfg_Type *flashCfg,uint32_t secNum);
BL_Err_Type SFlash_Blk32_Erase(SPI_Flash_Cfg_Type *flashCfg,uint32_t blkNum);
BL_Err_Type SFlash_Blk64_Erase(SPI_Flash_Cfg_Type *flashCfg,uint32_t blkNum);
BL_Err_Type SFlash_Erase(SPI_Flash_Cfg_Type *flashCfg,uint32_t startaddr,uint32_t endaddr);
BL_Err_Type SFlash_Program(SPI_Flash_Cfg_Type *flashCfg,SF_Ctrl_IO_Type ioMode,uint32_t addr,uint8_t *data, uint32_t len);
void SFlash_GetUniqueId(uint8_t *data,uint8_t idLen);
void SFlash_GetJedecId(SPI_Flash_Cfg_Type *flashCfg,uint8_t *data);
void SFlash_GetDeviceId(uint8_t *data);
void SFlash_Powerdown(void);
void SFlash_Releae_Powerdown(SPI_Flash_Cfg_Type *flashCfg);
void SFlash_SetBurstWrap(SPI_Flash_Cfg_Type *flashCfg);
void SFlash_DisableBurstWrap(SPI_Flash_Cfg_Type *flashCfg);
BL_Err_Type SFlash_Software_Reset(SPI_Flash_Cfg_Type *flashCfg);
void SFlash_Reset_Continue_Read(SPI_Flash_Cfg_Type *flashCfg);
BL_Err_Type SFlash_Set_IDbus_Cfg(SPI_Flash_Cfg_Type *flashCfg,SF_Ctrl_IO_Type ioMode,uint8_t contRead,uint32_t addr,
                                 uint32_t len);
BL_Err_Type SFlash_IDbus_Read_Enable(SPI_Flash_Cfg_Type *flashCfg,SF_Ctrl_IO_Type ioMode,uint8_t contRead);
BL_Err_Type SFlash_Cache_Enable_Set(uint8_t wayDisable);
BL_Err_Type SFlash_Cache_Flush(void);
BL_Err_Type SFlash_Cache_Read_Enable(SPI_Flash_Cfg_Type *flashCfg,SF_Ctrl_IO_Type ioMode,uint8_t contRead,
                                     uint8_t wayDisable);
void SFlash_Cache_Hit_Count_Get(uint32_t *hitCountLow,uint32_t *hitCountHigh);
uint32_t SFlash_Cache_Miss_Count_Get(void);
void SFlash_Cache_Read_Disable(void);
BL_Err_Type SFlash_Read(SPI_Flash_Cfg_Type *flashCfg,SF_Ctrl_IO_Type ioMode,uint8_t contRead,uint32_t addr,uint8_t *data,
                        uint32_t len);
BL_Err_Type SFlash_Read_Reg_With_Cmd(SPI_Flash_Cfg_Type *flashCfg,uint8_t readRegCmd,uint8_t *regValue,
                                     uint8_t regLen);
BL_Err_Type SFlash_Write_Reg_With_Cmd(SPI_Flash_Cfg_Type *flashCfg,uint8_t writeRegCmd,uint8_t *regValue,
                                      uint8_t regLen);
# 42 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 2
# 59 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
typedef struct {
    BL_Fun_Type lowIntEn;
    BL_Fun_Type highIntEn;
}HBN_PIR_INT_CFG_Type;




typedef enum {
    HBN_PIR_LPF_DIV1,
    HBN_PIR_LPF_DIV2,
}HBN_PIR_LPF_Type;




typedef enum {
    HBN_PIR_HPF_METHOD0,
    HBN_PIR_HPF_METHOD1,
    HBN_PIR_HPF_METHOD2,
}HBN_PIR_HPF_Type;




typedef enum {
    HBN_BOR_THRES_2P0V,
    HBN_BOR_THRES_2P4V,
}HBN_BOR_THRES_Type;




typedef enum {
    HBN_BOR_MODE_POR_INDEPENDENT,
    HBN_BOR_MODE_POR_RELEVANT,
}HBN_BOR_MODE_Type;




typedef enum {
    HBN_32K_RC=0,
    HBN_32K_XTAL,
    HBN_32K_DIG=3,
}HBN_32K_CLK_Type;




typedef enum {
    HBN_XCLK_CLK_RC32M,
    HBN_XCLK_CLK_XTAL,
}HBN_XCLK_CLK_Type;




typedef enum {
    HBN_ROOT_CLK_RC32M,
    HBN_ROOT_CLK_XTAL,
    HBN_ROOT_CLK_PLL,
}HBN_ROOT_CLK_Type;




typedef enum {
    HBN_UART_CLK_FCLK=0,
    HBN_UART_CLK_160M,
}HBN_UART_CLK_Type;




typedef enum {
    HBN_RTC_INT_DELAY_32T=0,
    HBN_RTC_INT_DELAY_0T=1,
}HBN_RTC_INT_Delay_Type;




typedef enum {
    HBN_INT_GPIO7=0,
    HBN_INT_GPIO8=1,
    HBN_INT_RTC=16,
    HBN_INT_PIR=17,
    HBN_INT_BOR=18,
    HBN_INT_ACOMP0=20,
    HBN_INT_ACOMP1=22,
}HBN_INT_Type;




typedef enum {
    HBN_ACOMP_INT_EDGE_POSEDGE=0,
    HBN_ACOMP_INT_EDGE_NEGEDGE=1,
}HBN_ACOMP_INT_EDGE_Type;




typedef enum {
    HBN_GPIO_INT_TRIGGER_SYNC_FALLING_EDGE,
    HBN_GPIO_INT_TRIGGER_SYNC_RISING_EDGE,
    HBN_GPIO_INT_TRIGGER_SYNC_LOW_LEVEL,
    HBN_GPIO_INT_TRIGGER_SYNC_HIGH_LEVEL,
    HBN_GPIO_INT_TRIGGER_ASYNC_FALLING_EDGE,
    HBN_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE,
    HBN_GPIO_INT_TRIGGER_ASYNC_LOW_LEVEL,
    HBN_GPIO_INT_TRIGGER_ASYNC_HIGH_LEVEL,
}HBN_GPIO_INT_Trigger_Type;




typedef enum {
    HBN_OUT0_INT_GPIO7=0,
    HBN_OUT0_INT_GPIO8,
    HBN_OUT0_INT_RTC,
}HBN_OUT0_INT_Type;




typedef enum {
    HBN_OUT1_INT_PIR,
    HBN_OUT1_INT_BOR,
    HBN_OUT1_INT_ACOMP0,
    HBN_OUT1_INT_ACOMP1,
}HBN_OUT1_INT_Type;




typedef enum {
    HBN_LDO_LEVEL_0P60V=0,
    HBN_LDO_LEVEL_0P65V=1,
    HBN_LDO_LEVEL_0P70V=2,
    HBN_LDO_LEVEL_0P75V=3,
    HBN_LDO_LEVEL_0P80V=4,
    HBN_LDO_LEVEL_0P85V=5,
    HBN_LDO_LEVEL_0P90V=6,
    HBN_LDO_LEVEL_0P95V=7,
    HBN_LDO_LEVEL_1P00V=8,
    HBN_LDO_LEVEL_1P05V=9,
    HBN_LDO_LEVEL_1P10V=10,
    HBN_LDO_LEVEL_1P15V=11,
    HBN_LDO_LEVEL_1P20V=12,
    HBN_LDO_LEVEL_1P25V=13,
    HBN_LDO_LEVEL_1P30V=14,
    HBN_LDO_LEVEL_1P35V=15,
}HBN_LDO_LEVEL_Type;




typedef enum {
    HBN_LEVEL_0,
    HBN_LEVEL_1,
    HBN_LEVEL_2,
    HBN_LEVEL_3,
}HBN_LEVEL_Type;




typedef struct {
    uint8_t enableBor;
    uint8_t enableBorInt;
    uint8_t borThreshold;
    uint8_t enablePorInBor;
}HBN_BOR_CFG_Type;




typedef struct {
    uint8_t useXtal32k;
    uint32_t sleepTime;
    uint8_t gpioWakeupSrc;
    HBN_GPIO_INT_Trigger_Type gpioTrigType;
    SPI_Flash_Cfg_Type *flashCfg;
    HBN_LEVEL_Type hbnLevel;
    HBN_LDO_LEVEL_Type ldoLevel;
}HBN_APP_CFG_Type;
# 406 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
void HBN_OUT0_IRQHandler(void);
void HBN_OUT1_IRQHandler(void);


void HBN_Mode_Enter(HBN_APP_CFG_Type *cfg);
void HBN_Mode_Enter_Ext(HBN_APP_CFG_Type *cfg);
void HBN_Power_Down_Flash(SPI_Flash_Cfg_Type *flashCfg);
void HBN_Enable(uint8_t aGPIOIeCfg,HBN_LDO_LEVEL_Type ldoLevel,HBN_LEVEL_Type hbnLevel);
void HBN_Enable_Ext(uint8_t aGPIOIeCfg,HBN_LDO_LEVEL_Type ldoLevel,HBN_LEVEL_Type hbnLevel);
BL_Err_Type HBN_Reset(void);
BL_Err_Type HBN_App_Reset(uint8_t npXtalType,uint8_t bclkDiv,uint8_t apXtalType,uint8_t fclkDiv);
BL_Err_Type HBN_Disable(void);

BL_Err_Type HBN_PIR_Enable(void);
BL_Err_Type HBN_PIR_Disable(void);
BL_Err_Type HBN_PIR_INT_Config(HBN_PIR_INT_CFG_Type* pirIntCfg);
BL_Err_Type HBN_PIR_LPF_Sel(HBN_PIR_LPF_Type lpf);
BL_Err_Type HBN_PIR_HPF_Sel(HBN_PIR_HPF_Type hpf);
BL_Err_Type HBN_Set_PIR_Threshold(uint16_t threshold);
uint16_t HBN_Get_PIR_Threshold(void);
BL_Err_Type HBN_Set_PIR_Interval(uint16_t interval);
uint16_t HBN_Get_PIR_Interval(void);

BL_Sts_Type HBN_Get_BOR_OUT_State(void);
BL_Err_Type HBN_Set_BOR_Config(uint8_t enable,HBN_BOR_THRES_Type threshold,HBN_BOR_MODE_Type mode);

BL_Err_Type HBN_Set_Ldo11_Aon_Vout(HBN_LDO_LEVEL_Type ldoLevel);
BL_Err_Type HBN_Set_Ldo11_Rt_Vout(HBN_LDO_LEVEL_Type ldoLevel);
BL_Err_Type HBN_Set_Ldo11_Soc_Vout(HBN_LDO_LEVEL_Type ldoLevel);
BL_Err_Type HBN_Set_Ldo11_All_Vout(HBN_LDO_LEVEL_Type ldoLevel);

BL_Err_Type HBN_32K_Sel(HBN_32K_CLK_Type clkType);
BL_Err_Type HBN_Set_UART_CLK_Sel(HBN_UART_CLK_Type clkSel);
BL_Err_Type HBN_Set_XCLK_CLK_Sel(HBN_XCLK_CLK_Type xClk);
HBN_ROOT_CLK_Type HBN_Get_Root_CLK_Sel(void);
BL_Err_Type HBN_Set_ROOT_CLK_Sel(HBN_ROOT_CLK_Type rootClk);

BL_Err_Type HBN_Set_HRAM_slp(void);
BL_Err_Type HBN_Set_HRAM_Ret(void);

uint32_t HBN_Get_Status_Flag(void);
BL_Err_Type HBN_Set_Status_Flag(uint32_t flag);
uint32_t HBN_Get_Wakeup_Addr(void);
BL_Err_Type HBN_Set_Wakeup_Addr(uint32_t addr);

BL_Err_Type HBN_Clear_RTC_Counter(void);
BL_Err_Type HBN_Enable_RTC_Counter(void);
BL_Err_Type HBN_Set_RTC_Timer(HBN_RTC_INT_Delay_Type delay,uint32_t compValLow,uint32_t compValHigh,uint8_t compMode);
BL_Err_Type HBN_Get_RTC_Timer_Val(uint32_t *valLow,uint32_t *valHigh);
BL_Err_Type HBN_Clear_RTC_IRQ(void);

BL_Err_Type HBN_GPIO_INT_Enable(HBN_GPIO_INT_Trigger_Type gpioIntTrigType);
BL_Err_Type HBN_GPIO_INT_Disable(void);
BL_Sts_Type HBN_Get_INT_State(HBN_INT_Type irqType);
uint8_t HBN_Get_Pin_Wakeup_Mode(void);
BL_Err_Type HBN_Clear_IRQ(HBN_INT_Type irqType);
BL_Err_Type HBN_Hw_Pu_Pd_Cfg(uint8_t enable);
BL_Err_Type HBN_Aon_Pad_IeSmt_Cfg(uint8_t padCfg);
BL_Err_Type HBN_Pin_WakeUp_Mask(uint8_t maskVal);

BL_Err_Type HBN_Enable_AComp0_IRQ(HBN_ACOMP_INT_EDGE_Type edge);
BL_Err_Type HBN_Disable_AComp0_IRQ(HBN_ACOMP_INT_EDGE_Type edge);
BL_Err_Type HBN_Enable_AComp1_IRQ(HBN_ACOMP_INT_EDGE_Type edge);
BL_Err_Type HBN_Disable_AComp1_IRQ(HBN_ACOMP_INT_EDGE_Type edge);

BL_Err_Type HBN_Enable_BOR_IRQ(void);
BL_Err_Type HBN_Disable_BOR_IRQ(void);

BL_Err_Type HBN_Out0_IRQHandler_Install(void);
BL_Err_Type HBN_Out0_Callback_Install(HBN_OUT0_INT_Type intType,intCallback_Type* cbFun);
BL_Err_Type HBN_Out1_IRQHandler_Install(void);
BL_Err_Type HBN_Out1_Callback_Install(HBN_OUT1_INT_Type intType,intCallback_Type* cbFun);

BL_Err_Type HBN_GPIO7_Dbg_Pull_Cfg(BL_Fun_Type pupdEn,BL_Fun_Type iesmtEn,
                                                  BL_Fun_Type dlyEn,uint8_t dlySec);

BL_Err_Type HBN_Power_On_Xtal_32K(void);
BL_Err_Type HBN_Power_Off_Xtal_32K(void);
BL_Err_Type HBN_Power_On_RC32K(void);
BL_Err_Type HBN_Power_Off_RC32K(void);
BL_Err_Type HBN_Trim_RC32K(void);
BL_Err_Type HBN_Set_Embedded_Flash_Pullup(uint8_t enable);
BL_Err_Type HBN_Set_BOR_Cfg(HBN_BOR_CFG_Type *cfg);
# 51 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 2
# 72 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
extern struct k_fifo recv_fifo;
extern struct k_work_q g_work_queue_main;
# 84 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static struct k_thread tx_thread_data;





static void init_work(struct k_work *work);

struct bt_dev bt_dev = {
 .init = { ._reserved = 
# 93 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                 ((void *)0)
# 93 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 , .handler = init_work, .flags = { 0 } },






 .ncmd_sem = { },



 .cmd_tx_queue = { ._queue = { 0 } },
# 119 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
};

static bt_ready_cb_t ready_cb;

static bt_le_scan_cb_t *scan_dev_found_cb;

u8_t adv_ch_map = 0x7;


static bt_hci_vnd_evt_cb_t *hci_vnd_evt_cb;



static u8_t pub_key[64];
static struct bt_pub_key_cb *pub_key_cb;
static bt_dh_key_cb_t dh_key_cb;
# 150 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
struct blhast_cb *host_assist_cb;
# 171 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
struct cmd_state_set {
 atomic_t *target;
 int bit;
 
# 174 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 174 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
     val;
};


void hci_release_conn_related_cmd(void);


void cmd_state_set_init(struct cmd_state_set *state, atomic_t *target, int bit,
   
# 182 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
  _Bool 
# 182 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
       val)
{
 state->target = target;
 state->bit = bit;
 state->val = val;
}

struct cmd_data {

 u8_t status;


 u16_t opcode;


 struct cmd_state_set *state;




 struct k_sem *sync;
};

struct acl_data {

 u8_t type;


 u8_t id;


 u16_t handle;
};


extern struct k_sem g_poll_sem;


__attribute__((section(".tcm_data"))) static struct cmd_data cmd_data[2];
# 249 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
struct net_buf_pool hci_cmd_pool;
struct net_buf_pool hci_rx_pool;

struct net_buf_pool num_complete_pool;
# 263 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
struct event_handler {
 u8_t event;
 u8_t min_len;
 void (*handler)(struct net_buf *buf);
};
# 276 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static inline void handle_event(u8_t event, struct net_buf *buf,
    const struct event_handler *handlers,
    size_t num_handlers)
{
 size_t i;

 for (i = 0; i < num_handlers; i++) {
  const struct event_handler *handler = &handlers[i];

  if (handler->event != event) {
   continue;
  }

  if (buf->len < handler->min_len) {
   printf("Too small (%u bytes) event 0x%02x"", %s\r\n", buf->len, event, __func__)
                          ;
   return;
  }

  handler->handler(buf);
  return;
 }

 printf("Unhandled event 0x%02x len %u: %s"", %s\r\n", event, buf->len, log_strdup(bt_hex_real(buf->data, buf->len)), __func__)
                                        ;
}

static inline 
# 303 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
             _Bool 
# 303 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                  is_wl_empty(void)
{

 return !bt_dev.le.wl_entries;



}
# 371 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
struct net_buf *bt_hci_cmd_create(u16_t opcode, u8_t param_len)
{
 struct bt_hci_cmd_hdr *hdr;
 struct net_buf *buf;

 ;

 buf = net_buf_alloc_fixed(&hci_cmd_pool, -1);
 do { } while ((0));

 ;

 net_buf_simple_reserve(&(buf)->b, 1);

 bt_buf_set_type(buf, BT_BUF_CMD);

 (&cmd_data[net_buf_id(buf)])->opcode = opcode;
 (&cmd_data[net_buf_id(buf)])->sync = 
# 388 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                 ((void *)0)
# 388 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                     ;
 (&cmd_data[net_buf_id(buf)])->state = 
# 389 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                  ((void *)0)
# 389 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                      ;

 hdr = net_buf_simple_add(&(buf)->b, sizeof(*hdr));
 hdr->opcode = (opcode);
 hdr->param_len = param_len;

 return buf;
}

int bt_hci_cmd_send(u16_t opcode, struct net_buf *buf)
{
 if (!buf) {
  buf = bt_hci_cmd_create(opcode, 0);
  if (!buf) {
   return -
# 403 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          105
# 403 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
  }
 }

 ;




 if (opcode == ((0x0035) | ((0x03) << 10))) {
  int err;

  err = bt_send(buf);
  if (err) {
   printf("Unable to send to driver (err %d)"", %s\r\n", err, __func__);
   net_buf_unref(buf);
  }

  return err;
 }

 net_buf_put(&bt_dev.cmd_tx_queue, buf);

    k_sem_give(&g_poll_sem);

 return 0;
}
# 487 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
extern void blhast_bt_reset(void);
uint16_t hci_cmd_to_cnt = 0;

int bt_hci_cmd_send_sync(u16_t opcode, struct net_buf *buf,
    struct net_buf **rsp)
{
 struct k_sem sync_sem;
 int err;




 if (!buf) {
  buf = bt_hci_cmd_create(opcode, 0);
  if (!buf) {
   return -
# 502 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          105
# 502 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
  }
 }

 ;
# 519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 k_sem_init(&sync_sem, 0, 1);
 (&cmd_data[net_buf_id(buf)])->sync = &sync_sem;




    (&cmd_data[net_buf_id(buf)])->status = 0xff;



 net_buf_ref(buf);
# 546 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    net_buf_put(&bt_dev.cmd_tx_queue, buf);

    k_sem_give(&g_poll_sem);

 err = k_sem_take(&sync_sem, ((10) * 1000));

    k_sem_delete(&sync_sem);

 do { } while ((0));


 ;

 if ((&cmd_data[net_buf_id(buf)])->status) {
     switch ((&cmd_data[net_buf_id(buf)])->status) {
  case 0x09:
   err = -
# 562 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         111
# 562 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                     ;
   break;

     case 0xff:
      err = -
# 566 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
            62
# 566 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
            printf("k_sem_take timeout with opcode 0x%04x"", %s\r\n", opcode, __func__);

   printf("Restart and restore bt"", %s\r\n", __func__);
   hci_cmd_to_cnt++;
   if ((&cmd_data[net_buf_id(buf)])->state) {
         struct cmd_state_set *update = (&cmd_data[net_buf_id(buf)])->state;
         atomic_set_bit_to(update->target, update->bit, update->val);
   }
      blhast_bt_reset();



   break;

  default:
   err = -
# 582 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         5
# 582 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
            ;
   break;
  }

  net_buf_unref(buf);
 } else {
  err = 0;
  if (rsp) {
   *rsp = buf;
  } else {
   net_buf_unref(buf);
  }
 }

 return err;
}


const bt_addr_le_t *bt_lookup_id_addr(u8_t id, const bt_addr_le_t *addr)
{
 if (1) {
  struct bt_keys *keys;

  keys = bt_keys_find_irk(id, addr);
  if (keys) {
  

                               ;
   return &keys->addr;
  }
 }

 return addr;
}


static int set_advertise_enable(
# 618 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                               _Bool 
# 618 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                    enable)
{
 struct net_buf *buf;
 struct cmd_state_set state;
 int err;

 buf = bt_hci_cmd_create(((0x000a) | ((0x08) << 10)), 1);
 if (!buf) {
  return -
# 626 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 626 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 if (enable) {
  net_buf_simple_add_u8(&(buf)->b, 0x01);
 } else {
  net_buf_simple_add_u8(&(buf)->b, 0x00);
 }

 cmd_state_set_init(&state, bt_dev.flags, BT_DEV_ADVERTISING, enable);
 (&cmd_data[net_buf_id(buf)])->state = &state;

 err = bt_hci_cmd_send_sync(((0x000a) | ((0x08) << 10)), buf, 
# 638 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                             ((void *)0)
# 638 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                 );
 if (err) {
  return err;
 }

 return 0;
}

static int set_random_address(const bt_addr_t *addr)
{
 struct net_buf *buf;
 int err;




 ;



 if (!bt_addr_cmp(addr, &bt_dev.random_addr.a)) {
  return 0;
 }

 buf = bt_hci_cmd_create(((0x0005) | ((0x08) << 10)), sizeof(*addr));
 if (!buf) {
  return -
# 664 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 664 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 net_buf_simple_add_mem(&(buf)->b, addr, sizeof(*addr));

 err = bt_hci_cmd_send_sync(((0x0005) | ((0x08) << 10)), buf, 
# 669 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                                 ((void *)0)
# 669 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                     );
 if (err) {
  return err;
 }

 bt_addr_copy(&bt_dev.random_addr.a, addr);
 bt_dev.random_addr.type = 0x01;

 return 0;
}

int bt_addr_from_str(const char *str, bt_addr_t *addr)
{
 int i, j;
 u8_t tmp;

 if (strlen(str) != 17U) {
  return -
# 686 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 686 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 for (i = 5, j = 1; *str != '\0'; str++, j++) {
  if (!(j % 3) && (*str != ':')) {
   return -
# 691 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          22
# 691 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
  } else if (*str == ':') {
   i--;
   continue;
  }

  addr->val[i] = addr->val[i] << 4;

  if (char2hex(*str, &tmp) < 0) {
   return -
# 700 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          22
# 700 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
  }

  addr->val[i] |= tmp;
 }

 return 0;
}

int bt_addr_le_from_str(const char *str, const char *type, bt_addr_le_t *addr)
{
 int err;

 err = bt_addr_from_str(str, &addr->a);
 if (err < 0) {
  return err;
 }

 if (!strcmp(type, "public") || !strcmp(type, "(public)")) {
  addr->type = 0x00;
 } else if (!strcmp(type, "random") || !strcmp(type, "(random)")) {
  addr->type = 0x01;
 } else if (!strcmp(type, "public-id") || !strcmp(type, "(public-id)")) {
  addr->type = 0x02;
 } else if (!strcmp(type, "random-id") || !strcmp(type, "(random-id)")) {
  addr->type = 0x03;
 } else {
  return -
# 727 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 727 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 return 0;
}
# 833 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static int le_set_private_addr(u8_t id)
{
 bt_addr_t nrpa;
 int err;

 err = bt_rand(nrpa.val, sizeof(nrpa.val));
 if (err) {
  return err;
 }

 nrpa.val[5] &= 0x3f;

 return set_random_address(&nrpa);
}



static int set_le_scan_enable(u8_t enable)
{
 struct bt_hci_cp_le_set_scan_enable *cp;
 struct net_buf *buf;
 struct cmd_state_set state;
 int err;

 buf = bt_hci_cmd_create(((0x000c) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 859 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 859 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));

 if (enable == 0x01) {
  cp->filter_dup = atomic_test_bit(bt_dev.flags,
       BT_DEV_SCAN_FILTER_DUP);
 } else {
  cp->filter_dup = 0x00;
 }

 cp->enable = enable;

 cmd_state_set_init(&state, bt_dev.flags, BT_DEV_SCANNING,
       enable == 0x01);
 (&cmd_data[net_buf_id(buf)])->state = &state;

 err = bt_hci_cmd_send_sync(((0x000c) | ((0x08) << 10)), buf, 
# 877 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                              ((void *)0)
# 877 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                  );
 if (err) {
  return err;
 }

 return 0;
}



static void hci_acl(struct net_buf *buf)
{
 struct bt_hci_acl_hdr *hdr;
 u16_t handle, len;
 struct bt_conn *conn;
 u8_t flags;

 ;

 if( ( buf->len >= sizeof(*hdr) ) == 0 ) user_vAssertCalled();

 hdr = net_buf_simple_pull_mem(&(buf)->b, sizeof(*hdr));
 len = (hdr->len);
 handle = (hdr->handle);
 flags = ((handle) >> 12);

 ((struct acl_data *)net_buf_user_data(buf))->handle = ((handle) & 0x0fff);
 ((struct acl_data *)net_buf_user_data(buf))->id = 0xff;

 ;

 if (buf->len != len) {
  printf("ACL data length mismatch (%u != %u)"", %s\r\n", buf->len, len, __func__);
  net_buf_unref(buf);
  return;
 }

 conn = bt_conn_lookup_handle(((struct acl_data *)net_buf_user_data(buf))->handle);
 if (!conn) {
  printf("Unable to find conn for handle %u"", %s\r\n", ((struct acl_data *)net_buf_user_data(buf))->handle, __func__);
  net_buf_unref(buf);
  return;
 }

 ((struct acl_data *)net_buf_user_data(buf))->id = bt_conn_index(conn);

 bt_conn_recv(conn, buf, flags);
 bt_conn_unref(conn);
}

static void hci_data_buf_overflow(struct net_buf *buf)
{
 struct bt_hci_evt_data_buf_overflow *evt = (void *)buf->data;

 printf("Data buffer overflow (link type 0x%02x)"", %s\r\n", evt->link_type, __func__);

    (void) evt;
}

static void hci_num_completed_packets(struct net_buf *buf)
{
 struct bt_hci_evt_num_completed_packets *evt = (void *)buf->data;
 int i;

 ;

 for (i = 0; i < evt->num_handles; i++) {
  u16_t handle, count;
  struct bt_conn *conn;
  unsigned int key;

  handle = (evt->h[i].handle);
  count = (evt->h[i].count);

  ;

  key = irq_lock();

  conn = bt_conn_lookup_handle(handle);
  if (!conn) {
   irq_unlock(key);
   printf("No connection for handle %u"", %s\r\n", handle, __func__);
   continue;
  }

  irq_unlock(key);

  while (count--) {
   struct bt_conn_tx *tx;
   sys_snode_t *node;

   key = irq_lock();

   if (conn->pending_no_cb) {
    conn->pending_no_cb--;
    irq_unlock(key);
    k_sem_give(bt_conn_get_pkts(conn));
    continue;
   }

   node = sys_slist_get(&conn->tx_pending);
   irq_unlock(key);

   if (!node) {
    printf("packets count mismatch"", %s\r\n", __func__);
    break;
   }

   tx = ((struct bt_conn_tx *)(((char *)(node)) - 
# 985 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       __builtin_offsetof (
# 985 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
       struct bt_conn_tx
# 985 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       , 
# 985 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
       node
# 985 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       )
# 985 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
       ));

   key = irq_lock();
   conn->pending_no_cb = tx->pending_no_cb;
   tx->pending_no_cb = 0U;
   sys_slist_append(&conn->tx_complete, &tx->node);
   irq_unlock(key);

   k_work_submit(&conn->tx_complete_work);
   k_sem_give(bt_conn_get_pkts(conn));

            k_sem_give(&g_poll_sem);

  }

  bt_conn_unref(conn);
 }
}



int bt_le_auto_conn(const struct bt_le_conn_param *conn_param)
{
 struct net_buf *buf;
 struct cmd_state_set state;
 struct bt_hci_cp_le_create_conn *cp;
 u8_t own_addr_type;
 int err;

 if (atomic_test_bit(bt_dev.flags, BT_DEV_SCANNING)) {
  err = set_le_scan_enable(0x00);
  if (err) {
   return err;
  }
 }





  if (0) {
   err = le_set_private_addr(0);
   if (err) {
    return err;
   }
   if ((bt_dev.le.features[(6) >> 3] & (1UL << ((6) & 7)))) {
    own_addr_type = 0x03;
   } else {
    own_addr_type = 0x01;
   }
  } else {
   const bt_addr_le_t *addr = &bt_dev.id_addr[0];





   if (addr->type == 0x01) {
    err = set_random_address(&addr->a);
    if (err) {
     return err;
    }
   }

   own_addr_type = addr->type;
  }







 buf = bt_hci_cmd_create(((0x000d) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 1060 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 1060 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 (void)memset(cp, 0, sizeof(*cp));

 cp->filter_policy = 0x01;
 cp->own_addr_type = own_addr_type;


 cp->scan_interval = (0x0060);
 cp->scan_window = (0x0030);

 cp->conn_interval_min = (conn_param->interval_min);
 cp->conn_interval_max = (conn_param->interval_max);
 cp->conn_latency = (conn_param->latency);
 cp->supervision_timeout = (conn_param->timeout);

 cmd_state_set_init(&state, bt_dev.flags, BT_DEV_AUTO_CONN, 
# 1078 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                           1
# 1078 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                               );
 (&cmd_data[net_buf_id(buf)])->state = &state;

 return bt_hci_cmd_send_sync(((0x000d) | ((0x08) << 10)), buf, 
# 1081 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                           ((void *)0)
# 1081 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                               );
}

int bt_le_auto_conn_cancel(void)
{
 struct net_buf *buf;
 struct cmd_state_set state;

 buf = bt_hci_cmd_create(((0x000e) | ((0x08) << 10)), 0);

 cmd_state_set_init(&state, bt_dev.flags, BT_DEV_AUTO_CONN, 
# 1091 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                           0
# 1091 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                );
 (&cmd_data[net_buf_id(buf)])->state = &state;

 return bt_hci_cmd_send_sync(((0x000e) | ((0x08) << 10)), buf, 
# 1094 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                                  ((void *)0)
# 1094 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                      );
}


static int hci_le_create_conn(const struct bt_conn *conn)
{
 struct net_buf *buf;
 struct bt_hci_cp_le_create_conn *cp;
 u8_t own_addr_type;
 const bt_addr_le_t *peer_addr;
 int err;
# 1115 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 if (0) {
  err = le_set_private_addr(conn->id);
  if (err) {
   return err;
  }


        own_addr_type = 0x01;
# 1135 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 } else {




  const bt_addr_le_t *own_addr = &bt_dev.id_addr[conn->id];

  if (own_addr->type == 0x01) {
   err = set_random_address(&own_addr->a);
   if (err) {
    return err;
   }
  }

  own_addr_type = own_addr->type;
 }




 buf = bt_hci_cmd_create(((0x000d) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 1157 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 1157 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 (void)memset(cp, 0, sizeof(*cp));


 cp->scan_interval = (0x0060);
 cp->scan_window = cp->scan_interval;

 peer_addr = &conn->le.dst;


 if (!bt_dev.le.rl_size || bt_dev.le.rl_entries > bt_dev.le.rl_size) {

  peer_addr = &conn->le.resp_addr;
 }


 bt_addr_le_copy(&cp->peer_addr, peer_addr);
 cp->own_addr_type = own_addr_type;
 cp->conn_interval_min = (conn->le.interval_min);
 cp->conn_interval_max = (conn->le.interval_max);
 cp->conn_latency = (conn->le.latency);
 cp->supervision_timeout = (conn->le.timeout);
# 1196 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 return bt_hci_cmd_send_sync(((0x000d) | ((0x08) << 10)), buf, 
# 1196 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                           ((void *)0)
# 1196 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                               );
}


static void hci_disconn_complete(struct net_buf *buf)
{
 struct bt_hci_evt_disconn_complete *evt = (void *)buf->data;
 u16_t handle = (evt->handle);
 struct bt_conn *conn;


                    ;

 if (evt->status) {
  return;
 }

 conn = bt_conn_lookup_handle(handle);
 if (!conn) {
  printf("Unable to look up conn with handle %u"", %s\r\n", handle, __func__);
  goto advertise;
 }

 conn->err = evt->reason;
# 1229 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 bt_conn_set_state(conn, BT_CONN_DISCONNECTED);
 conn->handle = 0U;

 if (conn->type != BT_CONN_TYPE_LE) {
# 1247 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
  bt_conn_unref(conn);



  return;
 }
# 1261 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 bt_conn_unref(conn);






 hci_release_conn_related_cmd();



 notify_disconnected(conn);
# 1292 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
advertise:
 if (atomic_test_bit(bt_dev.flags, BT_DEV_KEEP_ADVERTISING) &&
     !atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
  if (0) {
   le_set_private_addr(bt_dev.adv_id);
  }

  set_advertise_enable(
# 1299 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                      1
# 1299 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                          );
 }
}

static int hci_le_read_remote_features(struct bt_conn *conn)
{
 struct bt_hci_cp_le_read_remote_features *cp;
 struct net_buf *buf;

 buf = bt_hci_cmd_create(((0x0016) | ((0x08) << 10)),
    sizeof(*cp));
 if (!buf) {
  return -
# 1311 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 1311 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 cp->handle = (conn->handle);
 bt_hci_cmd_send(((0x0016) | ((0x08) << 10)), buf);

 return 0;
}




static void hci_le_set_data_len(struct bt_conn *conn)
{
 struct bt_hci_rp_le_read_max_data_len *rp;
 struct bt_hci_cp_le_set_data_len *cp;
 struct net_buf *buf, *rsp;
 u16_t tx_octets, tx_time;
 int err;

 err = bt_hci_cmd_send_sync(((0x002f) | ((0x08) << 10)), 
# 1332 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                           ((void *)0)
# 1332 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                               , &rsp);
 if (err) {
  printf("Failed to read DLE max data len"", %s\r\n", __func__);
  return;
 }

 rp = (void *)rsp->data;
 tx_octets = (rp->max_tx_octets);
 tx_time = (rp->max_tx_time);
 net_buf_unref(rsp);

 buf = bt_hci_cmd_create(((0x0022) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  printf("Failed to create LE Set Data Length Command"", %s\r\n", __func__);
  return;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 cp->handle = (conn->handle);
 cp->tx_octets = (tx_octets);
 cp->tx_time = (tx_time);
 err = bt_hci_cmd_send(((0x0022) | ((0x08) << 10)), buf);
 if (err) {
  printf("Failed to send LE Set Data Length Command"", %s\r\n", __func__);
 }
}


int bt_le_set_data_len(struct bt_conn *conn, u16_t tx_octets, u16_t tx_time)
{
 struct bt_hci_cp_le_set_data_len *cp;
 struct net_buf *buf;

 buf = bt_hci_cmd_create(((0x0022) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  printf("bt_le_set_data_len, Failed to create LE Set Data Length Command"", %s\r\n", __func__);
  return -
# 1368 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 1368 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 cp->handle = (conn->handle);
 cp->tx_octets = (tx_octets);
 cp->tx_time = (tx_time);

 return bt_hci_cmd_send(((0x0022) | ((0x08) << 10)), buf);
}


int hci_le_set_phy(struct bt_conn *conn, uint8_t all_phys,
    uint8_t pref_tx_phy, uint8_t pref_rx_phy, uint8_t phy_opts)
{
 struct bt_hci_cp_le_set_phy *cp;
 struct net_buf *buf;

 buf = bt_hci_cmd_create(((0x0032) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 1388 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 1388 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 cp->handle = (conn->handle);
 cp->all_phys = all_phys;
 cp->tx_phys = pref_tx_phy;
 cp->rx_phys = pref_rx_phy;
 cp->phy_opts = phy_opts;

 return bt_hci_cmd_send(((0x0032) | ((0x08) << 10)), buf);
}

int hci_le_set_default_phy(u8_t default_phy)
{
 struct bt_hci_cp_le_set_default_phy *cp;
 struct net_buf *buf;

 buf = bt_hci_cmd_create(((0x0031) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 1408 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 1408 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 cp->all_phys = 0U;
 cp->tx_phys = default_phy;
 cp->rx_phys = default_phy;
 bt_hci_cmd_send(((0x0031) | ((0x08) << 10)), buf);

 return 0;
}


static void slave_update_conn_param(struct bt_conn *conn)
{
 if (!1) {
  return;
 }


 if (atomic_test_bit(conn->flags, BT_CONN_SLAVE_PARAM_UPDATE)) {
  return;
 }






 k_delayed_work_submit(&conn->update_work, ((5) * 1000));
}


static void update_pending_id(struct bt_keys *keys, void *data)
{
 if (keys->flags & BT_KEYS_ID_PENDING_ADD) {
  keys->flags &= ~BT_KEYS_ID_PENDING_ADD;
  bt_id_add(keys);
  return;
 }

 if (keys->flags & BT_KEYS_ID_PENDING_DEL) {
  keys->flags &= ~BT_KEYS_ID_PENDING_DEL;
  bt_id_del(keys);
  return;
 }
}


static struct bt_conn *find_pending_connect(bt_addr_le_t *peer_addr)
{
 struct bt_conn *conn;





 conn = bt_conn_lookup_state_le(peer_addr, BT_CONN_CONNECT);
 if (conn) {
  return conn;
 }

 return bt_conn_lookup_state_le(peer_addr, BT_CONN_CONNECT_DIR_ADV);
}

static void enh_conn_complete(struct bt_hci_evt_le_enh_conn_complete *evt)
{
 u16_t handle = (evt->handle);
 bt_addr_le_t peer_addr, id_addr;
 struct bt_conn *conn;
 int err;


                                                   ;


 if (atomic_test_and_clear_bit(bt_dev.flags, BT_DEV_ID_PENDING)) {
  bt_keys_foreach(BT_KEYS_IRK, update_pending_id, 
# 1485 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                 ((void *)0)
# 1485 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                     );
 }


 if (evt->status) {







  conn = find_pending_connect(
# 1497 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                             ((void *)0)
# 1497 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                 );
  if (!conn) {
   return;
  }

  conn->err = evt->status;

  if (1) {




   if (conn->err == 0x3c) {
    atomic_clear_bit(bt_dev.flags,
       BT_DEV_ADVERTISING);
    bt_conn_set_state(conn, BT_CONN_DISCONNECTED);

    goto done;
   }
  }

  if (1) {



   if (conn->err == 0x02) {




    bt_conn_set_state(conn, BT_CONN_DISCONNECTED);
# 1537 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    goto done;
   }
  }

  printf("Unexpected status 0x%02x"", %s\r\n", evt->status, __func__);

  bt_conn_unref(conn);

  return;
 }

 bt_addr_le_copy(&id_addr, &evt->peer_addr);


 if (id_addr.type == 0x02 ||
     id_addr.type == 0x03) {
  id_addr.type -= 0x02;
  bt_addr_copy(&peer_addr.a, &evt->peer_rpa);
  peer_addr.type = 0x01;
 } else {
  bt_addr_le_copy(&peer_addr, &evt->peer_addr);
 }

 conn = find_pending_connect(&id_addr);

 if (1 &&
     evt->role == 0x01) {




  atomic_clear_bit(bt_dev.flags, BT_DEV_ADVERTISING);


  if (!conn) {
   conn = bt_conn_add_le(bt_dev.adv_id, &id_addr);
  }
 }

 if (1 &&
     1 &&
     evt->role == 0x00) {

  if (!conn) {
   conn = bt_conn_add_le(0, &id_addr);
  }
 }

 if (!conn) {
  printf("Unable to add new conn for handle %u"", %s\r\n", handle, __func__);
  return;
 }

 conn->handle = handle;
 bt_addr_le_copy(&conn->le.dst, &id_addr);
 conn->le.interval = (evt->interval);
 conn->le.latency = (evt->latency);
 conn->le.timeout = (evt->supv_timeout);
 conn->role = evt->role;
 conn->err = 0U;






 if (1 &&
     conn->role == 0x01) {
  bt_addr_le_copy(&conn->le.init_addr, &peer_addr);

  if (0) {

            if(memcmp(&evt->local_rpa, (&(bt_addr_t) { { 0, 0, 0, 0, 0, 0 } }), sizeof(bt_addr_t)))
                bt_addr_copy(&conn->le.resp_addr.a, &evt->local_rpa);
            else
                bt_addr_copy(&conn->le.resp_addr.a, &bt_dev.random_addr.a);



   conn->le.resp_addr.type = 0x01;
  } else {
   bt_addr_le_copy(&conn->le.resp_addr,
     &bt_dev.id_addr[conn->id]);
  }
# 1634 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
  if (atomic_test_bit(bt_dev.flags, BT_DEV_KEEP_ADVERTISING) &&
      (bt_dev.le.states & 0x0000004000000000)) {
   if (0) {
    le_set_private_addr(bt_dev.adv_id);
   }

   set_advertise_enable(
# 1640 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                       1
# 1640 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                           );
  }
 }

 if (1 &&
     conn->role == 0x00) {

  if (1 &&
      atomic_test_bit(bt_dev.flags, BT_DEV_AUTO_CONN)) {
   conn->id = 0;
   atomic_clear_bit(bt_dev.flags, BT_DEV_AUTO_CONN);
  }

  bt_addr_le_copy(&conn->le.resp_addr, &peer_addr);

  if (0) {

            if(memcmp(&evt->local_rpa, (&(bt_addr_t) { { 0, 0, 0, 0, 0, 0 } }), sizeof(bt_addr_t)))
                bt_addr_copy(&conn->le.init_addr.a, &evt->local_rpa);
            else
                bt_addr_copy(&conn->le.init_addr.a, &bt_dev.random_addr.a);



   conn->le.init_addr.type = 0x01;
  } else {
   bt_addr_le_copy(&conn->le.init_addr,
     &bt_dev.id_addr[conn->id]);
  }







 }

 bt_conn_set_state(conn, BT_CONN_CONNECTED);






 if (conn->state != BT_CONN_CONNECTED) {
  goto done;
 }

 if ((evt->role == 0x00) ||
     (bt_dev.le.features[(3) >> 3] & (1UL << ((3) & 7)))) {
  err = hci_le_read_remote_features(conn);
  if (!err) {
   goto done;
  }
 }

 if (0 &&
     (bt_dev.le.features[(8) >> 3] & (1UL << ((8) & 7)))) {
  err = hci_le_set_phy(conn, 0U, (1UL << (1)),
        (1UL << (1)),
        0x00);
  if (!err) {
   atomic_set_bit(conn->flags, BT_CONN_AUTO_PHY_UPDATE);
   goto done;
  }
 }

 if (0 &&
     (bt_dev.le.features[(5) >> 3] & (1UL << ((5) & 7)))) {
  hci_le_set_data_len(conn);
 }

 if (1 &&
     conn->role == BT_CONN_ROLE_SLAVE) {
  slave_update_conn_param(conn);
 }

done:
 bt_conn_unref(conn);
 if (1) {
  bt_le_scan_update(
# 1721 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                   0
# 1721 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                        );
 }
}

static void le_enh_conn_complete(struct net_buf *buf)
{
 enh_conn_complete((void *)buf->data);
}

static void le_legacy_conn_complete(struct net_buf *buf)
{
 struct bt_hci_evt_le_conn_complete *evt = (void *)buf->data;
 struct bt_hci_evt_le_enh_conn_complete enh;
 const bt_addr_le_t *id_addr;


                                        ;

 enh.status = evt->status;
 enh.handle = evt->handle;
 enh.role = evt->role;
 enh.interval = evt->interval;
 enh.latency = evt->latency;
 enh.supv_timeout = evt->supv_timeout;
 enh.clock_accuracy = evt->clock_accuracy;

 bt_addr_le_copy(&enh.peer_addr, &evt->peer_addr);

 if (0) {
  bt_addr_copy(&enh.local_rpa, &bt_dev.random_addr.a);
 } else {
  bt_addr_copy(&enh.local_rpa, (&(bt_addr_t) { { 0, 0, 0, 0, 0, 0 } }));
 }

 if (evt->role == 0x01) {
  id_addr = bt_lookup_id_addr(bt_dev.adv_id, &enh.peer_addr);
 } else {
  id_addr = bt_lookup_id_addr(0, &enh.peer_addr);
 }

 if (id_addr != &enh.peer_addr) {
  bt_addr_copy(&enh.peer_rpa, &enh.peer_addr.a);
  bt_addr_le_copy(&enh.peer_addr, id_addr);
  enh.peer_addr.type += 0x02;
 } else {
  bt_addr_copy(&enh.peer_rpa, (&(bt_addr_t) { { 0, 0, 0, 0, 0, 0 } }));
 }

 enh_conn_complete(&enh);
}

static void le_remote_feat_complete(struct net_buf *buf)
{
 struct bt_hci_evt_le_remote_feat_complete *evt = (void *)buf->data;
 u16_t handle = (evt->handle);
 struct bt_conn *conn;

 conn = bt_conn_lookup_handle(handle);
 if (!conn) {
  printf("Unable to lookup conn for handle %u"", %s\r\n", handle, __func__);
  return;
 }

 if (!evt->status) {
  memcpy(conn->le.features, evt->features,
         sizeof(conn->le.features));
 }

 if (0 &&
     (bt_dev.le.features[(8) >> 3] & (1UL << ((8) & 7))) &&
     (conn->le.features[(8) >> 3] & (1UL << ((8) & 7)))) {
  int err;

  err = hci_le_set_phy(conn, 0U, (1UL << (1)),
        (1UL << (1)),
        0x00);
  if (!err) {
   atomic_set_bit(conn->flags, BT_CONN_AUTO_PHY_UPDATE);
   goto done;
  }
 }

 if (0 &&
     (bt_dev.le.features[(5) >> 3] & (1UL << ((5) & 7))) &&
     (conn->le.features[(5) >> 3] & (1UL << ((5) & 7)))) {
  hci_le_set_data_len(conn);
 }


 if (1 &&
     conn->role == BT_CONN_ROLE_SLAVE) {
  slave_update_conn_param(conn);
 }

done:
 bt_conn_unref(conn);
}
# 1851 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static void le_phy_update_complete(struct net_buf *buf)
{
 struct bt_hci_evt_le_phy_update_complete *evt = (void *)buf->data;
 u16_t handle = (evt->handle);
 struct bt_conn *conn;

 conn = bt_conn_lookup_handle(handle);
 if (!conn) {
  printf("Unable to lookup conn for handle %u"", %s\r\n", handle, __func__);
  return;
 }


                                              ;

 notify_le_phy_updated(conn, evt->tx_phy, evt->rx_phy);

 if (!0 ||
     !atomic_test_and_clear_bit(conn->flags, BT_CONN_AUTO_PHY_UPDATE)) {
  goto done;
 }

 if (0 &&
     (bt_dev.le.features[(5) >> 3] & (1UL << ((5) & 7))) &&
     (conn->le.features[(5) >> 3] & (1UL << ((5) & 7)))) {
  hci_le_set_data_len(conn);
 }

 if (1 &&
     conn->role == BT_CONN_ROLE_SLAVE) {
  slave_update_conn_param(conn);
 }

done:
 bt_conn_unref(conn);
}



# 1889 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 1889 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    bt_le_conn_params_valid(const struct bt_le_conn_param *param)
{


 if (param->interval_min > param->interval_max ||
     param->interval_min < 6 || param->interval_max > 3200) {
  return 
# 1895 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 1895 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 if (param->latency > 499) {
  return 
# 1899 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 1899 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 if (param->timeout < 10 || param->timeout > 3200 ||
     ((param->timeout * 4U) <=
      ((1 + param->latency) * param->interval_max))) {
  return 
# 1905 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 1905 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 return 
# 1908 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       1
# 1908 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           ;
}

static void le_conn_param_neg_reply(u16_t handle, u8_t reason)
{
 struct bt_hci_cp_le_conn_param_req_neg_reply *cp;
 struct net_buf *buf;

 buf = bt_hci_cmd_create(((0x0021) | ((0x08) << 10)),
    sizeof(*cp));
 if (!buf) {
  printf("Unable to allocate buffer"", %s\r\n", __func__);
  return;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 cp->handle = (handle);
 cp->reason = (reason);

 bt_hci_cmd_send(((0x0021) | ((0x08) << 10)), buf);
}

static int le_conn_param_req_reply(u16_t handle,
       const struct bt_le_conn_param *param)
{
 struct bt_hci_cp_le_conn_param_req_reply *cp;
 struct net_buf *buf;

 buf = bt_hci_cmd_create(((0x0020) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 1938 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 1938 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 (void)memset(cp, 0, sizeof(*cp));

 cp->handle = (handle);
 cp->interval_min = (param->interval_min);
 cp->interval_max = (param->interval_max);
 cp->latency = (param->latency);
 cp->timeout = (param->timeout);

 return bt_hci_cmd_send(((0x0020) | ((0x08) << 10)), buf);
}

static void le_conn_param_req(struct net_buf *buf)
{
 struct bt_hci_evt_le_conn_param_req *evt = (void *)buf->data;
 struct bt_le_conn_param param;
 struct bt_conn *conn;
 u16_t handle;

 handle = (evt->handle);
 param.interval_min = (evt->interval_min);
 param.interval_max = (evt->interval_max);
 param.latency = (evt->latency);
 param.timeout = (evt->timeout);

 conn = bt_conn_lookup_handle(handle);
 if (!conn) {
  printf("Unable to lookup conn for handle %u"", %s\r\n", handle, __func__);
  le_conn_param_neg_reply(handle, 0x02);
  return;
 }

 if (!le_param_req(conn, &param)) {
  le_conn_param_neg_reply(handle, 0x1e);
 } else {
  le_conn_param_req_reply(handle, &param);
 }

 bt_conn_unref(conn);
}

static void le_conn_update_complete(struct net_buf *buf)
{
 struct bt_hci_evt_le_conn_update_complete *evt = (void *)buf->data;
 struct bt_conn *conn;
 u16_t handle;

 handle = (evt->handle);

 ;

 conn = bt_conn_lookup_handle(handle);
 if (!conn) {
  printf("Unable to lookup conn for handle %u"", %s\r\n", handle, __func__);
  return;
 }

 if (!evt->status) {
  conn->le.interval = (evt->interval);
  conn->le.latency = (evt->latency);
  conn->le.timeout = (evt->supv_timeout);
  notify_le_param_updated(conn);
 } else if (evt->status == 0x1a &&
     conn->role == 0x01 &&
     !atomic_test_and_set_bit(conn->flags,
         BT_CONN_SLAVE_PARAM_L2CAP)) {

  struct bt_le_conn_param param;

  param.interval_min = conn->le.interval_min;
  param.interval_max = conn->le.interval_max;
  param.latency = conn->le.pending_latency;
  param.timeout = conn->le.pending_timeout;

  bt_l2cap_update_conn_param(conn, &param);
 }

 bt_conn_unref(conn);
}


static void check_pending_conn(const bt_addr_le_t *id_addr,
          const bt_addr_le_t *addr, u8_t evtype)
{
 struct bt_conn *conn;


 if (atomic_test_bit(bt_dev.flags, BT_DEV_EXPLICIT_SCAN)) {
  return;
 }


 if (evtype != 0x00 && evtype != 0x01) {
  return;
 }

 conn = bt_conn_lookup_state_le(id_addr, BT_CONN_CONNECT_SCAN);
 if (!conn) {
  return;
 }

 if (atomic_test_bit(bt_dev.flags, BT_DEV_SCANNING) &&
     set_le_scan_enable(0x00)) {
  goto failed;
 }

 bt_addr_le_copy(&conn->le.resp_addr, addr);
 if (hci_le_create_conn(conn)) {
  goto failed;
 }

 bt_conn_set_state(conn, BT_CONN_CONNECT);
 bt_conn_unref(conn);
 return;

failed:
 conn->err = 0x1f;
 bt_conn_set_state(conn, BT_CONN_DISCONNECTED);
 bt_conn_unref(conn);
 bt_le_scan_update(
# 2060 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                  0
# 2060 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                       );
}
# 2104 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static int bt_clear_all_pairings(u8_t id)
{
 bt_conn_disconnect_all(id);

 if (1) {
  bt_keys_clear_all(id);
 }

 if (0) {
  bt_keys_link_key_clear_addr(
# 2113 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                             ((void *)0)
# 2113 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                 );
 }

 return 0;
}

int bt_unpair(u8_t id, const bt_addr_le_t *addr)
{
 struct bt_keys *keys = 
# 2121 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                       ((void *)0)
# 2121 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                           ;
 struct bt_conn *conn;

 if (id >= 1) {
  return -
# 2125 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 2125 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (!addr || !bt_addr_le_cmp(addr, (&(bt_addr_le_t) { 0, { { 0, 0, 0, 0, 0, 0 } } }))) {
  return bt_clear_all_pairings(id);
 }

 conn = bt_conn_lookup_addr_le(id, addr);
 if (conn) {




  if (conn->type == BT_CONN_TYPE_LE) {
   keys = conn->le.keys;
   conn->le.keys = 
# 2140 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                  ((void *)0)
# 2140 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                      ;
  }

  bt_conn_disconnect(conn, 0x13);
  bt_conn_unref(conn);
 }

 if (0) {

  if (addr->type == 0x00) {
   bt_keys_link_key_clear_addr(&addr->a);
  }
 }

 if (1) {
  if (!keys) {
   keys = bt_keys_find_addr(id, addr);
  }

  if (keys) {
   bt_keys_clear(keys);
  }
 }

 if (0) {
  bt_gatt_clear(id, addr);
 }

 return 0;
}




static enum bt_security_err security_err_get(u8_t hci_err)
{
 switch (hci_err) {
 case 0x00:
  return BT_SECURITY_ERR_SUCCESS;
 case 0x05:
  return BT_SECURITY_ERR_AUTH_FAIL;
 case 0x06:
  return BT_SECURITY_ERR_PIN_OR_KEY_MISSING;
 case 0x29:
  return BT_SECURITY_ERR_PAIR_NOT_SUPPORTED;
 case 0x18:
  return BT_SECURITY_ERR_PAIR_NOT_ALLOWED;
 case 0x12:
  return BT_SECURITY_ERR_INVALID_PARAM;
 default:
  return BT_SECURITY_ERR_UNSPECIFIED;
 }
}

static void reset_pairing(struct bt_conn *conn)
{
# 2205 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 conn->required_sec_level = conn->sec_level;
}
# 3327 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static int le_set_privacy_mode(const bt_addr_le_t *addr, u8_t mode)
{
 struct bt_hci_cp_le_set_privacy_mode cp;
 struct net_buf *buf;
 int err;


 if (!(bt_dev.supported_commands[39] & (1UL << (2)))) {
  printf("Set privacy mode command is not supported"", %s\r\n", __func__);
  return 0;
 }

 ;

 bt_addr_le_copy(&cp.id_addr, addr);
 cp.mode = mode;

 buf = bt_hci_cmd_create(((0x004e) | ((0x08) << 10)), sizeof(cp));
 if (!buf) {
  return -
# 3346 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 3346 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 net_buf_simple_add_mem(&(buf)->b, &cp, sizeof(cp));

 err = bt_hci_cmd_send_sync(((0x004e) | ((0x08) << 10)), buf, 
# 3351 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                               ((void *)0)
# 3351 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                   );
 if (err) {
  return err;
 }

 return 0;
}



static int addr_res_enable(u8_t enable)

{
 struct net_buf *buf;

 ;

 buf = bt_hci_cmd_create(((0x002d) | ((0x08) << 10)), 1);
 if (!buf) {
  return -
# 3370 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 3370 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 net_buf_simple_add_u8(&(buf)->b, enable);

 return bt_hci_cmd_send_sync(((0x002d) | ((0x08) << 10)),
        buf, 
# 3376 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
            ((void *)0)
# 3376 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                );
}





static int hci_id_add(const bt_addr_le_t *addr, u8_t val[16])

{
 struct bt_hci_cp_le_add_dev_to_rl *cp;
 struct net_buf *buf;

 ;

 buf = bt_hci_cmd_create(((0x0027) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 3393 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 3393 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 bt_addr_le_copy(&cp->peer_id_addr, addr);
 memcpy(cp->peer_irk, val, 16);




 (void)memset(cp->local_irk, 0, 16);


 return bt_hci_cmd_send_sync(((0x0027) | ((0x08) << 10)), buf, 
# 3406 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                             ((void *)0)
# 3406 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                 );
}

void bt_id_add(struct bt_keys *keys)
{
 
# 3411 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 3411 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
     adv_enabled;

 
# 3413 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 3413 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
     scan_enabled;

 struct bt_conn *conn;
 int err;

 ;


 if (!bt_dev.le.rl_size || bt_dev.le.rl_entries > bt_dev.le.rl_size) {
  bt_dev.le.rl_entries++;
  return;
 }

 conn = bt_conn_lookup_state_le(
# 3426 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                               ((void *)0)
# 3426 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                   , BT_CONN_CONNECT);
 if (conn) {
  atomic_set_bit(bt_dev.flags, BT_DEV_ID_PENDING);
  keys->flags |= BT_KEYS_ID_PENDING_ADD;
  bt_conn_unref(conn);
  return;
 }

 adv_enabled = atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING);
 if (adv_enabled) {
  set_advertise_enable(
# 3436 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                      0
# 3436 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                           );
 }


 scan_enabled = atomic_test_bit(bt_dev.flags, BT_DEV_SCANNING);
 if (scan_enabled) {
  set_le_scan_enable(0x00);
 }



 if (bt_dev.le.rl_entries) {
  err = addr_res_enable(0x00);
  if (err) {
   printf("Failed to disable address resolution"", %s\r\n", __func__);
   goto done;
  }
 }

 if (bt_dev.le.rl_entries == bt_dev.le.rl_size) {
  printf("Resolving list size exceeded. Switching to host."", %s\r\n", __func__);

  err = bt_hci_cmd_send_sync(((0x0029) | ((0x08) << 10)), 
# 3458 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                   ((void *)0)
# 3458 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                       , 
# 3458 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                         ((void *)0)
# 3458 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                             );
  if (err) {
   printf("Failed to clear resolution list"", %s\r\n", __func__);
   goto done;
  }

  bt_dev.le.rl_entries++;

  goto done;
 }

 err = hci_id_add(&keys->addr, keys->irk.val);
 if (err) {
  printf("Failed to add IRK to controller"", %s\r\n", __func__);
  goto done;
 }

 bt_dev.le.rl_entries++;
# 3489 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 err = le_set_privacy_mode(&keys->addr, 0x01);
 if (err) {
  printf("Failed to set privacy mode"", %s\r\n", __func__);
  goto done;
 }

done:
 addr_res_enable(0x01);


 if (scan_enabled) {
  set_le_scan_enable(0x01);
 }


 if (adv_enabled) {
  set_advertise_enable(
# 3505 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                      1
# 3505 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                          );
 }
}

static void keys_add_id(struct bt_keys *keys, void *data)
{
 hci_id_add(&keys->addr, keys->irk.val);
}

void bt_id_del(struct bt_keys *keys)
{
 struct bt_hci_cp_le_rem_dev_from_rl *cp;
 
# 3517 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 3517 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
     adv_enabled;

 
# 3519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 3519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
     scan_enabled;

 struct bt_conn *conn;
 struct net_buf *buf;
 int err;

 ;

 if (!bt_dev.le.rl_size ||
     bt_dev.le.rl_entries > bt_dev.le.rl_size + 1) {
  bt_dev.le.rl_entries--;
  return;
 }

 conn = bt_conn_lookup_state_le(
# 3533 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                               ((void *)0)
# 3533 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                   , BT_CONN_CONNECT);
 if (conn) {
  atomic_set_bit(bt_dev.flags, BT_DEV_ID_PENDING);
  keys->flags |= BT_KEYS_ID_PENDING_DEL;
  bt_conn_unref(conn);
  return;
 }

 adv_enabled = atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING);
 if (adv_enabled) {
  set_advertise_enable(
# 3543 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                      0
# 3543 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                           );
 }


 scan_enabled = atomic_test_bit(bt_dev.flags, BT_DEV_SCANNING);
 if (scan_enabled) {
  set_le_scan_enable(0x00);
 }


 err = addr_res_enable(0x00);
 if (err) {
  printf("Disabling address resolution failed (err %d)"", %s\r\n", err, __func__);
  goto done;
 }


 if (bt_dev.le.rl_entries > bt_dev.le.rl_size) {
  bt_dev.le.rl_entries--;
  keys->keys &= ~BT_KEYS_IRK;
  bt_keys_foreach(BT_KEYS_IRK, keys_add_id, 
# 3563 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                           ((void *)0)
# 3563 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                               );
  goto done;
 }

 buf = bt_hci_cmd_create(((0x0028) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  goto done;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 bt_addr_le_copy(&cp->peer_id_addr, &keys->addr);

 err = bt_hci_cmd_send_sync(((0x0028) | ((0x08) << 10)), buf, 
# 3575 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                              ((void *)0)
# 3575 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                  );
 if (err) {
  printf("Failed to remove IRK from controller"", %s\r\n", __func__);
  goto done;
 }

 bt_dev.le.rl_entries--;

done:

 if (bt_dev.le.rl_entries) {
  addr_res_enable(0x01);
 }


 if (scan_enabled) {
  set_le_scan_enable(0x01);
 }


 if (adv_enabled) {
  set_advertise_enable(
# 3596 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                      1
# 3596 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                          );
 }
}

static void update_sec_level(struct bt_conn *conn)
{
 if (!conn->encrypt) {
  conn->sec_level = BT_SECURITY_L1;
  return;
 }

 if (conn->le.keys && (conn->le.keys->flags & BT_KEYS_AUTHENTICATED)) {
  if (conn->le.keys->flags & BT_KEYS_SC &&
      conn->le.keys->enc_size == 16) {
   conn->sec_level = BT_SECURITY_L4;
  } else {
   conn->sec_level = BT_SECURITY_L3;
  }
 } else {
  conn->sec_level = BT_SECURITY_L2;
 }

 if (conn->required_sec_level > conn->sec_level) {
  printf("Failed to set required security level"", %s\r\n", __func__);
  bt_conn_disconnect(conn, 0x05);
 }
}



static void hci_encrypt_change(struct net_buf *buf)
{
 struct bt_hci_evt_encrypt_change *evt = (void *)buf->data;
 u16_t handle = (evt->handle);
 struct bt_conn *conn;


                     ;

 conn = bt_conn_lookup_handle(handle);
 if (!conn) {
  printf("Unable to look up conn with handle %u"", %s\r\n", handle, __func__);
  return;
 }

 if (evt->status) {
  reset_pairing(conn);
  bt_l2cap_encrypt_change(conn, evt->status);
  bt_conn_security_changed(conn, security_err_get(evt->status));
  bt_conn_unref(conn);
  return;
 }

 conn->encrypt = evt->encrypt;


 if (conn->type == BT_CONN_TYPE_LE) {
# 3661 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
  if (conn->encrypt) {
   bt_smp_update_keys(conn);
  }
  update_sec_level(conn);
 }
# 3686 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 reset_pairing(conn);

 bt_l2cap_encrypt_change(conn, evt->status);
 bt_conn_security_changed(conn, BT_SECURITY_ERR_SUCCESS);

 bt_conn_unref(conn);
}

static void hci_encrypt_key_refresh_complete(struct net_buf *buf)
{
 struct bt_hci_evt_encrypt_key_refresh_complete *evt = (void *)buf->data;
 struct bt_conn *conn;
 u16_t handle;

 handle = (evt->handle);

 ;

 conn = bt_conn_lookup_handle(handle);
 if (!conn) {
  printf("Unable to look up conn with handle %u"", %s\r\n", handle, __func__);
  return;
 }

 if (evt->status) {
  reset_pairing(conn);
  bt_l2cap_encrypt_change(conn, evt->status);
  bt_conn_security_changed(conn, security_err_get(evt->status));
  bt_conn_unref(conn);
  return;
 }
# 3725 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 if (conn->type == BT_CONN_TYPE_LE) {
  bt_smp_update_keys(conn);
  update_sec_level(conn);
 }
# 3739 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 reset_pairing(conn);
 bt_l2cap_encrypt_change(conn, evt->status);
 bt_conn_security_changed(conn, BT_SECURITY_ERR_SUCCESS);
 bt_conn_unref(conn);
}



static void le_ltk_neg_reply(u16_t handle)
{
 struct bt_hci_cp_le_ltk_req_neg_reply *cp;
 struct net_buf *buf;

 buf = bt_hci_cmd_create(((0x001b) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  printf("Out of command buffers"", %s\r\n", __func__);

  return;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 cp->handle = (handle);

 bt_hci_cmd_send(((0x001b) | ((0x08) << 10)), buf);
}

static void le_ltk_reply(u16_t handle, u8_t *ltk)
{
 struct bt_hci_cp_le_ltk_req_reply *cp;
 struct net_buf *buf;

 buf = bt_hci_cmd_create(((0x001a) | ((0x08) << 10)),
    sizeof(*cp));
 if (!buf) {
  printf("Out of command buffers"", %s\r\n", __func__);
  return;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 cp->handle = (handle);
 memcpy(cp->ltk, ltk, sizeof(cp->ltk));

 bt_hci_cmd_send(((0x001a) | ((0x08) << 10)), buf);
}

static void le_ltk_request(struct net_buf *buf)
{
 struct bt_hci_evt_le_ltk_request *evt = (void *)buf->data;
 struct bt_conn *conn;
 u16_t handle;
 u8_t ltk[16];

 handle = (evt->handle);

 ;

 conn = bt_conn_lookup_handle(handle);
 if (!conn) {
  printf("Unable to lookup conn for handle %u"", %s\r\n", handle, __func__);
  return;
 }

 if (bt_smp_request_ltk(conn, evt->rand, evt->ediv, ltk)) {
  le_ltk_reply(handle, ltk);
 } else {
  le_ltk_neg_reply(handle);
 }

 bt_conn_unref(conn);
}



static void le_pkey_complete(struct net_buf *buf)
{
 struct bt_hci_evt_le_p256_public_key_complete *evt = (void *)buf->data;
 struct bt_pub_key_cb *cb;

 ;

 atomic_clear_bit(bt_dev.flags, BT_DEV_PUB_KEY_BUSY);

 if (!evt->status) {
  memcpy(pub_key, evt->key, 64);
  atomic_set_bit(bt_dev.flags, BT_DEV_HAS_PUB_KEY);
 }

 for (cb = pub_key_cb; cb; cb = cb->_next) {
  cb->func(evt->status ? 
# 3827 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                        ((void *)0) 
# 3827 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                             : pub_key);
 }

 pub_key_cb = 
# 3830 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
             ((void *)0)
# 3830 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
}

static void le_dhkey_complete(struct net_buf *buf)
{
 struct bt_hci_evt_le_generate_dhkey_complete *evt = (void *)buf->data;

 ;

 if (dh_key_cb) {
  dh_key_cb(evt->status ? 
# 3840 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                         ((void *)0) 
# 3840 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                              : evt->dhkey);
  dh_key_cb = 
# 3841 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
             ((void *)0)
# 3841 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }
}


static void hci_reset_complete(struct net_buf *buf)
{
 u8_t status = buf->data[0];
 atomic_t flags;

 ;

 if (status) {
  return;
 }

 scan_dev_found_cb = 
# 3857 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                    ((void *)0)
# 3857 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                        ;







 flags = (atomic_get(bt_dev.flags) & ((1UL << (BT_DEV_ENABLE)) | (1UL << (BT_DEV_PRESET_ID)) | (1UL << (BT_DEV_USER_ID_ADDR))));
 atomic_set(bt_dev.flags, flags);
}

static void hci_cmd_done(u16_t opcode, u8_t status, struct net_buf *buf)
{
 ;

 if (net_buf_pool_get(buf->pool_id) != &hci_cmd_pool) {
  printf("opcode 0x%04x pool id %u pool %p != &hci_cmd_pool %p"", %s\r\n", opcode, buf->pool_id, net_buf_pool_get(buf->pool_id), &hci_cmd_pool, __func__)

                 ;
  return;
 }

 if ((&cmd_data[net_buf_id(buf)])->opcode != opcode) {
  printf("OpCode 0x%04x completed instead of expected 0x%04x"", %s\r\n", opcode, (&cmd_data[net_buf_id(buf)])->opcode, __func__)
                            ;
 }

 if ((&cmd_data[net_buf_id(buf)])->state && !status) {
  struct cmd_state_set *update = (&cmd_data[net_buf_id(buf)])->state;

  atomic_set_bit_to(update->target, update->bit, update->val);
 }
# 3901 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    if ((&cmd_data[net_buf_id(buf)])->sync) {
  (&cmd_data[net_buf_id(buf)])->status = status;
  k_sem_give((&cmd_data[net_buf_id(buf)])->sync);
 }

}

static void hci_cmd_complete(struct net_buf *buf)
{
 struct bt_hci_evt_cmd_complete *evt;
 u8_t status, ncmd;
 u16_t opcode;

 evt = net_buf_simple_pull_mem(&(buf)->b, sizeof(*evt));
 ncmd = evt->ncmd;
 opcode = (evt->opcode);

 ;




 status = buf->data[0];

 hci_cmd_done(opcode, status, buf);


 if (ncmd) {
  k_sem_give(&bt_dev.ncmd_sem);
 }
}

static void hci_cmd_status(struct net_buf *buf)
{
 struct bt_hci_evt_cmd_status *evt;
 u16_t opcode;
 u8_t ncmd;

 evt = net_buf_simple_pull_mem(&(buf)->b, sizeof(*evt));
 opcode = (evt->opcode);
 ncmd = evt->ncmd;

 ;

 hci_cmd_done(opcode, evt->status, buf);


 if (ncmd) {
  k_sem_give(&bt_dev.ncmd_sem);
 }
}


static int start_le_scan(u8_t scan_type, u16_t interval, u16_t window)
{
 struct bt_hci_cp_le_set_scan_param set_param;
 struct net_buf *buf;
 int err;

 (void)memset(&set_param, 0, sizeof(set_param));

 set_param.scan_type = scan_type;




 set_param.interval = (interval);
 set_param.window = (window);

 if (1 &&
     atomic_test_bit(bt_dev.flags, BT_DEV_SCAN_WL)) {
  set_param.filter_policy = 0x01;
 } else {
  set_param.filter_policy = 0x00;
 }

 if (0) {
  err = le_set_private_addr(0);
  if (err) {
   return err;
  }

  if ((bt_dev.le.features[(6) >> 3] & (1UL << ((6) & 7)))) {
   set_param.addr_type = 0x03;
  } else {
   set_param.addr_type = 0x01;
  }
 } else {
  set_param.addr_type = bt_dev.id_addr[0].type;




  if (!1 &&
      scan_type == 0x01 &&
      !atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
   err = le_set_private_addr(0);
   if (err) {
    return err;
   }

   set_param.addr_type = 0x01;
  } else if (set_param.addr_type == 0x01) {
   err = set_random_address(&bt_dev.id_addr[0].a);
   if (err) {
    return err;
   }
  }

 }

 buf = bt_hci_cmd_create(((0x000b) | ((0x08) << 10)), sizeof(set_param));
 if (!buf) {
  return -
# 4014 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 4014 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 net_buf_simple_add_mem(&(buf)->b, &set_param, sizeof(set_param));

 bt_hci_cmd_send_sync(((0x000b) | ((0x08) << 10)), buf, 
# 4019 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                       ((void *)0)
# 4019 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                           );

 err = set_le_scan_enable(0x01);
 if (err) {
  return err;
 }

 atomic_set_bit_to(bt_dev.flags, BT_DEV_ACTIVE_SCAN,
    scan_type == 0x01);

 return 0;
}
# 4110 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
int bt_le_scan_update(
# 4110 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                     _Bool 
# 4110 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                          fast_scan)
{
 if (atomic_test_bit(bt_dev.flags, BT_DEV_EXPLICIT_SCAN)) {
  return 0;
 }

 if (atomic_test_bit(bt_dev.flags, BT_DEV_SCANNING)) {
  int err;

  err = set_le_scan_enable(0x00);
  if (err) {
   return err;
  }
 }

 if (1) {
  u16_t interval, window;
  struct bt_conn *conn;


  conn = bt_conn_lookup_state_le(
# 4130 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                ((void *)0)
# 4130 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                    , BT_CONN_CONNECT);
  if (conn) {
   bt_conn_unref(conn);
   return 0;
  }

  conn = bt_conn_lookup_state_le(
# 4136 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                ((void *)0)
# 4136 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                    , BT_CONN_CONNECT_SCAN);
  if (!conn) {
   return 0;
  }


  atomic_clear_bit(bt_dev.flags, BT_DEV_SCAN_FILTER_DUP);

  bt_conn_unref(conn);

  if (fast_scan) {
   interval = 0x0060;
   window = 0x0030;
  } else {
   interval = 0x0800;
   window = 0x0012;
  }

  return start_le_scan(0x00, interval, window);
 }

 return 0;
}

void bt_data_parse(struct net_buf_simple *ad,
     
# 4161 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
    _Bool 
# 4161 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
         (*func)(struct bt_data *data, void *user_data),
     void *user_data)
{
 while (ad->len > 1) {
  struct bt_data data;
  u8_t len;

  len = net_buf_simple_pull_u8(ad);
  if (len == 0U) {

   return;
  }

  if (len > ad->len) {
   printf("Malformed data"", %s\r\n", __func__);
   return;
  }

  data.type = net_buf_simple_pull_u8(ad);
  data.data_len = len - 1;
  data.data = ad->data;

  if (!func(&data, user_data)) {
   return;
  }

  net_buf_simple_pull(ad, len - 1);
 }
}

static void le_adv_report(struct net_buf *buf)
{
 u8_t num_reports = net_buf_simple_pull_u8(&(buf)->b);
 struct bt_hci_evt_le_advertising_info *info;

 ;

 while (num_reports--) {
  bt_addr_le_t id_addr;
  s8_t rssi;

  if (buf->len < sizeof(*info)) {
   printf("Unexpected end of buffer"", %s\r\n", __func__);
   break;
  }

  info = net_buf_simple_pull_mem(&(buf)->b, sizeof(*info));
  rssi = info->data[info->length];

 

                                            ;

  if (info->addr.type == 0x02 ||
      info->addr.type == 0x03) {
   bt_addr_le_copy(&id_addr, &info->addr);
   id_addr.type -= 0x02;
  } else {
   bt_addr_le_copy(&id_addr,
     bt_lookup_id_addr(bt_dev.adv_id,
         &info->addr));
  }

  if (scan_dev_found_cb) {
   struct net_buf_simple_state state;

   net_buf_simple_save(&buf->b, &state);

   buf->len = info->length;
   scan_dev_found_cb(&id_addr, rssi, info->evt_type,
       &buf->b);

   net_buf_simple_restore(&buf->b, &state);
  }


  check_pending_conn(&id_addr, &info->addr, info->evt_type);


  net_buf_simple_pull(&(buf)->b, info->length + sizeof(rssi));
 }
}


int bt_hci_get_conn_handle(const struct bt_conn *conn, u16_t *conn_handle)
{
 if (conn->state != BT_CONN_CONNECTED) {
  return -
# 4248 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         128
# 4248 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }

 *conn_handle = conn->handle;
 return 0;
}


int bt_hci_register_vnd_evt_cb(bt_hci_vnd_evt_cb_t cb)
{
 hci_vnd_evt_cb = cb;
 return 0;
}


static void hci_vendor_event(struct net_buf *buf)
{
 
# 4265 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 4265 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
     handled = 
# 4265 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
               0
# 4265 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                    ;


 if (hci_vnd_evt_cb) {
  struct net_buf_simple_state state;

  net_buf_simple_save(&buf->b, &state);

  handled = (hci_vnd_evt_cb)(&buf->b);

  net_buf_simple_restore(&buf->b, &state);
 }


 if (0 && !handled) {

  printf("Unhandled vendor-specific event: %s"", %s\r\n", log_strdup(bt_hex_real(buf->data, buf->len)), __func__)
                               ;
 }
}

static const struct event_handler meta_events[] = {

 { .event = 0x02, .handler = le_adv_report, .min_len = sizeof(struct bt_hci_evt_le_advertising_report), }
                                                        ,


 { .event = 0x01, .handler = le_legacy_conn_complete, .min_len = sizeof(struct bt_hci_evt_le_conn_complete), }
                                                   ,
 { .event = 0x0a, .handler = le_enh_conn_complete, .min_len = sizeof(struct bt_hci_evt_le_enh_conn_complete), }
                                                       ,
 { .event = 0x03, .handler = le_conn_update_complete, .min_len = sizeof(struct bt_hci_evt_le_conn_update_complete), }

                                                          ,
 { .event = 0x04, .handler = le_remote_feat_complete, .min_len = sizeof(struct bt_hci_evt_le_remote_feat_complete), }

                                                          ,
 { .event = 0x06, .handler = le_conn_param_req, .min_len = sizeof(struct bt_hci_evt_le_conn_param_req), }
                                                    ,





 { .event = 0x0c, .handler = le_phy_update_complete, .min_len = sizeof(struct bt_hci_evt_le_phy_update_complete), }

                                                         ,



 { .event = 0x05, .handler = le_ltk_request, .min_len = sizeof(struct bt_hci_evt_le_ltk_request), }
                                                 ,


 { .event = 0x08, .handler = le_pkey_complete, .min_len = sizeof(struct bt_hci_evt_le_p256_public_key_complete), }
                                                              ,
 { .event = 0x09, .handler = le_dhkey_complete, .min_len = sizeof(struct bt_hci_evt_le_generate_dhkey_complete), }
                                                             ,

};

static void hci_le_meta_event(struct net_buf *buf)
{
 struct bt_hci_evt_le_meta_event *evt;

 evt = net_buf_simple_pull_mem(&(buf)->b, sizeof(*evt));

 ;

 handle_event(evt->subevent, buf, meta_events, ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(meta_events), __typeof__(&(meta_events)[0])))]) - 1) + (sizeof(meta_events) / sizeof((meta_events)[0])))));
}

static const struct event_handler normal_events[] = {
 { .event = 0xff, .handler = hci_vendor_event, .min_len = sizeof(struct bt_hci_evt_vs), }
                                     ,
 { .event = 0x3e, .handler = hci_le_meta_event, .min_len = sizeof(struct bt_hci_evt_le_meta_event), }
                                                ,
# 4390 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 { .event = 0x05, .handler = hci_disconn_complete, .min_len = sizeof(struct bt_hci_evt_disconn_complete), }
                                                   ,


 { .event = 0x08, .handler = hci_encrypt_change, .min_len = sizeof(struct bt_hci_evt_encrypt_change), }
                                                 ,
 { .event = 0x30, .handler = hci_encrypt_key_refresh_complete, .min_len = sizeof(struct bt_hci_evt_encrypt_key_refresh_complete), }

                                                               ,

};

static void hci_event(struct net_buf *buf)
{
 struct bt_hci_evt_hdr *hdr;

 if( ( buf->len >= sizeof(*hdr) ) == 0 ) user_vAssertCalled();

 hdr = net_buf_simple_pull_mem(&(buf)->b, sizeof(*hdr));
 ;
 if( ( !bt_hci_evt_is_prio(hdr->evt) ) == 0 ) user_vAssertCalled();

 handle_event(hdr->evt, buf, normal_events, ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(normal_events), __typeof__(&(normal_events)[0])))]) - 1) + (sizeof(normal_events) / sizeof((normal_events)[0])))));

 net_buf_unref(buf);
}




static void send_cmd(void)

{
 struct net_buf *buf;
 int err;
# 4437 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 ;
 buf = net_buf_get(&bt_dev.cmd_tx_queue, 0);

 if( ( buf ) == 0 ) user_vAssertCalled();


 ;
 k_sem_take(&bt_dev.ncmd_sem, -1);


 if (bt_dev.sent_cmd) {
  printf("Uncleared pending sent_cmd"", %s\r\n", __func__);
  net_buf_unref(bt_dev.sent_cmd);
  bt_dev.sent_cmd = 
# 4450 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                   ((void *)0)
# 4450 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                       ;
 }

 bt_dev.sent_cmd = net_buf_ref(buf);


                              ;

 err = bt_send(buf);
 if (err) {
  printf("Unable to send to driver (err %d)"", %s\r\n", err, __func__);
  k_sem_give(&bt_dev.ncmd_sem);
  hci_cmd_done((&cmd_data[net_buf_id(buf)])->opcode, 0x1f, buf);
  net_buf_unref(bt_dev.sent_cmd);
  bt_dev.sent_cmd = 
# 4464 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                   ((void *)0)
# 4464 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                       ;
  net_buf_unref(buf);
 }
}
# 4484 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static void process_events(struct k_poll_event *ev, int count)

{
 ;





 for (; count; ev++, count--) {

  ;
  switch (ev->state) {
  case 2:
   break;
  case 4:
   if (ev->tag == BT_EVENT_CMD_TX) {



    send_cmd();

   }
# 4515 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
            else if (1) {
    struct bt_conn *conn;

    if (ev->tag == BT_EVENT_CONN_TX_QUEUE) {
     conn = ((struct bt_conn *)(((char *)(ev->fifo)) - 
# 4519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
           __builtin_offsetof (
# 4519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           struct bt_conn
# 4519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
           , 
# 4519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           tx_queue
# 4519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
           )
# 4519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           ))

                    ;



     bt_conn_process_tx(conn);

    }
   }
   break;
  case 0:
   break;
  default:
   printf("Unexpected k_poll event state %u"", %s\r\n", ev->state, __func__);
   break;
  }
 }
}
# 4591 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static void hci_tx_thread(void *p1)



{
 static struct k_poll_event events[(2 + 1)] = {
  { .type = 3, .tag = BT_EVENT_CMD_TX, .state = 0, .mode = K_POLL_MODE_NOTIFY_ONLY, .unused = 0, { .obj = &bt_dev.cmd_tx_queue }, }


                      ,
 };

 ;

 while (1) {
  int ev_count, err;

  events[0].state = 0;
  ev_count = 1;

  if (1) {
   ev_count += bt_conn_prepare_events(&events[1]);
  }

  ;

  err = k_poll(events, ev_count, -1);
  if( ( err == 0 ) == 0 ) user_vAssertCalled();

  process_events(events, ev_count);




  k_yield();
 }
}


static void read_local_ver_complete(struct net_buf *buf)
{
 struct bt_hci_rp_read_local_version_info *rp = (void *)buf->data;

 ;

 bt_dev.hci_version = rp->hci_version;
 bt_dev.hci_revision = (rp->hci_revision);
 bt_dev.lmp_version = rp->lmp_version;
 bt_dev.lmp_subversion = (rp->lmp_subversion);
 bt_dev.manufacturer = (rp->manufacturer);
}

static void read_bdaddr_complete(struct net_buf *buf)
{
 struct bt_hci_rp_read_bd_addr *rp = (void *)buf->data;

 ;

 if (!bt_addr_cmp(&rp->bdaddr, (&(bt_addr_t) { { 0, 0, 0, 0, 0, 0 } })) ||
     !bt_addr_cmp(&rp->bdaddr, (&(bt_addr_t) { { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff } }))) {
  ;
  return;
 }

 bt_addr_copy(&bt_dev.id_addr[0].a, &rp->bdaddr);
 bt_dev.id_addr[0].type = 0x00;
 bt_dev.id_count = 1U;
}

static void read_le_features_complete(struct net_buf *buf)
{
 struct bt_hci_rp_le_read_local_features *rp = (void *)buf->data;

 ;

 memcpy(bt_dev.le.features, rp->features, sizeof(bt_dev.le.features));
}
# 4685 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static void read_buffer_size_complete(struct net_buf *buf)
{
 struct bt_hci_rp_read_buffer_size *rp = (void *)buf->data;
 u16_t pkts;

 ;


 if (bt_dev.le.mtu) {
  return;
 }

 bt_dev.le.mtu = (rp->acl_max_len);
 pkts = (rp->acl_max_num);

 ;

 k_sem_init(&bt_dev.le.pkts, pkts, pkts);
}



static void le_read_buffer_size_complete(struct net_buf *buf)
{
 struct bt_hci_rp_le_read_buffer_size *rp = (void *)buf->data;

 ;

 bt_dev.le.mtu = (rp->le_max_len);
 if (!bt_dev.le.mtu) {
  return;
 }

 ;

 k_sem_init(&bt_dev.le.pkts, rp->le_max_num, rp->le_max_num);
}


static void read_supported_commands_complete(struct net_buf *buf)
{
 struct bt_hci_rp_read_supported_commands *rp = (void *)buf->data;

 ;

 memcpy(bt_dev.supported_commands, rp->commands,
        sizeof(bt_dev.supported_commands));





 if (0) {
  bt_dev.supported_commands[34] |= 0x02;
  bt_dev.supported_commands[34] |= 0x04;
 }
}

static void read_local_features_complete(struct net_buf *buf)
{
 struct bt_hci_rp_read_local_features *rp = (void *)buf->data;

 ;

 memcpy(bt_dev.features[0], rp->features, sizeof(bt_dev.features[0]));
}

static void le_read_supp_states_complete(struct net_buf *buf)
{
 struct bt_hci_rp_le_read_supp_states *rp = (void *)buf->data;

 ;

 bt_dev.le.states = sys_get_le64(rp->le_states);
}


static void le_read_resolving_list_size_complete(struct net_buf *buf)
{
 struct bt_hci_rp_le_read_rl_size *rp = (void *)buf->data;

 ;

 bt_dev.le.rl_size = rp->rl_size;
}



static void le_read_wl_size_complete(struct net_buf *buf)
{
 struct bt_hci_rp_le_read_wl_size *rp =
  (struct bt_hci_rp_le_read_wl_size *)buf->data;

 ;

 bt_dev.le.wl_size = rp->wl_size;
}


static int common_init(void)
{
 struct net_buf *rsp;
 int err;

 if (!(bt_dev.drv->quirks & BT_QUIRK_NO_RESET)) {

  err = bt_hci_cmd_send_sync(((0x0003) | ((0x03) << 10)), 
# 4791 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                             ((void *)0)
# 4791 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                 , &rsp);
  if (err) {
   return err;
  }
  hci_reset_complete(rsp);
  net_buf_unref(rsp);
 }


 err = bt_hci_cmd_send_sync(((0x0003) | ((0x04) << 10)), 
# 4800 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                          ((void *)0)
# 4800 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                              , &rsp);
 if (err) {
  return err;
 }
 read_local_features_complete(rsp);
 net_buf_unref(rsp);


 err = bt_hci_cmd_send_sync(((0x0001) | ((0x04) << 10)), 
# 4808 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                              ((void *)0)
# 4808 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                  ,
       &rsp);
 if (err) {
  return err;
 }
 read_local_ver_complete(rsp);
 net_buf_unref(rsp);


 if (!atomic_test_bit(bt_dev.flags, BT_DEV_USER_ID_ADDR)) {
  err = bt_hci_cmd_send_sync(((0x0009) | ((0x04) << 10)), 
# 4818 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                    ((void *)0)
# 4818 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                        , &rsp);
  if (err) {
   return err;
  }
  read_bdaddr_complete(rsp);
  net_buf_unref(rsp);
 }


 err = bt_hci_cmd_send_sync(((0x0002) | ((0x04) << 10)), 
# 4827 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                              ((void *)0)
# 4827 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                  ,
       &rsp);
 if (err) {
  return err;
 }
 read_supported_commands_complete(rsp);
 net_buf_unref(rsp);

 if (0) {



  err = prng_init();
  if (err) {
   return err;
  }
 }
# 4852 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 return 0;
}

static int le_set_event_mask(void)
{
 struct bt_hci_cp_le_set_event_mask *cp_mask;
 struct net_buf *buf;
 u64_t mask = 0U;


 buf = bt_hci_cmd_create(((0x0001) | ((0x08) << 10)), sizeof(*cp_mask));
 if (!buf) {
  return -
# 4864 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 4864 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp_mask = net_buf_simple_add(&(buf)->b, sizeof(*cp_mask));

 mask |= (1ULL << (1));

 if (1) {
  if (1 &&
      (bt_dev.le.features[(6) >> 3] & (1UL << ((6) & 7)))) {
   mask |= (1ULL << (9));
  } else {
   mask |= (1ULL << (0));
  }

  mask |= (1ULL << (2));
  mask |= (1ULL << (3));

  if ((bt_dev.le.features[(1) >> 3] & (1UL << ((1) & 7)))) {
   mask |= (1ULL << (5));
  }

  if (0 &&
      (bt_dev.le.features[(5) >> 3] & (1UL << ((5) & 7)))) {
   mask |= (1ULL << (6));
  }

  if (1 &&
      ((bt_dev.le.features[(8) >> 3] & (1UL << ((8) & 7))) ||
       (bt_dev.le.features[(11) >> 3] & (1UL << ((11) & 7))))) {
   mask |= (1ULL << (11));
  }
 }

 if (1 &&
     (bt_dev.le.features[(0) >> 3] & (1UL << ((0) & 7)))) {
  mask |= (1ULL << (4));
 }





 if (1 &&
     ((bt_dev.supported_commands[34] & (1UL << (1)))) &&
     ((bt_dev.supported_commands[34] & (1UL << (2))))) {
  mask |= (1ULL << (7));
  mask |= (1ULL << (8));
 }

 sys_put_le64(mask, cp_mask->events);
 return bt_hci_cmd_send_sync(((0x0001) | ((0x08) << 10)), buf, 
# 4915 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                              ((void *)0)
# 4915 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                  );
}

static int le_init(void)
{
 struct bt_hci_cp_write_le_host_supp *cp_le;
 struct net_buf *buf, *rsp;
 int err;


 if (!(bt_dev.features[0][4] & (1UL << (6)))) {
  printf("Non-LE capable controller detected!"", %s\r\n", __func__);
  return -
# 4927 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         19
# 4927 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }


 err = bt_hci_cmd_send_sync(((0x0003) | ((0x08) << 10)), 
# 4931 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                             ((void *)0)
# 4931 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                 ,
       &rsp);
 if (err) {
  return err;
 }
 read_le_features_complete(rsp);
 net_buf_unref(rsp);



 err = bt_hci_cmd_send_sync(((0x0002) | ((0x08) << 10)),
       
# 4942 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
      ((void *)0)
# 4942 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
          , &rsp);
 if (err) {
  return err;
 }
 le_read_buffer_size_complete(rsp);
 net_buf_unref(rsp);


 if (!(bt_dev.features[0][4] & (1UL << (5)))) {
  buf = bt_hci_cmd_create(((0x006d) | ((0x03) << 10)),
     sizeof(*cp_le));
  if (!buf) {
   return -
# 4954 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          105
# 4954 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
  }

  cp_le = net_buf_simple_add(&(buf)->b, sizeof(*cp_le));


  cp_le->le = 0x01;
  cp_le->simul = 0x00;
  err = bt_hci_cmd_send_sync(((0x006d) | ((0x03) << 10)), buf,
        
# 4963 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       ((void *)0)
# 4963 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           );
  if (err) {
   return err;
  }
 }


 if ((bt_dev.supported_commands[28] & (1UL << (3)))) {
  err = bt_hci_cmd_send_sync(((0x001c) | ((0x08) << 10)), 
# 4971 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                           ((void *)0)
# 4971 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                               ,
        &rsp);
  if (err) {
   return err;
  }
  le_read_supp_states_complete(rsp);
  net_buf_unref(rsp);
 }

 if (1 &&
     0 &&
     (bt_dev.le.features[(5) >> 3] & (1UL << ((5) & 7)))) {
  struct bt_hci_cp_le_write_default_data_len *cp;
  struct bt_hci_rp_le_read_max_data_len *rp;
  u16_t tx_octets, tx_time;

  err = bt_hci_cmd_send_sync(((0x002f) | ((0x08) << 10)), 
# 4987 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                            ((void *)0)
# 4987 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                ,
        &rsp);
  if (err) {
   return err;
  }

  rp = (void *)rsp->data;
  tx_octets = (rp->max_tx_octets);
  tx_time = (rp->max_tx_time);
  net_buf_unref(rsp);

  buf = bt_hci_cmd_create(((0x0024) | ((0x08) << 10)),
     sizeof(*cp));
  if (!buf) {
   return -
# 5001 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          105
# 5001 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
  }

  cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
  cp->max_tx_octets = (tx_octets);
  cp->max_tx_time = (tx_time);

  err = bt_hci_cmd_send_sync(((0x0024) | ((0x08) << 10)),
        buf, 
# 5009 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
            ((void *)0)
# 5009 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                );
  if (err) {
   return err;
  }
 }


 if ((bt_dev.le.features[(6) >> 3] & (1UL << ((6) & 7)))) {
# 5035 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
  err = bt_hci_cmd_send_sync(((0x002a) | ((0x08) << 10)), 
# 5035 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                       ((void *)0)
# 5035 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                           ,
        &rsp);
  if (err) {
   return err;
  }
  le_read_resolving_list_size_complete(rsp);
  net_buf_unref(rsp);
 }



 err = bt_hci_cmd_send_sync(((0x000f) | ((0x08) << 10)), 
# 5046 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                      ((void *)0)
# 5046 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                          ,
       &rsp);
 if (err) {
  return err;
 }

 le_read_wl_size_complete(rsp);
 net_buf_unref(rsp);


 return le_set_event_mask();
}
# 5302 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static int br_init(void)
{

 struct net_buf *rsp;
 int err;

 if (bt_dev.le.mtu) {
  return 0;
 }


 err = bt_hci_cmd_send_sync(((0x0005) | ((0x04) << 10)), 
# 5313 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                       ((void *)0)
# 5313 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                           , &rsp);
 if (err) {
  return err;
 }

 read_buffer_size_complete(rsp);
 net_buf_unref(rsp);


 return 0;
}


static int set_event_mask(void)
{
 struct bt_hci_cp_set_event_mask *ev;
 struct net_buf *buf;
 u64_t mask = 0U;

 buf = bt_hci_cmd_create(((0x0001) | ((0x03) << 10)), sizeof(*ev));
 if (!buf) {
  return -
# 5334 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 5334 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 ev = net_buf_simple_add(&(buf)->b, sizeof(*ev));

 if (0) {



  mask |= (1ULL << (0));
  mask |= (1ULL << (2));
  mask |= (1ULL << (3));
  mask |= (1ULL << (5));
  mask |= (1ULL << (6));
  mask |= (1ULL << (10));
  mask |= (1ULL << (17));
  mask |= (1ULL << (21));
  mask |= (1ULL << (22));
  mask |= (1ULL << (23));
  mask |= (1ULL << (33));
  mask |= (1ULL << (34));
  mask |= (1ULL << (43));
  mask |= (1ULL << (46));
  mask |= (1ULL << (48));
  mask |= (1ULL << (49));
  mask |= (1ULL << (50));
  mask |= (1ULL << (51));
  mask |= (1ULL << (53));
  mask |= (1ULL << (58));
 }

 mask |= (1ULL << (15));
 mask |= (1ULL << (25));
 mask |= (1ULL << (61));

 if (1) {
  mask |= (1ULL << (4));
  mask |= (1ULL << (11));
 }

 if (1 &&
     (bt_dev.le.features[(0) >> 3] & (1UL << ((0) & 7)))) {
  mask |= (1ULL << (7));
  mask |= (1ULL << (47));
 }

 sys_put_le64(mask, ev->events);
 return bt_hci_cmd_send_sync(((0x0001) | ((0x03) << 10)), buf, 
# 5381 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                           ((void *)0)
# 5381 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                               );
}

static inline int create_random_addr(bt_addr_le_t *addr)
{
 addr->type = 0x01;

 return bt_rand(addr->a.val, 6);
}

int bt_addr_le_create_nrpa(bt_addr_le_t *addr)
{
 int err;

 err = create_random_addr(addr);
 if (err) {
  return err;
 }

 ((&addr->a)->val[5] &= 0x3f);

 return 0;
}

int bt_addr_le_create_static(bt_addr_le_t *addr)
{
 int err;

 err = create_random_addr(addr);
 if (err) {
  return err;
 }

 ((&addr->a)->val[5] |= 0xc0);

 return 0;
}
# 5436 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static void bt_dev_show_info(void)
{
# 5456 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
}
# 5582 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static int host_hci_init(void)
{
 int err;

 err = common_init();
 if (err) {
  return err;
 }

 err = le_init();
 if (err) {
  return err;
 }

 if (!(bt_dev.features[0][4] & (1UL << (5)))) {
  err = br_init();
  if (err) {
   return err;
  }
 } else if (0) {
  printf("Non-BR/EDR controller detected"", %s\r\n", __func__);
  return -
# 5603 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         5
# 5603 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
            ;
 }

 err = set_event_mask();
 if (err) {
  return err;
 }





 if (!0 && !bt_dev.id_count) {
  ;
  err = bt_setup_id_addr();
  if (err) {
   printf("Unable to set identity address"", %s\r\n", __func__);
   return err;
  }
 }

 return 0;
}

int bt_send(struct net_buf *buf)
{
 ;

 ;

 if (0) {
  return bt_hci_ecc_send(buf);
 }

 return bt_dev.drv->send(buf);
}

int bt_recv(struct net_buf *buf)
{
 ;

 ;

 switch (bt_buf_get_type(buf)) {

 case BT_BUF_ACL_IN:

  hci_acl(buf);



  return 0;

 case BT_BUF_EVT:

  hci_event(buf);



  return 0;
 default:
  printf("Invalid buf type %u"", %s\r\n", bt_buf_get_type(buf), __func__);
  net_buf_unref(buf);
  return -
# 5666 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 5666 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }
}

static const struct event_handler prio_events[] = {
 { .event = 0x0e, .handler = hci_cmd_complete, .min_len = sizeof(struct bt_hci_evt_cmd_complete), }
                                               ,
 { .event = 0x0f, .handler = hci_cmd_status, .min_len = sizeof(struct bt_hci_evt_cmd_status), }
                                             ,

 { .event = 0x1a, .handler = hci_data_buf_overflow, .min_len = sizeof(struct bt_hci_evt_data_buf_overflow), }

                                                    ,
 { .event = 0x13, .handler = hci_num_completed_packets, .min_len = sizeof(struct bt_hci_evt_num_completed_packets), }

                                                        ,

};

int bt_recv_prio(struct net_buf *buf)
{
 struct bt_hci_evt_hdr *hdr;

 ;

 if( ( bt_buf_get_type(buf) == BT_BUF_EVT ) == 0 ) user_vAssertCalled();
 if( ( buf->len >= sizeof(*hdr) ) == 0 ) user_vAssertCalled();

 hdr = net_buf_simple_pull_mem(&(buf)->b, sizeof(*hdr));
 if( ( bt_hci_evt_is_prio(hdr->evt) ) == 0 ) user_vAssertCalled();

 handle_event(hdr->evt, buf, prio_events, ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(prio_events), __typeof__(&(prio_events)[0])))]) - 1) + (sizeof(prio_events) / sizeof((prio_events)[0])))));

 net_buf_unref(buf);

 return 0;
}

int bt_hci_driver_register(const struct bt_hci_driver *drv)
{
 if (bt_dev.drv) {
  return -
# 5707 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         120
# 5707 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }

 if (!drv->open || !drv->send) {
  return -
# 5711 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 5711 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 bt_dev.drv = drv;

 ;


                                                   ;

 return 0;
}
# 5761 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
void bt_finalize_init(void)
{
 atomic_set_bit(bt_dev.flags, BT_DEV_READY);

 if (1) {
  bt_le_scan_update(
# 5766 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                   0
# 5766 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                        );
 }

 bt_dev_show_info();
}


extern void blhast_init(struct blhast_cb *cb);

static int bt_init(void)
{
 int err;
# 5791 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    err = bl_onchiphci_interface_init();
    if (err) {
  return err;
 }

 blhast_init(host_assist_cb);



 err = host_hci_init();
 if (err) {
  return err;
 }
 if (1) {
  err = bt_conn_init();
  if (err) {
   return err;
  }
 }
# 5837 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    if (0) {
        if (!bt_dev.id_count) {
         ;
         return 0;
        }

  atomic_set_bit(bt_dev.flags, BT_DEV_PRESET_ID);
 }

 bt_finalize_init();






 return 0;
}

static void init_work(struct k_work *work)
{
 int err;

 err = bt_init();
 if (ready_cb) {
  ready_cb(err);
 }
}
# 5903 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
int bt_enable(bt_ready_cb_t cb)
{
 int err;

 if (!bt_dev.drv) {
  printf("No HCI driver registered"", %s\r\n", __func__);
  return -
# 5909 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         19
# 5909 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (atomic_test_and_set_bit(bt_dev.flags, BT_DEV_ENABLE)) {
  return -
# 5913 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         120
# 5913 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }







        net_buf_init(&hci_cmd_pool, 2, (1 + 255), 
# 5922 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                                          ((void *)0)
# 5922 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                              );
        net_buf_init(&hci_rx_pool, 5, (1 + 255), 
# 5923 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                                          ((void *)0)
# 5923 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                              );





        net_buf_init(&num_complete_pool, 1, (1 + 255), 
# 5929 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                           ((void *)0)
# 5929 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                               );
# 5948 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
        k_work_init(&bt_dev.init, init_work);



        k_work_q_start();


        k_sem_init(&bt_dev.ncmd_sem, 1, 1);



        k_queue_init((struct k_queue *) &bt_dev.cmd_tx_queue, 20);




        k_sem_init(&g_poll_sem, 0, 1);
# 5981 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    if (0) {
  err = bt_settings_init();
  if (err) {
   return err;
  }
 } else {
  bt_set_name("BL602-BLE-DEV");
 }


 ready_cb = cb;
# 6001 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
k_thread_create(&tx_thread_data, "hci_tx_thread",
   1536,
   hci_tx_thread,
   (( 32 ) - 3));
# 6032 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 if (0) {
  bt_hci_ecc_init();
 }

 err = bt_dev.drv->open();
 if (err) {
  printf("HCI driver open failed (%d)"", %s\r\n", err, __func__);
  return err;
 }
# 6052 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 k_work_submit(&bt_dev.init);
 return 0;
}

struct bt_ad {
 const struct bt_data *data;
 size_t len;
};



# 6062 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 6062 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    le_check_valid_scan(void)
{
    return atomic_test_bit(bt_dev.flags, BT_DEV_EXPLICIT_SCAN);
}


# 6067 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 6067 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    le_check_valid_adv(void)
{
     return atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING);
}




extern struct k_thread recv_thread_data;
extern struct k_thread work_q_thread;
extern struct k_fifo free_tx;

extern struct k_sem sc_local_pkey_ready;


void bt_delete_queue(struct k_fifo * queue_to_del)
{
    struct net_buf *buf = 
# 6084 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                         ((void *)0)
# 6084 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                             ;
    buf = net_buf_get(queue_to_del, 0);
    while(buf){
        net_buf_unref(buf);
        buf = net_buf_get(queue_to_del, 0);
    }

    k_queue_free(&(queue_to_del->_queue));
}


extern struct net_buf_pool acl_tx_pool;
extern struct net_buf_pool prep_pool;
# 6107 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
int bt_disable_action(void)
{




    bt_gatt_deinit();


    bt_delete_queue(&recv_fifo);
    bt_delete_queue(&g_work_queue_main.fifo);
    bt_delete_queue(&bt_dev.cmd_tx_queue);

    k_queue_free((struct k_queue *)&free_tx);


    k_sem_delete(&bt_dev.ncmd_sem);
    k_sem_delete(&g_poll_sem);

    k_sem_delete(&sc_local_pkey_ready);


    k_sem_delete(&bt_dev.le.pkts);


    atomic_clear_bit(bt_dev.flags, BT_DEV_ENABLE);


    net_buf_deinit(&hci_cmd_pool);
    net_buf_deinit(&hci_rx_pool);

    net_buf_deinit(&acl_tx_pool);
    net_buf_deinit(&num_complete_pool);
# 6163 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    bl_onchiphci_interface_deinit();


    ble_controller_deinit();



    k_thread_delete(&tx_thread_data);
    k_thread_delete(&work_q_thread);
    k_thread_delete(&recv_thread_data);


    return 0;
}

int bt_disable(void)
{
    if (!atomic_test_bit(bt_dev.flags, BT_DEV_ENABLE))
        return -
# 6181 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
               120
# 6181 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                       ;

    if(

        le_check_valid_conn() ||

        atomic_test_bit(bt_dev.flags, BT_DEV_EXPLICIT_SCAN)
      || atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)){
        return -1;
    }
    else
        return bt_disable_action();
}


static int set_ad(u16_t hci_op, const struct bt_ad *ad, size_t ad_len)
{
 struct bt_hci_cp_le_set_adv_data *set_data;
 struct net_buf *buf;
 int c, i;

 buf = bt_hci_cmd_create(hci_op, sizeof(*set_data));
 if (!buf) {
  return -
# 6204 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 6204 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 set_data = net_buf_simple_add(&(buf)->b, sizeof(*set_data));

 (void)memset(set_data, 0, sizeof(*set_data));

 for (c = 0; c < ad_len; c++) {
  const struct bt_data *data = ad[c].data;

  for (i = 0; i < ad[c].len; i++) {
   int len = data[i].data_len;
   u8_t type = data[i].type;


   if (set_data->len + len + 2 > 31) {
    len = 31 - (set_data->len + 2);
    if (type != 0x09 || !len) {
     net_buf_unref(buf);
     printf("Too big advertising data"", %s\r\n", __func__);
     return -
# 6224 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
            22
# 6224 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                  ;
    }
    type = 0x08;
   }

   set_data->data[set_data->len++] = len + 1;
   set_data->data[set_data->len++] = type;

   memcpy(&set_data->data[set_data->len], data[i].data,
          len);
   set_data->len += len;
  }
 }

 return bt_hci_cmd_send_sync(hci_op, buf, 
# 6238 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                         ((void *)0)
# 6238 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                             );
}

int bt_set_name(const char *name)
{

 size_t len = strlen(name);



 if (len >= sizeof(bt_dev.name)) {
  return -
# 6249 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         12
# 6249 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (!strcmp(bt_dev.name, name)) {
  return 0;
 }

 strncpy(bt_dev.name, name, sizeof(bt_dev.name));


 if (atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING_NAME)) {
  struct bt_data data[] = { { .type = (0x09), .data_len = (strlen(name)), .data = (const u8_t *)(name), }
                    };
  struct bt_ad sd = { data, ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(data), __typeof__(&(data)[0])))]) - 1) + (sizeof(data) / sizeof((data)[0])))) };

  set_ad(((0x0009) | ((0x08) << 10)), &sd, 1);


  if (atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
   set_advertise_enable(
# 6268 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                       0
# 6268 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                            );
   set_advertise_enable(
# 6269 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                       1
# 6269 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                           );
  }
 }

 if (0) {

        bt_settings_save_name();






 }






 return 0;



}

const char *bt_get_name(void)
{

 return bt_dev.name;



}

int bt_set_id_addr(const bt_addr_le_t *addr)
{
 bt_addr_le_t non_const_addr;

 if (atomic_test_bit(bt_dev.flags, BT_DEV_READY)) {
  printf("Setting identity not allowed after bt_enable()"", %s\r\n", __func__);
  return -
# 6310 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         16
# 6310 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
              ;
 }

 bt_addr_le_copy(&non_const_addr, addr);

 return bt_id_create(&non_const_addr, 
# 6315 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                     ((void *)0)
# 6315 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                         );
}

void bt_id_get(bt_addr_le_t *addrs, size_t *count)
{
 size_t to_copy = (((*count) < (bt_dev.id_count)) ? (*count) : (bt_dev.id_count));

 memcpy(addrs, bt_dev.id_addr, to_copy * sizeof(bt_addr_le_t));
 *count = to_copy;
}

static int id_find(const bt_addr_le_t *addr)
{
 u8_t id;

 for (id = 0U; id < bt_dev.id_count; id++) {
  if (!bt_addr_le_cmp(addr, &bt_dev.id_addr[id])) {
   return id;
  }
 }

 return -
# 6336 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
        2
# 6336 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
              ;
}

static void id_create(u8_t id, bt_addr_le_t *addr, u8_t *irk)
{
 if (addr && bt_addr_le_cmp(addr, (&(bt_addr_le_t) { 0, { { 0, 0, 0, 0, 0, 0 } } }))) {
  bt_addr_le_copy(&bt_dev.id_addr[id], addr);
 } else {
  bt_addr_le_t new_addr;

  do {
   bt_addr_le_create_static(&new_addr);

  } while (id_find(&new_addr) >= 0);

  bt_addr_le_copy(&bt_dev.id_addr[id], &new_addr);

  if (addr) {
   bt_addr_le_copy(addr, &bt_dev.id_addr[id]);
  }
 }
# 6376 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 if (0 &&
     atomic_test_bit(bt_dev.flags, BT_DEV_READY)) {
  bt_settings_save_id();
 }
}

int bt_id_create(bt_addr_le_t *addr, u8_t *irk)
{
 int new_id;

 if (addr && bt_addr_le_cmp(addr, (&(bt_addr_le_t) { 0, { { 0, 0, 0, 0, 0, 0 } } }))) {
  if (addr->type != 0x01 ||
      !(((&addr->a)->val[5] & 0xc0) == 0xc0)) {
   printf("Only static random identity address supported"", %s\r\n", __func__);
   return -
# 6390 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          22
# 6390 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
  }

  if (id_find(addr) >= 0) {
   return -
# 6394 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          120
# 6394 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                  ;
  }
 }

 if (!0 && irk) {
  return -
# 6399 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 6399 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (bt_dev.id_count == ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(bt_dev.id_addr), __typeof__(&(bt_dev.id_addr)[0])))]) - 1) + (sizeof(bt_dev.id_addr) / sizeof((bt_dev.id_addr)[0]))))) {
  return -
# 6403 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         12
# 6403 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 new_id = bt_dev.id_count++;
 if (new_id == 0 &&
     !atomic_test_bit(bt_dev.flags, BT_DEV_READY)) {
  atomic_set_bit(bt_dev.flags, BT_DEV_USER_ID_ADDR);
 }

 id_create(new_id, addr, irk);

 return new_id;
}

int bt_id_reset(u8_t id, bt_addr_le_t *addr, u8_t *irk)
{
 if (addr && bt_addr_le_cmp(addr, (&(bt_addr_le_t) { 0, { { 0, 0, 0, 0, 0, 0 } } }))) {
  if (addr->type != 0x01 ||
      !(((&addr->a)->val[5] & 0xc0) == 0xc0)) {
   printf("Only static random identity address supported"", %s\r\n", __func__);
   return -
# 6423 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          22
# 6423 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
  }

  if (id_find(addr) >= 0) {
   return -
# 6427 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
          120
# 6427 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                  ;
  }
 }

 if (!0 && irk) {
  return -
# 6432 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 6432 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (id == 0 || id >= bt_dev.id_count) {
  return -
# 6436 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 6436 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (id == bt_dev.adv_id && atomic_test_bit(bt_dev.flags,
         BT_DEV_ADVERTISING)) {
  return -
# 6441 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         16
# 6441 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
              ;
 }

 if (1 &&
     bt_addr_le_cmp(&bt_dev.id_addr[id], (&(bt_addr_le_t) { 0, { { 0, 0, 0, 0, 0, 0 } } }))) {
  int err;

  err = bt_unpair(id, 
# 6448 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                     ((void *)0)
# 6448 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                         );
  if (err) {
   return err;
  }
 }

 id_create(id, addr, irk);

 return id;
}

int bt_id_delete(u8_t id)
{
 if (id == 0 || id >= bt_dev.id_count) {
  return -
# 6462 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 6462 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (!bt_addr_le_cmp(&bt_dev.id_addr[id], (&(bt_addr_le_t) { 0, { { 0, 0, 0, 0, 0, 0 } } }))) {
  return -
# 6466 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         120
# 6466 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }

 if (id == bt_dev.adv_id && atomic_test_bit(bt_dev.flags,
         BT_DEV_ADVERTISING)) {
  return -
# 6471 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         16
# 6471 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
              ;
 }

 if (1) {
  int err;

  err = bt_unpair(id, 
# 6477 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                     ((void *)0)
# 6477 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                         );
  if (err) {
   return err;
  }
 }




 bt_addr_le_copy(&bt_dev.id_addr[id], (&(bt_addr_le_t) { 0, { { 0, 0, 0, 0, 0, 0 } } }));

 if (id == bt_dev.id_count - 1) {
  bt_dev.id_count--;
 }

 if (0 &&
     atomic_test_bit(bt_dev.flags, BT_DEV_READY)) {
  bt_settings_save_id();
 }

 return 0;
}
# 6534 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
int bt_setup_id_addr(void)
{
# 6555 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 return bt_id_create(
# 6555 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                    ((void *)0)
# 6555 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                        , 
# 6555 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                          ((void *)0)
# 6555 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                              );
}


# 6558 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 6558 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    bt_addr_le_is_bonded(u8_t id, const bt_addr_le_t *addr)
{
 if (1) {
  struct bt_keys *keys = bt_keys_find_addr(id, addr);


  return keys && keys->keys;
 } else {
  return 
# 6566 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 6566 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }
}

static 
# 6570 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
      _Bool 
# 6570 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           valid_adv_param(const struct bt_le_adv_param *param, 
# 6570 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                                _Bool 
# 6570 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                     dir_adv)
{
 if (param->id >= bt_dev.id_count ||
     !bt_addr_le_cmp(&bt_dev.id_addr[param->id], (&(bt_addr_le_t) { 0, { { 0, 0, 0, 0, 0, 0 } } }))) {
  return 
# 6574 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 6574 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }
# 6592 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 if (is_wl_empty() &&
     ((param->options & BT_LE_ADV_OPT_FILTER_SCAN_REQ) ||
      (param->options & BT_LE_ADV_OPT_FILTER_CONN))) {
  return 
# 6595 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 6595 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }


 if ((param->options & BT_LE_ADV_OPT_DIR_MODE_LOW_DUTY) || !dir_adv) {
  if (param->interval_min > param->interval_max ||



      param->interval_max > 0x4000) {
   return 
# 6605 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
         0
# 6605 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
              ;
  }
 }

 return 
# 6609 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       1
# 6609 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           ;
}

static inline 
# 6612 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
             _Bool 
# 6612 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                  ad_has_name(const struct bt_data *ad, size_t ad_len)
{
 int i;

 for (i = 0; i < ad_len; i++) {
  if (ad[i].type == 0x09 ||
      ad[i].type == 0x08) {
   return 
# 6619 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
         1
# 6619 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
  }
 }

 return 
# 6623 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       0
# 6623 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
            ;
}

static int le_adv_update(const struct bt_data *ad, size_t ad_len,
    const struct bt_data *sd, size_t sd_len,
    
# 6628 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
   _Bool 
# 6628 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
        connectable, 
# 6628 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                     _Bool 
# 6628 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                          use_name)
{
 struct bt_ad d[2] = {};
 struct bt_data data;
 int err;

 d[0].data = ad;
 d[0].len = ad_len;

 err = set_ad(((0x0008) | ((0x08) << 10)), d, 1);
 if (err) {
  return err;
 }

 d[0].data = sd;
 d[0].len = sd_len;

 if (use_name) {
  const char *name;

  if (sd) {

   if (ad_has_name(sd, sd_len)) {
    return -
# 6651 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
           22
# 6651 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
   }
  }

  name = bt_get_name();
  data = (struct bt_data){ .type = (0x09), .data_len = (strlen(name)), .data = (const u8_t *)(name), }

                      ;

  d[1].data = &data;
  d[1].len = 1;
 }
# 6675 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 if (d[0].data || d[1].data || connectable) {
  err = set_ad(((0x0009) | ((0x08) << 10)), d, 2);
  if (err) {
   return err;
  }
 }

 return 0;
}

int bt_le_adv_update_data(const struct bt_data *ad, size_t ad_len,
     const struct bt_data *sd, size_t sd_len)
{
 
# 6688 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 6688 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
     connectable, use_name;

 if (!atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
  return -
# 6691 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         11
# 6691 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 connectable = atomic_test_bit(bt_dev.flags,
          BT_DEV_ADVERTISING_CONNECTABLE);
 use_name = atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING_NAME);

 return le_adv_update(ad, ad_len, sd, sd_len, connectable, use_name);
}

int bt_le_adv_start_internal(const struct bt_le_adv_param *param,
        const struct bt_data *ad, size_t ad_len,
        const struct bt_data *sd, size_t sd_len,
        const bt_addr_le_t *peer)
{
 struct bt_hci_cp_le_set_adv_param set_param;
 const bt_addr_le_t *id_addr;
 struct net_buf *buf;
 
# 6709 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
_Bool 
# 6709 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
     dir_adv = (peer != 
# 6709 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                        ((void *)0)
# 6709 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                            );
 int err = 0;

 if (!atomic_test_bit(bt_dev.flags, BT_DEV_READY)) {
  return -
# 6713 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         11
# 6713 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (!valid_adv_param(param, dir_adv)) {
  return -
# 6717 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 6717 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
  return -
# 6721 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         120
# 6721 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }

 (void)memset(&set_param, 0, sizeof(set_param));

 set_param.min_interval = (param->interval_min);
 set_param.max_interval = (param->interval_max);
 set_param.channel_map = adv_ch_map;

 if (bt_dev.adv_id != param->id) {
  atomic_clear_bit(bt_dev.flags, BT_DEV_RPA_VALID);
 }


 if ((param->options & BT_LE_ADV_OPT_FILTER_SCAN_REQ) &&
     (param->options & BT_LE_ADV_OPT_FILTER_CONN)) {
  set_param.filter_policy = 0x03;
 } else if (param->options & BT_LE_ADV_OPT_FILTER_SCAN_REQ) {
  set_param.filter_policy = 0x01;
 } else if (param->options & BT_LE_ADV_OPT_FILTER_CONN) {
  set_param.filter_policy = 0x02;
 } else {



  set_param.filter_policy = 0x00;
 }


 bt_dev.adv_id = param->id;
 id_addr = &bt_dev.id_addr[param->id];

 if (param->options & BT_LE_ADV_OPT_CONNECTABLE) {
  if (0 &&
      !(param->options & BT_LE_ADV_OPT_USE_IDENTITY)) {






                err = le_set_private_addr(param->id);

   if (err) {
    return err;
   }

   if ((bt_dev.le.features[(6) >> 3] & (1UL << ((6) & 7)))) {



    set_param.own_addr_type =
     0x03;

   } else {
    set_param.own_addr_type = 0x01;
   }
  } else {






   if (id_addr->type == 0x01) {
    err = set_random_address(&id_addr->a);
    if (err) {
     return err;
    }
   }

   set_param.own_addr_type = id_addr->type;
  }

  if (dir_adv) {
   if (param->options & BT_LE_ADV_OPT_DIR_MODE_LOW_DUTY) {
    set_param.type = 0x04;
   } else {
    set_param.type = 0x01;
   }

   bt_addr_le_copy(&set_param.direct_addr, peer);

   if (1 &&
       !0 &&
       (bt_dev.le.features[(6) >> 3] & (1UL << ((6) & 7))) &&
       (param->options & BT_LE_ADV_OPT_DIR_ADDR_RPA)) {



    set_param.own_addr_type |=
     0x02;
   }
  } else {
   set_param.type = 0x00;
  }
 } else {
  if (param->options & BT_LE_ADV_OPT_USE_IDENTITY) {
   if (id_addr->type == 0x01) {
    err = set_random_address(&id_addr->a);
   }

   set_param.own_addr_type = id_addr->type;
  } else {
# 6841 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
   set_param.own_addr_type = 0x00;



  }

  if (err) {
   return err;
  }

  if (sd) {
   set_param.type = 0x02;
  } else {
   set_param.type = 0x03;
  }
 }
# 6865 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 buf = bt_hci_cmd_create(((0x0006) | ((0x08) << 10)), sizeof(set_param));
 if (!buf) {
  return -
# 6867 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 6867 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 net_buf_simple_add_mem(&(buf)->b, &set_param, sizeof(set_param));

 err = bt_hci_cmd_send_sync(((0x0006) | ((0x08) << 10)), buf, 
# 6872 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                            ((void *)0)
# 6872 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                );
 if (err) {
  return err;
 }

 if (!dir_adv) {
  err = le_adv_update(ad, ad_len, sd, sd_len,
        param->options & BT_LE_ADV_OPT_CONNECTABLE,
        param->options & BT_LE_ADV_OPT_USE_NAME);
  if (err) {
   return err;
  }
 }

 err = set_advertise_enable(
# 6886 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                           1
# 6886 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                               );
 if (err) {
  return err;
 }

 atomic_set_bit_to(bt_dev.flags, BT_DEV_KEEP_ADVERTISING,
     !(param->options & BT_LE_ADV_OPT_ONE_TIME));

 atomic_set_bit_to(bt_dev.flags, BT_DEV_ADVERTISING_NAME,
     param->options & BT_LE_ADV_OPT_USE_NAME);

 atomic_set_bit_to(bt_dev.flags, BT_DEV_ADVERTISING_CONNECTABLE,
     param->options & BT_LE_ADV_OPT_CONNECTABLE);



    if(!atomic_test_bit(bt_dev.flags, BT_DEV_ASSIST_RUN)
  && host_assist_cb && host_assist_cb->le_adv_cb)
  host_assist_cb->le_adv_cb(param, ad, ad_len, sd, sd_len);


 return 0;
}

int bt_le_read_rssi(u16_t handle,int8_t *rssi)
{
 struct bt_hci_cp_read_rssi *le_rssi;
 struct bt_hci_rp_read_rssi *rsp_rssi;
 struct net_buf *buf;
 struct net_buf *rsp;
 int ret;

 buf = bt_hci_cmd_create(((0x0005) | ((0x05) << 10)), sizeof(*le_rssi));
 if (!buf) {
  return -
# 6920 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 6920 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 le_rssi = net_buf_simple_add(&(buf)->b, sizeof(*le_rssi));
 memset(le_rssi, 0, sizeof(*le_rssi));

 le_rssi->handle = handle;

 ret = bt_hci_cmd_send_sync(((0x0005) | ((0x05) << 10)),buf,&rsp);

 if (ret) {
   return ret;
 }

 rsp_rssi = (struct bt_hci_rp_read_rssi *) rsp->data;
 *rssi = rsp_rssi->rssi;

 net_buf_unref(rsp);

 return ret;
}

int set_adv_enable(
# 6942 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                  _Bool 
# 6942 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                       enable)
{
 int err;
    if (!atomic_test_bit(bt_dev.flags, BT_DEV_READY)) {
  return -
# 6946 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         11
# 6946 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

    if (atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
  return -
# 6950 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         120
# 6950 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }

 err = set_advertise_enable(enable);
 if (err) {
  return err;
 }

 return 0;
}

int set_adv_param(const struct bt_le_adv_param *param)
{
 struct bt_hci_cp_le_set_adv_param set_param;
 const bt_addr_le_t *id_addr;
 struct net_buf *buf;
 int err = 0;

 if (!atomic_test_bit(bt_dev.flags, BT_DEV_READY)) {
  return -
# 6969 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         11
# 6969 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
  return -
# 6973 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         120
# 6973 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }

 (void)memset(&set_param, 0, sizeof(set_param));

 set_param.min_interval = (param->interval_min);
 set_param.max_interval = (param->interval_max);
 set_param.channel_map = 0x07;

 if (bt_dev.adv_id != param->id) {
  atomic_clear_bit(bt_dev.flags, BT_DEV_RPA_VALID);
 }


 if ((param->options & BT_LE_ADV_OPT_FILTER_SCAN_REQ) &&
     (param->options & BT_LE_ADV_OPT_FILTER_CONN)) {
  set_param.filter_policy = 0x03;
 } else if (param->options & BT_LE_ADV_OPT_FILTER_SCAN_REQ) {
  set_param.filter_policy = 0x01;
 } else if (param->options & BT_LE_ADV_OPT_FILTER_CONN) {
  set_param.filter_policy = 0x02;
 } else {



  set_param.filter_policy = 0x00;
 }


 bt_dev.adv_id = param->id;
 id_addr = &bt_dev.id_addr[param->id];

 if (param->options & BT_LE_ADV_OPT_CONNECTABLE) {
  if (0 &&
      !(param->options & BT_LE_ADV_OPT_USE_IDENTITY)) {






   err = le_set_private_addr(param->id);

   if (err) {
    return err;
   }

   if ((bt_dev.le.features[(6) >> 3] & (1UL << ((6) & 7)))) {
# 7029 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
    set_param.own_addr_type =
     0x03;

   } else {
    set_param.own_addr_type = 0x01;
   }
  } else {






   if (id_addr->type == 0x01) {
    err = set_random_address(&id_addr->a);
    if (err) {
     return err;
    }
   }

   set_param.own_addr_type = id_addr->type;
  }

  set_param.type = 0x00;

 } else {
  if (param->options & BT_LE_ADV_OPT_USE_IDENTITY) {
   if (id_addr->type == 0x01) {
    err = set_random_address(&id_addr->a);
   }

   set_param.own_addr_type = id_addr->type;
  } else {







   err = le_set_private_addr(param->id);






       set_param.own_addr_type = 0x01;

  }

  if (err) {
   return err;
  }

  set_param.type = 0x03;

 }

 buf = bt_hci_cmd_create(((0x0006) | ((0x08) << 10)), sizeof(set_param));
 if (!buf) {
  return -
# 7090 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 7090 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 net_buf_simple_add_mem(&(buf)->b, &set_param, sizeof(set_param));

 err = bt_hci_cmd_send_sync(((0x0006) | ((0x08) << 10)), buf, 
# 7095 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                            ((void *)0)
# 7095 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                );
 if (err) {
  return err;
 }

 atomic_set_bit_to(bt_dev.flags, BT_DEV_KEEP_ADVERTISING,
     !(param->options & BT_LE_ADV_OPT_ONE_TIME));

 atomic_set_bit_to(bt_dev.flags, BT_DEV_ADVERTISING_NAME,
     param->options & BT_LE_ADV_OPT_USE_NAME);

 atomic_set_bit_to(bt_dev.flags, BT_DEV_ADVERTISING_CONNECTABLE,
     param->options & BT_LE_ADV_OPT_CONNECTABLE);

 return 0;
}


int set_ad_and_rsp_d(u16_t hci_op, u8_t *data, u32_t ad_len)
{
 struct net_buf *buf;
 u32_t len;
 u8_t size;

 if(((0x0008) | ((0x08) << 10)) == hci_op){

  size = sizeof(struct bt_hci_cp_le_set_adv_data);

 }else if(((0x0009) | ((0x08) << 10)) == hci_op){

  size = sizeof(struct bt_hci_cp_le_set_scan_rsp_data);

 }else
  return -
# 7128 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         134
# 7128 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;

    buf = bt_hci_cmd_create(hci_op, size);
 if (!buf) {
  return -
# 7132 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 7132 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 if(((0x0008) | ((0x08) << 10)) == hci_op){

  struct bt_hci_cp_le_set_adv_data *set_data = net_buf_simple_add(&(buf)->b, size);
  memset(set_data, 0, size);
  set_data->len = ad_len;

  if (set_data->len > 30) {
   len = 30 - (set_data->len);
   if (!len) {
    net_buf_unref(buf);
    return -
# 7145 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
           105
# 7145 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                  ;
   }
  }

  memcpy(set_data->data,data,set_data->len);

 }else if(((0x0009) | ((0x08) << 10)) == hci_op){

  struct bt_hci_cp_le_set_scan_rsp_data *set_data = net_buf_simple_add(&(buf)->b, size);
  memset(set_data, 0, size);

  set_data->len = ad_len;

  if (set_data->len > 30) {
   len = 30 - (set_data->len);
   if (!len) {
    net_buf_unref(buf);
    return -
# 7162 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
           105
# 7162 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                  ;
   }
  }

  memcpy(set_data->data,data,set_data->len);

 }else
  return -
# 7169 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 7169 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;

    return bt_hci_cmd_send_sync(hci_op,buf,
# 7171 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                          ((void *)0)
# 7171 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                              );
}

int set_adv_channel_map(u8_t channel)
{
    int err = 0;

    if(channel >= 1 && channel <= 7)
    {
        adv_ch_map = channel;
    }
    else
    {
        err = -1;
    }

    return err;
}

int bt_get_local_public_address(bt_addr_le_t *adv_addr)
{
 int err = 0;

 bt_addr_le_copy(adv_addr, bt_dev.id_addr);
 return err;
}

int bt_get_local_ramdon_address(bt_addr_le_t *adv_addr)
{
 int err = 0;

 bt_addr_le_copy(adv_addr,&bt_dev.random_addr);
 return err;
}


int bt_le_adv_start(const struct bt_le_adv_param *param,
      const struct bt_data *ad, size_t ad_len,
      const struct bt_data *sd, size_t sd_len)
{
 if (param->options & BT_LE_ADV_OPT_DIR_MODE_LOW_DUTY) {
  return -
# 7212 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 7212 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 return bt_le_adv_start_internal(param, ad, ad_len, sd, sd_len, 
# 7215 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                               ((void *)0)
# 7215 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                   );
}

int bt_le_adv_stop(void)
{
 int err;




 atomic_clear_bit(bt_dev.flags, BT_DEV_KEEP_ADVERTISING);

 if (!atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
  return 0;
 }

 err = set_advertise_enable(
# 7231 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                           0
# 7231 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                );
 if (err) {
  return err;
 }

 if (!0) {

  if (atomic_test_bit(bt_dev.flags, BT_DEV_SCANNING) &&
      atomic_test_bit(bt_dev.flags, BT_DEV_ACTIVE_SCAN)) {
   le_set_private_addr(bt_dev.adv_id);
  }
 }

 return 0;
}
# 7383 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
static 
# 7383 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
      _Bool 
# 7383 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           valid_le_scan_param(const struct bt_le_scan_param *param)
{
 if (param->type != 0x00 &&
     param->type != 0x01) {
  return 
# 7387 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 7387 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 if (param->filter_dup &
     ~(BT_LE_SCAN_FILTER_DUPLICATE | BT_LE_SCAN_FILTER_WHITELIST)) {
  return 
# 7392 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 7392 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 if (is_wl_empty() &&
     param->filter_dup & BT_LE_SCAN_FILTER_WHITELIST) {
  return 
# 7397 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 7397 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 if (param->interval < 0x0004 || param->interval > 0x4000) {
  return 
# 7401 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 7401 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 if (param->window < 0x0004 || param->window > 0x4000) {
  return 
# 7405 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 7405 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 if (param->window > param->interval) {
  return 
# 7409 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
        0
# 7409 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
             ;
 }

 return 
# 7412 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       1
# 7412 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           ;
}
# 7463 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
int bt_le_scan_start(const struct bt_le_scan_param *param, bt_le_scan_cb_t cb)

{
 int err;

 if (!atomic_test_bit(bt_dev.flags, BT_DEV_READY)) {
  return -
# 7469 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         11
# 7469 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }


 if (!valid_le_scan_param(param)) {
  return -
# 7474 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 7474 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }


 if (atomic_test_and_set_bit(bt_dev.flags, BT_DEV_EXPLICIT_SCAN)) {
  return -
# 7479 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         120
# 7479 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }

 if (atomic_test_bit(bt_dev.flags, BT_DEV_SCANNING)) {
  err = set_le_scan_enable(0x00);
  if (err) {
   atomic_clear_bit(bt_dev.flags, BT_DEV_EXPLICIT_SCAN);
   return err;
  }
 }

 atomic_set_bit_to(bt_dev.flags, BT_DEV_SCAN_FILTER_DUP,
     param->filter_dup & BT_LE_SCAN_FILTER_DUPLICATE);


 atomic_set_bit_to(bt_dev.flags, BT_DEV_SCAN_WL,
     param->filter_dup & BT_LE_SCAN_FILTER_WHITELIST);


 err = start_le_scan(param->type, param->interval, param->window);
 if (err) {
  atomic_clear_bit(bt_dev.flags, BT_DEV_EXPLICIT_SCAN);
  return err;
 }

 scan_dev_found_cb = cb;


    if(!atomic_test_bit(bt_dev.flags, BT_DEV_ASSIST_RUN)
  && host_assist_cb && host_assist_cb->le_scan_cb)
  host_assist_cb->le_scan_cb(param, cb);


 return 0;
}

int bt_le_scan_stop(void)
{

 if (!atomic_test_and_clear_bit(bt_dev.flags, BT_DEV_EXPLICIT_SCAN)) {
  return -
# 7519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         120
# 7519 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
 }

 scan_dev_found_cb = 
# 7522 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                    ((void *)0)
# 7522 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                        ;

 return bt_le_scan_update(
# 7524 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                         0
# 7524 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                              );
}



int bt_le_whitelist_add(const bt_addr_le_t *addr)
{
 struct bt_hci_cp_le_add_dev_to_wl *cp;
 struct net_buf *buf;
 int err;

 if (!(bt_dev.le.wl_entries < bt_dev.le.wl_size)) {
  return -
# 7536 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         12
# 7536 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 buf = bt_hci_cmd_create(((0x0011) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 7541 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 7541 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 bt_addr_le_copy(&cp->addr, addr);

 err = bt_hci_cmd_send_sync(((0x0011) | ((0x08) << 10)), buf, 
# 7547 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                            ((void *)0)
# 7547 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                );
 if (err) {
  printf("Failed to add device to whitelist"", %s\r\n", __func__);

  return err;
 }

 bt_dev.le.wl_entries++;

 return 0;
}

int bt_le_whitelist_rem(const bt_addr_le_t *addr)
{
 struct bt_hci_cp_le_rem_dev_from_wl *cp;
 struct net_buf *buf;
 int err;

 buf = bt_hci_cmd_create(((0x0012) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  return -
# 7567 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 7567 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 bt_addr_le_copy(&cp->addr, addr);

 err = bt_hci_cmd_send_sync(((0x0012) | ((0x08) << 10)), buf, 
# 7573 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                              ((void *)0)
# 7573 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                  );
 if (err) {
  printf("Failed to remove device from whitelist"", %s\r\n", __func__);
  return err;
 }

 bt_dev.le.wl_entries--;
 return 0;
}

int bt_le_whitelist_clear(void)
{
 int err = bt_hci_cmd_send_sync(((0x0010) | ((0x08) << 10)), 
# 7585 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                      ((void *)0)
# 7585 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                          , 
# 7585 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                            ((void *)0)
# 7585 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                );

 if (err) {
  printf("Failed to clear whitelist"", %s\r\n", __func__);
  return err;
 }

 bt_dev.le.wl_entries = 0;
 return 0;
}


int bt_le_set_chan_map(u8_t chan_map[5])
{
 struct bt_hci_cp_le_set_host_chan_classif *cp;
 struct net_buf *buf;

 if (!1) {
  return -
# 7603 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         134
# 7603 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 if (!(bt_dev.supported_commands[27] & (1UL << (3)))) {
  printf("Set Host Channel Classification command is " "not supported"", %s\r\n", __func__)
                   ;
  return -
# 7609 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         134
# 7609 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 buf = bt_hci_cmd_create(((0x0014) | ((0x08) << 10)),
    sizeof(*cp));
 if (!buf) {
  return -
# 7615 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 7615 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));

 memcpy(&cp->ch_map[0], &chan_map[0], 4);
 cp->ch_map[4] = chan_map[4] & ((1UL << (5)) - 1);

 return bt_hci_cmd_send_sync(((0x0014) | ((0x08) << 10)),
        buf, 
# 7624 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
            ((void *)0)
# 7624 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                );
}

int bt_set_tx_pwr(int8_t power)
{
    struct bt_hci_cp_vs_set_tx_pwr set_param;
 struct net_buf *buf;
 int err;

    if(power < 0 || power > 20)
        return 0x12;

 memset(&set_param, 0, sizeof(set_param));

 set_param.power = power;

 buf = bt_hci_cmd_create(((0x0061) | ((0x3f) << 10)), sizeof(set_param));
 if (!buf) {
  return -
# 7642 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 7642 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 net_buf_simple_add_mem(&(buf)->b, &set_param, sizeof(set_param));

 err = bt_hci_cmd_send_sync(((0x0061) | ((0x3f) << 10)), buf, 
# 7647 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                         ((void *)0)
# 7647 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                             );

 if (err) {
  return err;
 }

 return 0;
}


int bt_set_bd_addr(const bt_addr_t *addr)
{
 struct bt_hci_cp_vs_set_bd_addr set_param;
 struct net_buf *buf;
 int err;

 memset(&set_param, 0, sizeof(set_param));

 memcpy(&set_param.bdaddr,addr,sizeof(*addr));

 buf = bt_hci_cmd_create(((0x0062) | ((0x3f) << 10)), sizeof(set_param));
 if (!buf) {
  return -
# 7669 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 7669 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 net_buf_simple_add_mem(&(buf)->b, &set_param, sizeof(set_param));

 err = bt_hci_cmd_send_sync(((0x0062) | ((0x3f) << 10)), buf, 
# 7674 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                          ((void *)0)
# 7674 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                              );

 if (err) {
  return err;
 }

 return 0;
}



int bt_buf_get_rx_avail_cnt(void)
{
 return (k_queue_get_cnt(&hci_rx_pool.free._queue)
  + hci_rx_pool.uninit_count);
}

struct net_buf *bt_buf_get_rx(enum bt_buf_type type, s32_t timeout)
{
 struct net_buf *buf;

 do { } while ((0))
                                   ;
# 7705 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
 buf = net_buf_alloc_fixed(&hci_rx_pool, timeout);


 if (buf) {
  net_buf_simple_reserve(&(buf)->b, 1);
  bt_buf_set_type(buf, type);
 }

 return buf;
}

struct net_buf *bt_buf_get_cmd_complete(s32_t timeout)
{
 struct net_buf *buf;
 unsigned int key;

 key = irq_lock();
 buf = bt_dev.sent_cmd;
 bt_dev.sent_cmd = 
# 7723 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                  ((void *)0)
# 7723 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                      ;
 irq_unlock(key);

 ;

 if (buf) {
  bt_buf_set_type(buf, BT_BUF_EVT);
  buf->len = 0U;
  net_buf_simple_reserve(&(buf)->b, 1);

  return buf;
 }

 return bt_buf_get_rx(BT_BUF_EVT, timeout);
}

struct net_buf *bt_buf_get_evt(u8_t evt, 
# 7739 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                        _Bool 
# 7739 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                             discardable, s32_t timeout)
{
 switch (evt) {

 case 0x13:
  {
   struct net_buf *buf;

   buf = net_buf_alloc_fixed(&num_complete_pool, timeout);
   if (buf) {
    net_buf_simple_reserve(&(buf)->b, 1);
    bt_buf_set_type(buf, BT_BUF_EVT);
   }

   return buf;
  }

 case 0x0e:
 case 0x0f:
  return bt_buf_get_cmd_complete(timeout);
 default:
# 7774 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
  return bt_buf_get_rx(BT_BUF_EVT, timeout);
 }
}
# 8016 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
int bt_pub_key_gen(struct bt_pub_key_cb *new_cb)
{
 int err;







 if (!(bt_dev.supported_commands[34] & (1UL << (1))) ||
     !(bt_dev.supported_commands[34] & (1UL << (2)))) {
  printf("ECC HCI commands not available"", %s\r\n", __func__);
  return -
# 8029 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         134
# 8029 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }


 struct bt_pub_key_cb *cb;
    struct bt_pub_key_cb *valid_cb;
    
# 8035 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
   _Bool 
# 8035 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
        existed = 
# 8035 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                  0
# 8035 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                       ;

    if(pub_key_cb){
        cb = pub_key_cb;
        valid_cb = cb;
        while(cb){
            if(new_cb->func == cb->func){
                existed = 
# 8042 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                         1
# 8042 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                             ;
                break;
            }

            valid_cb = cb;
            cb = cb->_next;
        }

        if(!existed){
            valid_cb->_next = new_cb;
        }
    }else{
        pub_key_cb = new_cb;
    }





 if (atomic_test_and_set_bit(bt_dev.flags, BT_DEV_PUB_KEY_BUSY)) {
  return 0;
 }

 atomic_clear_bit(bt_dev.flags, BT_DEV_HAS_PUB_KEY);

 err = bt_hci_cmd_send_sync(((0x0025) | ((0x08) << 10)), 
# 8067 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                         ((void *)0)
# 8067 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                             , 
# 8067 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                               ((void *)0)
# 8067 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                   );
 if (err) {
  printf("Sending LE P256 Public Key command failed"", %s\r\n", __func__);
  atomic_clear_bit(bt_dev.flags, BT_DEV_PUB_KEY_BUSY);
  pub_key_cb = 
# 8071 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
              ((void *)0)
# 8071 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                  ;
  return err;
 }

 return 0;
}

const u8_t *bt_pub_key_get(void)
{
 if (atomic_test_bit(bt_dev.flags, BT_DEV_HAS_PUB_KEY)) {
  return pub_key;
 }

 return 
# 8084 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
       ((void *)0)
# 8084 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
           ;
}

int bt_dh_key_gen(const u8_t remote_pk[64], bt_dh_key_cb_t cb)
{
 struct bt_hci_cp_le_generate_dhkey *cp;
 struct net_buf *buf;
 int err;

 if (dh_key_cb || atomic_test_bit(bt_dev.flags, BT_DEV_PUB_KEY_BUSY)) {
  return -
# 8094 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         16
# 8094 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
              ;
 }

 if (!atomic_test_bit(bt_dev.flags, BT_DEV_HAS_PUB_KEY)) {
  return -
# 8098 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         125
# 8098 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                      ;
 }

 dh_key_cb = cb;

 buf = bt_hci_cmd_create(((0x0026) | ((0x08) << 10)), sizeof(*cp));
 if (!buf) {
  dh_key_cb = 
# 8105 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
             ((void *)0)
# 8105 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
  return -
# 8106 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         105
# 8106 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                ;
 }

 cp = net_buf_simple_add(&(buf)->b, sizeof(*cp));
 memcpy(cp->key, remote_pk, sizeof(cp->key));

 err = bt_hci_cmd_send_sync(((0x0026) | ((0x08) << 10)), buf, 
# 8112 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                                             ((void *)0)
# 8112 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                                                 );
 if (err) {
  dh_key_cb = 
# 8114 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
             ((void *)0)
# 8114 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                 ;
  return err;
 }

 return 0;
}
# 8131 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
int bt_le_oob_get_local(u8_t id, struct bt_le_oob *oob)
{
 int err;

 if (id >= 1) {
  return -
# 8136 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3
         22
# 8136 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
               ;
 }

 if (0) {

  atomic_clear_bit(bt_dev.flags, BT_DEV_RPA_VALID);

  err = le_set_private_addr(id);
  if (err) {
   return err;
  }

  bt_addr_le_copy(&oob->addr, &bt_dev.random_addr);
 } else {
  bt_addr_le_copy(&oob->addr, &bt_dev.id_addr[id]);
 }


 if (1) {
  err = bt_smp_le_oob_generate_sc_data(&oob->le_sc_data);
  if (err) {
   return err;
  }
 }

 return 0;
}


int bt_le_oob_set_sc_data(struct bt_conn *conn,
     const struct bt_le_oob_sc_data *oobd_local,
     const struct bt_le_oob_sc_data *oobd_remote)
{
 return bt_smp_le_oob_set_sc_data(conn, oobd_local, oobd_remote);
}

int bt_le_oob_get_sc_data(struct bt_conn *conn,
     const struct bt_le_oob_sc_data **oobd_local,
     const struct bt_le_oob_sc_data **oobd_remote)
{
 return bt_smp_le_oob_get_sc_data(conn, oobd_local, oobd_remote);
}



void hci_release_conn_related_cmd(void)
{
    u16_t opcode;

    (void)opcode;

    if(bt_dev.sent_cmd)
    {
        opcode = (&cmd_data[net_buf_id(bt_dev.sent_cmd)])->opcode;
        switch(opcode)
        {
            case ((0x0022) | ((0x08) << 10)):
            case ((0x0016) | ((0x08) << 10)):
            case ((0x0031) | ((0x08) << 10)):
            case ((0x0032) | ((0x08) << 10)):
            case ((0x0021) | ((0x08) << 10)):
            case ((0x0020) | ((0x08) << 10)):
            case ((0x001b) | ((0x08) << 10)):
            case ((0x001a) | ((0x08) << 10)):
            {

                k_sem_give(&bt_dev.ncmd_sem);
                hci_cmd_done(opcode, 0x1f, bt_dev.sent_cmd);
                net_buf_unref(bt_dev.sent_cmd);
                bt_dev.sent_cmd = 
# 8205 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c" 3 4
                                 ((void *)0)
# 8205 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
                                     ;
            }
            break;
            default:
            break;
        }

    }
}
# 8223 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.c"
int bt_set_event_mask(void)
{
    return set_event_mask();
}

int bt_le_set_event_mask(void)
{
    return le_set_event_mask();
}

void bt_hci_reset_complete(struct net_buf *buf)
{
    hci_reset_complete(buf);
}

void bt_register_host_assist_cb(struct blhast_cb *cb)
{
    host_assist_cb = cb;
}
