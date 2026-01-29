# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/datic//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
# 51 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
# 34 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4
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
# 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 2 3 4
# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2






# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"

# 127 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskSwitchContext( void );
extern void vEnvironmentCall( uint32_t exception );
# 97 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 152 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
BaseType_t xPortIsInsideInterrupt( void );
# 53 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
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
# 63 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1095 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1133 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1146 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1162 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1206 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1235 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1263 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 52 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
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
# 345 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
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
# 330 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1513 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;






        typedef void (*TlsDeleteCallbackFunction_t)( int, void * );




        UBaseType_t vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue, TlsDeleteCallbackFunction_t pvDelCallback);
# 1541 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1550 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1649 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
UBaseType_t xAddTasksToAllList( void ) ;
List_t * pxTaskGetAllList( void ) ;
# 1698 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1752 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1782 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1863 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1954 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2031 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2132 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2201 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2217 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2238 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2271 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2285 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2311 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2322 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2378 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2399 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2416 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 53 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h" 1
# 38 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h" 2
# 76 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
struct tmrTimerControl;
typedef struct tmrTimerControl * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 228 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreate( const char * const pcTimerName,
        const TickType_t xTimerPeriodInTicks,
        const UBaseType_t uxAutoReload,
        void * const pvTimerID,
        TimerCallbackFunction_t pxCallbackFunction ) ;
# 358 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreateStatic( const char * const pcTimerName,
          const TickType_t xTimerPeriodInTicks,
          const UBaseType_t uxAutoReload,
          void * const pvTimerID,
          TimerCallbackFunction_t pxCallbackFunction,
          StaticTimer_t *pxTimerBuffer ) ;
# 386 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;
# 407 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;
# 444 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;







TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;
# 1187 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1221 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;
# 1232 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
const char * pcTimerGetName( TimerHandle_t xTimer ) ;
# 1249 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetReloadMode( TimerHandle_t xTimer, const UBaseType_t uxAutoReload ) ;
# 1260 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;
# 1275 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;


 void vTimerSetTimerNumber( TimerHandle_t xTimer, UBaseType_t uxTimerNumber ) ;
 UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;
# 54 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 29 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 30 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3

# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 48 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 36 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 37 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 60 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 350 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3
# 28 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


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
# 90 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
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
# 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
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
# 98 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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
# 292 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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
# 819 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 61 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
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
# 47 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 37 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 54 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 47 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long __fd_mask;

typedef __fd_mask fd_mask;
# 48 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef struct fd_set {
 __fd_mask __fds_bits[(((64) + ((((int)sizeof(__fd_mask) * 8)) - 1)) / (((int)sizeof(__fd_mask) * 8)))];
} fd_set;
# 74 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




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
# 119 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
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
# 220 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
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
# 154 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
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
# 224 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 257 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 339 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 374 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 577 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 624 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 687 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 797 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 55 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 17 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 18 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


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


# 25 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




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
# 112 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
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
# 172 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *__attribute__((__nonnull__ (1))) basename (const char *) __asm__("" "__gnu_basename");


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h" 1
# 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 1 3
# 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 1 3
# 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 17 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/time.h" 1 3
# 20 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s,
        size_t _maxsize, const char *restrict _fmt,
        const struct tm *restrict _t);


extern size_t strftime_l (char *restrict _s, size_t _maxsize,
     const char *restrict _fmt,
     const struct tm *restrict _t, locale_t _l);


char *asctime_r (const struct tm *restrict,
     char *restrict);
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict,
     struct tm *restrict);
struct tm *localtime_r (const time_t *restrict,
     struct tm *restrict);








char *strptime (const char *restrict,
     const char *restrict,
     struct tm *restrict);


char *strptime_l (const char *restrict, const char *restrict,
    struct tm *restrict, locale_t);



void tzset (void);

void _tzset_r (struct _reent *);
# 134 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
extern long _timezone;
extern int _daylight;


extern char *_tzname[2];
# 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 2 3
# 27 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
struct stat
{
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;





  struct timespec st_atim;
  struct timespec st_mtim;
  struct timespec st_ctim;
  blksize_t st_blksize;
  blkcnt_t st_blocks;

  long st_spare4[2];


};
# 137 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
int chmod (const char *__path, mode_t __mode );
int fchmod (int __fd, mode_t __mode);
int fstat (int __fd, struct stat *__sbuf );
int mkdir (const char *_path, mode_t __mode );
int mkfifo (const char *__path, mode_t __mode );
int stat (const char *restrict __path, struct stat *restrict __sbuf );
mode_t umask (mode_t __mask );







int fchmodat (int, const char *, mode_t, int);
int fstatat (int, const char *restrict , struct stat *restrict, int);
int mkdirat (int, const char *, mode_t);
int mkfifoat (int, const char *, mode_t);
int mknodat (int, const char *, mode_t, dev_t);
int utimensat (int, const char *, const struct timespec *, int);


int futimens (int, const struct timespec *);
# 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_dir.h" 1




# 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_dir.h"
struct statfs {
    long f_type;
    long f_bsize;
    long f_blocks;
    long f_bfree;
    long f_bavail;
    long f_files;
    long f_ffree;
    long f_fsid;
    long f_namelen;
};

typedef struct {
    int d_ino;
    uint8_t d_type;
    char d_name[];
} aos_dirent_t;

typedef struct {
    int dd_vfs_fd;
    int dd_rsv;
} aos_dir_t;
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 1







# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 2


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_conf.h" 1
# 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 2






enum {
    VFS_TYPE_NOT_INIT,
    VFS_TYPE_CHAR_DEV,
    VFS_TYPE_BLOCK_DEV,
    VFS_TYPE_FS_DEV
};
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h"
typedef const struct file_ops file_ops_t;
typedef const struct fs_ops fs_ops_t;

union inode_ops_t {
    const file_ops_t *i_ops;
    const fs_ops_t *i_fops;
};


typedef struct {
    union inode_ops_t ops;
    void *i_arg;
    char *i_name;
    int i_flags;
    uint8_t type;
    uint8_t refs;
} inode_t;

typedef struct {
    inode_t *node;
    void *f_arg;
    size_t offset;
    int fd;
} file_t;

struct pollfd;
typedef void (*poll_notify_t)(struct pollfd *fd, void *arg);
struct file_ops {
    int (*open) (inode_t *node, file_t *fp);
    int (*close) (file_t *fp);
    ssize_t (*read) (file_t *fp, void *buf, size_t nbytes);
    ssize_t (*write) (file_t *fp, const void *buf, size_t nbytes);
    int (*ioctl) (file_t *fp, int cmd, unsigned long arg);

    int (*poll) (file_t *fp, 
# 78 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 3 4
                                 _Bool 
# 78 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h"
                                      flag, poll_notify_t notify, struct pollfd *fd, void *arg);

    int (*sync) (file_t *fp);
};

struct fs_ops {
    int (*open) (file_t *fp, const char *path, int flags);
    int (*close) (file_t *fp);
    ssize_t (*read) (file_t *fp, char *buf, size_t len);
    ssize_t (*write) (file_t *fp, const char *buf, size_t len);
    off_t (*lseek) (file_t *fp, off_t off, int whence);
    int (*sync) (file_t *fp);
    int (*stat) (file_t *fp, const char *path, struct stat *st);
    int (*unlink) (file_t *fp, const char *path);
    int (*rename) (file_t *fp, const char *oldpath, const char *newpath);
    aos_dir_t *(*opendir) (file_t *fp, const char *path);
    aos_dirent_t *(*readdir) (file_t *fp, aos_dir_t *dir);
    int (*closedir) (file_t *fp, aos_dir_t *dir);
    int (*mkdir) (file_t *fp, const char *path);
    int (*rmdir) (file_t *fp, const char *path);
    void (*rewinddir)(file_t *fp, aos_dir_t *dir);
    long (*telldir) (file_t *fp, aos_dir_t *dir);
    void (*seekdir) (file_t *fp, aos_dir_t *dir, long loc);
    int (*ioctl) (file_t *fp, int cmd, unsigned long arg);
    int (*statfs) (file_t *fp, const char *path, struct statfs *suf);
    int (*access) (file_t *fp, const char *path, int amode);
};

int inode_init(void);
int inode_alloc(inode_t **node);
int inode_del(inode_t *node);
inode_t *inode_open(const char *path);
int inode_ptr_get(int fd, inode_t **node);
int inode_avail_count(void);
void inode_ref(inode_t *);
void inode_unref(inode_t *);
int inode_busy(inode_t *);
int inode_reserve(const char *path, inode_t **inode);
int inode_release(const char *path);
int inode_forearch_name(int (*cb)(void *arg, inode_t *node), void *arg);
# 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h" 2
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int vfs_init(void);
# 54 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_open(const char *path, int flags);
# 63 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_close(int fd);
# 74 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
ssize_t aos_read(int fd, void *buf, size_t nbytes);
# 85 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
ssize_t aos_write(int fd, const void *buf, size_t nbytes);
# 96 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_ioctl(int fd, int cmd, unsigned long arg);
# 108 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_poll(struct pollfd *fds, int nfds, int timeout);
# 119 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_fcntl(int fd, int cmd, int val);
# 133 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
off_t aos_lseek(int fd, off_t offset, int whence);
# 142 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_sync(int fd);
# 152 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_stat(const char *path, struct stat *st);
# 161 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_unlink(const char *path);
# 171 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_rename(const char *oldpath, const char *newpath);
# 180 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
aos_dir_t *aos_opendir(const char *path);
# 189 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_closedir(aos_dir_t *dir);
# 198 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
aos_dirent_t *aos_readdir(aos_dir_t *dir);
# 207 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_mkdir(const char *path);
# 216 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_rmdir(const char *path);
# 225 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
void aos_rewinddir(aos_dir_t *dir);
# 234 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
long aos_telldir(aos_dir_t *dir);
# 244 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
void aos_seekdir(aos_dir_t *dir, long loc);
# 254 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_statfs(const char *path, struct statfs *buf);
# 264 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_access(const char *path, int amode);
# 59 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h" 1







# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h" 2
# 22 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
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
# 71 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_new(const char *name, void (*fn)(void *), void *arg,
                     int stack_size);
# 89 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_new_ext(aos_task_t *task, const char *name, void (*fn)(void *),
                         void *arg, int stack_size, int prio);






    void aos_task_exit(int code);






    const char *aos_task_name(void);
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_key_create(aos_task_key_t *key);






    void aos_task_key_delete(aos_task_key_t key);
# 130 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_setspecific(aos_task_key_t key, void *vp);






    void *aos_task_getspecific(aos_task_key_t key);
# 148 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_new(aos_mutex_t *mutex);







    void aos_mutex_free(aos_mutex_t *mutex);
# 167 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_lock(aos_mutex_t *mutex, unsigned int timeout);
# 177 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_unlock(aos_mutex_t *mutex);
# 186 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_is_valid(aos_mutex_t *mutex);
# 197 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_new(aos_sem_t *sem, int count);







    void aos_sem_free(aos_sem_t *sem);
# 216 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_wait(aos_sem_t *sem, unsigned int timeout);







    void aos_sem_signal(aos_sem_t *sem);
# 233 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_is_valid(aos_sem_t *sem);







    void aos_sem_signal_all(aos_sem_t *sem);
# 254 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_new(aos_queue_t *queue, void *buf, unsigned int size,
                      int max_msg);






    void aos_queue_free(aos_queue_t *queue);
# 273 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_send(aos_queue_t *queue, void *msg, unsigned int size);
# 285 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_recv(aos_queue_t *queue, unsigned int ms, void *msg,
                       unsigned int *size);
# 295 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_is_valid(aos_queue_t *queue);
# 304 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_queue_buf_ptr(aos_queue_t *queue);
# 317 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_new(aos_timer_t *timer, void (*fn)(void *, void *), void *arg,
                      int ms, int repeat);
# 332 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_new_ext(aos_timer_t *timer, void (*fn)(void *, void *),
                          void *arg, int ms, int repeat,
                          unsigned char auto_run);






    void aos_timer_free(aos_timer_t *timer);
# 350 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_start(aos_timer_t *timer);
# 359 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_stop(aos_timer_t *timer);
# 369 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_change(aos_timer_t *timer, int ms);
# 380 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_workqueue_create(aos_workqueue_t *workqueue, int pri,
                             int stack_size);
# 393 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_init(aos_work_t *work, void (*fn)(void *), void *arg, int dly);






    void aos_work_destroy(aos_work_t *work);
# 410 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_run(aos_workqueue_t *workqueue, aos_work_t *work);
# 419 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_sched(aos_work_t *work);
# 428 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_cancel(aos_work_t *work);
# 438 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_realloc(void *mem, unsigned int size);
# 447 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_malloc(unsigned int size);
# 457 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_calloc(unsigned int nitems, unsigned int size);
# 466 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_zalloc(unsigned int size);







    void aos_alloc_trace(void *addr, size_t allocator);






    void aos_free(void *mem);






    long long aos_now(void);






    long long aos_now_ms(void);
# 512 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    char *aos_now_time_str(char *buffer, const int len);






    void aos_msleep(int ms);




    void aos_init(void);




    void aos_start(void);
# 60 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h" 1
# 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/event_type_code.h" 1
# 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h" 2
# 102 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
typedef struct {

    uint32_t time;

    uint16_t type;

    uint16_t code;

    unsigned long value;

    unsigned long extra;
} input_event_t;


typedef void (*aos_event_cb)(input_event_t *event, void *private_data);

typedef void (*aos_call_t)(void *arg);

typedef void (*aos_poll_call_t)(int fd, void *arg);
# 131 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_register_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 142 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_unregister_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 153 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_post_event(uint16_t type, uint16_t code, unsigned long value);
# 164 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 173 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 184 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_post_delayed_action(int ms, aos_call_t action, void *arg);
# 193 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_delayed_action(int ms, aos_call_t action, void *arg);
# 206 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_schedule_call(aos_call_t action, void *arg);

typedef void *aos_loop_t;






aos_loop_t aos_loop_init(void);






aos_loop_t aos_current_loop(void);




void aos_loop_run(void);




void aos_loop_exit(void);




void aos_loop_destroy(void);
# 248 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_loop_schedule_call(aos_loop_t *loop, aos_call_t action, void *arg);
# 261 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
void *aos_loop_schedule_work(int ms, aos_call_t action, void *arg1,
                             aos_call_t fini_cb, void *arg2);
# 271 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_work(void *work, aos_call_t action, void *arg1);
# 61 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/event_device.h" 1
# 19 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/event_device.h"
int vfs_device_init(void);
# 62 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h" 1
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
typedef void (*FUNCPTR)(void);





struct cli_command {
    const char *name;
    const char *help;

    void (*function)(char *pcWriteBuffer, int xWriteBufferLen, int argc, char **argv);
};

struct cli_st {
    int initialized;
    int echo_disabled;

    const struct cli_command *static_cmds;
    const struct cli_command *dynamic_cmds[8];

    unsigned int num_static_cmds;
    unsigned int num_commands;
    unsigned int bp;

    char inbuf[256];
    char *outbuf;


    int his_idx;
    int his_cur;
    char history[256];

};
# 99 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
int aos_cli_register_command(const struct cli_command *command);
# 108 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
int aos_cli_unregister_command(const struct cli_command *command);
# 119 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
int aos_cli_register_commands(const struct cli_command *commands, int num_commands);
# 129 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
int aos_cli_unregister_commands(const struct cli_command *commands, int num_commands);
# 140 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
int aos_cli_printf(const char *buff, ...);
# 151 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
int aos_cli_init(int use_thread);






void *aos_cli_event_cb_read_get();






void aos_cli_input_direct(char *buffer, int count);






void *aos_cli_event_cb_write_get();







int aos_cli_stop(void);






const char *aos_cli_get_tag(void);






void *aos_cli_task_get(void);






int aos_cli_task_create(void);






int aos_cli_device_fd_get(void);
# 63 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h" 1
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h" 1
# 51 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/config/lwipopts.h" 1
# 400 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/config/lwipopts.h"
extern int bl_rand();
# 413 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/config/lwipopts.h"
void *sys_thread_sem_get(void);
void sys_thread_sem_init(void);
void sys_thread_sem_deinit(void);
# 52 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/debug.h" 1
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/debug.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 1
# 48 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/cc.h" 1
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/cc.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/cpu.h" 1
# 36 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/cc.h" 2

typedef int sys_prot_t;
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 83 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 1 3
# 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 17 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/stdlib.h" 1 3
# 21 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/alloca.h" 1 3
# 23 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3
# 33 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3



# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);

char * secure_getenv (const char *__string);

char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);


int mkostemp (char *, int);
int mkostemps (char *, int, int);


int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));


char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;

void *reallocarray(void *, size_t, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2, 3)));
void *reallocf(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2)));


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);


void setkey (const char *__key);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);


double strtod_l (const char *restrict, char **restrict, locale_t);
float strtof_l (const char *restrict, char **restrict, locale_t);

extern long double strtold_l (const char *restrict, char **restrict,
         locale_t);

long strtol_l (const char *restrict, char **restrict, int, locale_t);
unsigned long strtoul_l (const char *restrict, char **restrict, int,
    locale_t __loc);
long long strtoll_l (const char *restrict, char **restrict, int, locale_t);
unsigned long long strtoull_l (const char *restrict, char **restrict, int,
          locale_t __loc);


int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void *__arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 224 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int posix_memalign (void **, size_t, size_t) __attribute__((__nonnull__ (1)))
     __attribute__((__warn_unused_result__));


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);






void qsort_r (void *__base, size_t __nmemb, size_t __size, int (*_compar)(const void *, const void *, void *), void *__thunk);
# 322 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);







void * aligned_alloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__alloc_align__(1)))
     __attribute__((__alloc_size__(2))) __attribute__((__warn_unused_result__));
int at_quick_exit(void (*)(void));
__attribute__((__noreturn__)) void
 quick_exit(int);



# 84 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 107 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 108 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 125 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"

# 125 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
typedef uint8_t u8_t;
typedef int8_t s8_t;
typedef uint16_t u16_t;
typedef int16_t s16_t;
typedef uint32_t u32_t;
typedef int32_t s32_t;

typedef uint64_t u64_t;
typedef int64_t s64_t;

typedef uintptr_t mem_ptr_t;
# 148 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 1 3
# 18 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 1 3
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 3
       
       
       
       
       
       
       
       
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 3
       
       
       
       
       
       
       
       
# 19 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 2 3



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 23 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 2 3
# 312 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3

# 312 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3
typedef struct {
  intmax_t quot;
  intmax_t rem;
} imaxdiv_t;

struct _reent;





extern intmax_t imaxabs(intmax_t);
extern imaxdiv_t imaxdiv(intmax_t numer, intmax_t denomer);
extern intmax_t strtoimax(const char *restrict, char **restrict, int);
extern intmax_t _strtoimax_r(struct _reent *, const char *restrict, char **restrict, int);
extern uintmax_t strtoumax(const char *restrict, char **restrict, int);
extern uintmax_t _strtoumax_r(struct _reent *, const char *restrict, char **restrict, int);
extern intmax_t wcstoimax(const wchar_t *restrict, wchar_t **restrict, int);
extern intmax_t _wcstoimax_r(struct _reent *, const wchar_t *restrict, wchar_t **restrict, int);
extern uintmax_t wcstoumax(const wchar_t *restrict, wchar_t **restrict, int);
extern uintmax_t _wcstoumax_r(struct _reent *, const wchar_t *restrict, wchar_t **restrict, int);


extern intmax_t strtoimax_l(const char *restrict, char **_restrict, int, locale_t);
extern uintmax_t strtoumax_l(const char *restrict, char **_restrict, int, locale_t);
extern intmax_t wcstoimax_l(const wchar_t *restrict, wchar_t **_restrict, int, locale_t);
extern uintmax_t wcstoumax_l(const wchar_t *restrict, wchar_t **_restrict, int, locale_t);
# 149 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 185 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 1 3 4
# 34 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 3 4
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/syslimits.h" 1 3 4






# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 1 3 4
# 195 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 3 4
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 1 3 4





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/syslimits.h" 1 3 4
# 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 2 3 4
# 196 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 2 3 4
# 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/syslimits.h" 2 3 4
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 2 3 4
# 186 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 203 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"

# 203 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
typedef int ssize_t;
# 230 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 1 3
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3



# 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);





extern int isalnum_l (int __c, locale_t __l);
extern int isalpha_l (int __c, locale_t __l);
extern int isblank_l (int __c, locale_t __l);
extern int iscntrl_l (int __c, locale_t __l);
extern int isdigit_l (int __c, locale_t __l);
extern int isgraph_l (int __c, locale_t __l);
extern int islower_l (int __c, locale_t __l);
extern int isprint_l (int __c, locale_t __l);
extern int ispunct_l (int __c, locale_t __l);
extern int isspace_l (int __c, locale_t __l);
extern int isupper_l (int __c, locale_t __l);
extern int isxdigit_l(int __c, locale_t __l);
extern int tolower_l (int __c, locale_t __l);
extern int toupper_l (int __c, locale_t __l);



extern int isascii_l (int __c, locale_t __l);
extern int toascii_l (int __c, locale_t __l);
# 70 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
extern const char _ctype_[];
# 114 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
static __inline const char *
__locale_ctype_ptr_l(locale_t _l)
{
 (void)_l;
 return _ctype_;
}
# 181 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3

# 231 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/debug.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h" 1
# 42 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/debug.h" 2
# 53 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h" 2
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h" 2



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h" 1
# 53 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h"

# 53 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h"
typedef enum {

  ERR_OK = 0,

  ERR_MEM = -1,

  ERR_BUF = -2,

  ERR_TIMEOUT = -3,

  ERR_RTE = -4,

  ERR_INPROGRESS = -5,

  ERR_VAL = -6,

  ERR_WOULDBLOCK = -7,

  ERR_USE = -8,

  ERR_ALREADY = -9,

  ERR_ISCONN = -10,

  ERR_CONN = -11,

  ERR_IF = -12,


  ERR_ABRT = -13,

  ERR_RST = -14,

  ERR_CLSD = -15,

  ERR_ARG = -16
} err_enum_t;






typedef s8_t err_t;
# 110 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h"
int err_to_errno(err_t err);
# 45 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h" 1
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h" 1
# 95 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h" 1
# 37 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 47 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
struct QueueDefinition;
typedef struct QueueDefinition * QueueHandle_t;






typedef struct QueueDefinition * QueueSetHandle_t;






typedef struct QueueDefinition * QueueSetMemberHandle_t;
# 650 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 744 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 777 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 868 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 883 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 900 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 914 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1295 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1385 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1404 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;
# 1458 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) ;
# 1472 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1487 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1496 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1505 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType ) ;
# 1556 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1580 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1599 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1635 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 38 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 1
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 36 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h" 2





typedef SemaphoreHandle_t sys_sem_t;
typedef SemaphoreHandle_t sys_mutex_t;
typedef QueueHandle_t sys_mbox_t;
typedef TaskHandle_t sys_thread_t;

typedef struct _sys_arch_state_t
{

 char cTaskName[( 16 )];
 unsigned short nStackDepth;
 unsigned short nTaskCount;
} sys_arch_state_t;
# 96 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h" 2


typedef void (*lwip_thread_fn)(void *arg);
# 137 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_mutex_new(sys_mutex_t *mutex);





void sys_mutex_lock(sys_mutex_t *mutex);





void sys_mutex_unlock(sys_mutex_t *mutex);





void sys_mutex_free(sys_mutex_t *mutex);
# 164 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
int sys_mutex_valid(sys_mutex_t *mutex);
# 174 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_mutex_set_invalid(sys_mutex_t *mutex);
# 195 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_sem_new(sys_sem_t *sem, u8_t count);





void sys_sem_signal(sys_sem_t *sem);
# 219 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
u32_t sys_arch_sem_wait(sys_sem_t *sem, u32_t timeout);





void sys_sem_free(sys_sem_t *sem);
# 236 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
int sys_sem_valid(sys_sem_t *sem);
# 246 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_sem_set_invalid(sys_sem_t *sem);
# 266 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_msleep(u32_t ms);
# 285 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_mbox_new(sys_mbox_t *mbox, int size);
# 294 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_mbox_post(sys_mbox_t *mbox, void *msg);
# 304 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_mbox_trypost(sys_mbox_t *mbox, void *msg);
# 314 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_mbox_trypost_fromisr(sys_mbox_t *mbox, void *msg);
# 336 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
u32_t sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout);
# 355 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
u32_t sys_arch_mbox_tryfetch(sys_mbox_t *mbox, void **msg);
# 369 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_mbox_free(sys_mbox_t *mbox);
# 379 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
int sys_mbox_valid(sys_mbox_t *mbox);
# 389 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_mbox_set_invalid(sys_mbox_t *mbox);
# 420 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
sys_thread_t sys_thread_new(const char *name, lwip_thread_fn thread, void *arg, int stacksize, int prio);
# 429 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_init(void);





u32_t sys_jiffies(void);
# 446 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
u32_t sys_now(void);
# 492 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
sys_prot_t sys_arch_protect(void);
void sys_arch_unprotect(sys_prot_t pval);
# 45 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h" 2
# 66 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h"
typedef void (* lwip_cyclic_timer_handler)(void);



struct lwip_cyclic_timer {
  u32_t interval_ms;
  lwip_cyclic_timer_handler handler;



};



extern const struct lwip_cyclic_timer lwip_cyclic_timers[];

extern const int lwip_num_cyclic_timers;
# 91 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h"
typedef void (* sys_timeout_handler)(void *arg);

struct sys_timeo {
  struct sys_timeo *next;
  u32_t time;
  sys_timeout_handler h;
  void *arg;



};

void sys_timeouts_init(void);





void sys_timeout(u32_t msecs, sys_timeout_handler handler, void *arg);


void sys_untimeout(sys_timeout_handler handler, void *arg);
void sys_restart_timeouts(void);
void sys_check_timeouts(void);
u32_t sys_timeouts_sleeptime(void);
# 46 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h" 1
# 46 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h" 1
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h" 1
# 96 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);




u32_t lwip_htonl(u32_t x);
# 133 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h"
void lwip_itoa(char* result, size_t bufsize, int number);



int lwip_strnicmp(const char* str1, const char* str2, size_t len);



int lwip_stricmp(const char* str1, const char* str2);



char* lwip_strnstr(const char* buffer, const char* token, size_t n);
# 42 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h" 1
# 51 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h"
struct ip4_addr {
  u32_t addr;
};



typedef struct ip4_addr ip4_addr_t;


struct netif;
# 151 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h"
u8_t ip4_addr_isbroadcast_u32(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);
# 204 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h"
u32_t ipaddr_addr(const char *cp);
int ip4addr_aton(const char *cp, ip4_addr_t *addr);

char *ip4addr_ntoa(const ip4_addr_t *addr);
char *ip4addr_ntoa_r(const ip4_addr_t *addr, char *buf, int buflen);
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip6_addr.h" 1
# 46 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip6_addr.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h" 1
# 47 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip6_addr.h" 2
# 45 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h" 2
# 54 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
enum lwip_ip_addr_type {

  IPADDR_TYPE_V4 = 0U,

  IPADDR_TYPE_V6 = 6U,

  IPADDR_TYPE_ANY = 46U
};
# 270 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
typedef ip4_addr_t ip_addr_t;
# 369 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 47 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h" 2


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h" 1
# 89 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
typedef enum {



  PBUF_TRANSPORT = 128u + (14 + 0) + 20 + 20,



  PBUF_IP = 128u + (14 + 0) + 20,




  PBUF_LINK = 128u + (14 + 0),





  PBUF_RAW_TX = 128u,


  PBUF_RAW = 0
} pbuf_layer;
# 145 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
typedef enum {






  PBUF_RAM = (0x0200 | 0x80 | 0x00),



  PBUF_ROM = 0x01,



  PBUF_REF = (0x40 | 0x01),






  PBUF_POOL = (0x0100 | 0x80 | 0x02)
} pbuf_type;
# 186 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
struct pbuf {

  struct pbuf *next;


  void *payload;
# 200 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
  u16_t tot_len;


  u16_t len;




  u8_t type_internal;


  u8_t flags;






  u8_t ref;


  u8_t if_idx;
};






struct pbuf_rom {

  struct pbuf *next;


  const void *payload;
};



typedef void (*pbuf_free_custom_fn)(struct pbuf *p);


struct pbuf_custom {

  struct pbuf pbuf;

  pbuf_free_custom_fn custom_free_function;
};
# 272 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);
struct pbuf *pbuf_alloc_reference(void *payload, u16_t length, pbuf_type type);

struct pbuf *pbuf_alloced_custom(pbuf_layer l, u16_t length, pbuf_type type,
                                 struct pbuf_custom *p, void *payload_mem,
                                 u16_t payload_mem_len);

void pbuf_realloc(struct pbuf *p, u16_t size);



u8_t pbuf_header(struct pbuf *p, s16_t header_size);
u8_t pbuf_header_force(struct pbuf *p, s16_t header_size);
u8_t pbuf_add_header(struct pbuf *p, size_t header_size_increment);
u8_t pbuf_add_header_force(struct pbuf *p, size_t header_size_increment);
u8_t pbuf_remove_header(struct pbuf *p, size_t header_size);
struct pbuf *pbuf_free_header(struct pbuf *q, u16_t size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u16_t pbuf_clen(const struct pbuf *p);
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, const struct pbuf *p_from);
u16_t pbuf_copy_partial(const struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
void *pbuf_get_contiguous(const struct pbuf *p, void *buffer, size_t bufsize, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
err_t pbuf_take_at(struct pbuf *buf, const void *dataptr, u16_t len, u16_t offset);
struct pbuf *pbuf_skip(struct pbuf* in, u16_t in_offset, u16_t* out_offset);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);
struct pbuf *pbuf_clone(pbuf_layer l, pbuf_type type, struct pbuf *p);

err_t pbuf_fill_chksum(struct pbuf *p, u16_t start_offset, const void *dataptr,
                       u16_t len, u16_t *chksum);





u8_t pbuf_get_at(const struct pbuf* p, u16_t offset);
int pbuf_try_get_at(const struct pbuf* p, u16_t offset);
void pbuf_put_at(struct pbuf* p, u16_t offset, u8_t data);
u16_t pbuf_memcmp(const struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(const struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(const struct pbuf* p, const char* substr);
# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h" 1
# 42 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/mem.h" 1
# 67 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/mem.h"
typedef u16_t mem_size_t;




void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);
void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 43 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 1
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h" 1
# 42 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"















# 67 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"






# 89 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"

# 98 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"









# 133 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"


# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 2


typedef enum {

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h" 1
# 42 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,



MEMP_ALTCP_PCB,
# 67 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,
# 89 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_TCPIP_MSG_INPKT,
# 98 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_IGMP_GROUP,



MEMP_SYS_TIMEOUT,



MEMP_NETDB,
# 133 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_PBUF,
MEMP_PBUF_POOL,
# 55 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 2
  MEMP_MAX
} memp_t;

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h" 1
# 48 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/mem_priv.h" 1
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h" 2
# 69 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h"
struct memp {
  struct memp *next;




};
# 108 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h"
struct memp_desc {






  struct stats_mem *stats;



  u16_t size;



  u16_t num;


  u8_t *base;


  struct memp **tab;

};
# 147 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h"
void memp_init_pool(const struct memp_desc *desc);





void *memp_malloc_pool(const struct memp_desc *desc);

void memp_free_pool(const struct memp_desc* desc, void *mem);
# 59 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h" 1
# 60 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 2

extern const struct memp_desc* const memp_pools[MEMP_MAX];
# 141 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
void memp_init(void);





void *memp_malloc(memp_t type);

void memp_free(memp_t type, void *mem);
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h" 2
# 64 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h"
struct stats_proto {
  u16_t xmit;
  u16_t recv;
  u16_t fw;
  u16_t drop;
  u16_t chkerr;
  u16_t lenerr;
  u16_t memerr;
  u16_t rterr;
  u16_t proterr;
  u16_t opterr;
  u16_t err;
  u16_t cachehit;
};


struct stats_igmp {
  u16_t xmit;
  u16_t recv;
  u16_t drop;
  u16_t chkerr;
  u16_t lenerr;
  u16_t memerr;
  u16_t proterr;
  u16_t rx_v1;
  u16_t rx_group;
  u16_t rx_general;
  u16_t rx_report;
  u16_t tx_join;
  u16_t tx_leave;
  u16_t tx_report;
};


struct stats_mem {



  u16_t err;
  mem_size_t avail;
  mem_size_t used;
  mem_size_t max;
  u16_t illegal;
};


struct stats_syselem {
  u16_t used;
  u16_t max;
  u16_t err;
};


struct stats_sys {
  struct stats_syselem sem;
  struct stats_syselem mutex;
  struct stats_syselem mbox;
};


struct stats_mib2 {

  u32_t ipinhdrerrors;
  u32_t ipinaddrerrors;
  u32_t ipinunknownprotos;
  u32_t ipindiscards;
  u32_t ipindelivers;
  u32_t ipoutrequests;
  u32_t ipoutdiscards;
  u32_t ipoutnoroutes;
  u32_t ipreasmoks;
  u32_t ipreasmfails;
  u32_t ipfragoks;
  u32_t ipfragfails;
  u32_t ipfragcreates;
  u32_t ipreasmreqds;
  u32_t ipforwdatagrams;
  u32_t ipinreceives;


  u32_t tcpactiveopens;
  u32_t tcppassiveopens;
  u32_t tcpattemptfails;
  u32_t tcpestabresets;
  u32_t tcpoutsegs;
  u32_t tcpretranssegs;
  u32_t tcpinsegs;
  u32_t tcpinerrs;
  u32_t tcpoutrsts;


  u32_t udpindatagrams;
  u32_t udpnoports;
  u32_t udpinerrors;
  u32_t udpoutdatagrams;


  u32_t icmpinmsgs;
  u32_t icmpinerrors;
  u32_t icmpindestunreachs;
  u32_t icmpintimeexcds;
  u32_t icmpinparmprobs;
  u32_t icmpinsrcquenchs;
  u32_t icmpinredirects;
  u32_t icmpinechos;
  u32_t icmpinechoreps;
  u32_t icmpintimestamps;
  u32_t icmpintimestampreps;
  u32_t icmpinaddrmasks;
  u32_t icmpinaddrmaskreps;
  u32_t icmpoutmsgs;
  u32_t icmpouterrors;
  u32_t icmpoutdestunreachs;
  u32_t icmpouttimeexcds;
  u32_t icmpoutechos;
  u32_t icmpoutechoreps;
};





struct stats_mib2_netif_ctrs {

  u32_t ifinoctets;


  u32_t ifinucastpkts;


  u32_t ifinnucastpkts;



  u32_t ifindiscards;




  u32_t ifinerrors;






  u32_t ifinunknownprotos;

  u32_t ifoutoctets;



  u32_t ifoutucastpkts;



  u32_t ifoutnucastpkts;



  u32_t ifoutdiscards;



  u32_t ifouterrors;
};


struct stats_ {


  struct stats_proto link;



  struct stats_proto etharp;







  struct stats_proto ip;



  struct stats_proto icmp;



  struct stats_igmp igmp;



  struct stats_proto udp;



  struct stats_proto tcp;



  struct stats_mem mem;



  struct stats_mem *memp[MEMP_MAX];



  struct stats_sys sys;
# 301 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h"
};


extern struct stats_ lwip_stats;


void stats_init(void);
# 488 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h"
void stats_netstat(void *ctx);
# 51 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h" 2
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
enum lwip_internal_netif_client_data_index
{


   LWIP_NETIF_CLIENT_DATA_INDEX_DHCP,





   LWIP_NETIF_CLIENT_DATA_INDEX_IGMP,
# 134 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
   LWIP_NETIF_CLIENT_DATA_INDEX_MAX
};
# 152 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
struct netif;



enum netif_mac_filter_action {

  NETIF_DEL_MAC_FILTER = 0,

  NETIF_ADD_MAC_FILTER = 1
};






typedef err_t (*netif_init_fn)(struct netif *netif);
# 178 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
# 189 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       const ip4_addr_t *ipaddr);
# 212 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);

typedef void (*netif_status_callback_fn)(struct netif *netif);


typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       const ip4_addr_t *group, enum netif_mac_filter_action action);
# 228 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
u8_t netif_alloc_client_data_id(void);
# 244 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef u8_t netif_addr_idx_t;
# 260 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
struct netif {


  struct netif *next;




  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;
# 289 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
  netif_input_fn input;





  netif_output_fn output;




  netif_linkoutput_fn linkoutput;
# 311 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
  netif_status_callback_fn status_callback;




  netif_status_callback_fn link_callback;







  void *state;

  void* client_data[LWIP_NETIF_CLIENT_DATA_INDEX_MAX + 1];



  const char* hostname;





  u16_t mtu;





  u8_t hwaddr[6U];

  u8_t hwaddr_len;

  u8_t flags;

  char name[2];


  u8_t num;






  u8_t rs_count;
# 373 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
  netif_igmp_mac_filter_fn igmp_mac_filter;
# 385 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
  struct pbuf *loop_first;
  struct pbuf *loop_last;




};
# 406 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
extern struct netif *netif_list;



extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add_noaddr(struct netif *netif, void *state, netif_init_fn init, netif_input_fn input);


struct netif *netif_add(struct netif *netif,
                            const ip4_addr_t *ipaddr, const ip4_addr_t *netmask, const ip4_addr_t *gw,
                            void *state, netif_init_fn init, netif_input_fn input);
void netif_set_addr(struct netif *netif, const ip4_addr_t *ipaddr, const ip4_addr_t *netmask,
                    const ip4_addr_t *gw);



void netif_remove(struct netif * netif);





struct netif *netif_find(const char *name);

void netif_set_default(struct netif *netif);


void netif_set_ipaddr(struct netif *netif, const ip4_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, const ip4_addr_t *netmask);
void netif_set_gw(struct netif *netif, const ip4_addr_t *gw);
# 457 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);






void netif_set_status_callback(struct netif *netif, netif_status_callback_fn status_callback);





void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);




void netif_set_link_callback(struct netif *netif, netif_status_callback_fn link_callback);
# 501 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
err_t netif_loop_output(struct netif *netif, struct pbuf *p);
void netif_poll(struct netif *netif);





err_t netif_input(struct pbuf *p, struct netif *inp);
# 552 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
u8_t netif_name_to_index(const char *name);
char * netif_index_to_name(u8_t idx, char *name);
struct netif* netif_get_by_index(u8_t idx);
# 565 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef u16_t netif_nsc_reason_t;
# 595 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef union
{

  struct link_changed_s
  {

    u8_t state;
  } link_changed;

  struct status_changed_s
  {

    u8_t state;
  } status_changed;

  struct ipv4_changed_s
  {

    const ip_addr_t* old_address;
    const ip_addr_t* old_netmask;
    const ip_addr_t* old_gw;
  } ipv4_changed;

  struct ipv6_set_s
  {

    s8_t addr_index;

    const ip_addr_t* old_address;
  } ipv6_set;

  struct ipv6_addr_state_changed_s
  {

    s8_t addr_index;

    u8_t old_state;

    const ip_addr_t* address;
  } ipv6_addr_state_changed;
} netif_ext_callback_args_t;
# 645 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef void (*netif_ext_callback_fn)(struct netif* netif, netif_nsc_reason_t reason, const netif_ext_callback_args_t* args);
# 47 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h" 2
# 66 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h"
struct pbuf;
struct netif;


typedef void (*tcpip_init_done_fn)(void *arg);

typedef void (*tcpip_callback_fn)(void *ctx);


struct tcpip_callback_msg;

void tcpip_init(tcpip_init_done_fn tcpip_init_done, void *arg);

err_t tcpip_inpkt(struct pbuf *p, struct netif *inp, netif_input_fn input_fn);
err_t tcpip_input(struct pbuf *p, struct netif *inp);

err_t tcpip_try_callback(tcpip_callback_fn function, void *ctx);
err_t tcpip_callback(tcpip_callback_fn function, void *ctx);





struct tcpip_callback_msg* tcpip_callbackmsg_new(tcpip_callback_fn function, void *ctx);
void tcpip_callbackmsg_delete(struct tcpip_callback_msg* msg);
err_t tcpip_callbackmsg_trycallback(struct tcpip_callback_msg* msg);
err_t tcpip_callbackmsg_trycallback_fromisr(struct tcpip_callback_msg* msg);


err_t pbuf_free_callback(struct pbuf *p);
err_t mem_free_callback(void *m);
# 65 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 1
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/inet.h" 1
# 55 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/inet.h"
typedef u32_t in_addr_t;


struct in_addr {
  in_addr_t s_addr;
};

struct in6_addr {
  union {
    u32_t u32_addr[4];
    u8_t u8_addr[16];
  } un;

};
# 86 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/inet.h"
extern const struct in6_addr in6addr_any;
# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/errno.h" 1
# 177 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/errno.h"
extern int errno;
# 51 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 2
# 61 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
typedef u8_t sa_family_t;




typedef u16_t in_port_t;




struct sockaddr_in {
  u8_t sin_len;
  sa_family_t sin_family;
  in_port_t sin_port;
  struct in_addr sin_addr;

  char sin_zero[8];
};
# 92 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
struct sockaddr {
  u8_t sa_len;
  sa_family_t sa_family;
  char sa_data[14];
};

struct sockaddr_storage {
  u8_t s2_len;
  sa_family_t ss_family;
  char s2_data1[2];
  u32_t s2_data2[3];



};




typedef u32_t socklen_t;
# 121 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
struct iovec {
  void *iov_base;
  size_t iov_len;
};


struct msghdr {
  void *msg_name;
  socklen_t msg_namelen;
  struct iovec *msg_iov;
  int msg_iovlen;
  void *msg_control;
  socklen_t msg_controllen;
  int msg_flags;
};






struct cmsghdr {
  socklen_t cmsg_len;
  int cmsg_level;
  int cmsg_type;
};
# 183 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
struct ifreq {
  char ifr_name[6];
};
# 226 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
struct linger {
  int l_onoff;
  int l_linger;
};
# 319 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
typedef struct ip_mreq {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
} ip_mreq;



struct in_pktinfo {
  unsigned int ipi_ifindex;
  struct in_addr ipi_addr;
};
# 506 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
typedef unsigned int nfds_t;
struct pollfd
{
  int fd;
  short events;
  short revents;
};
# 529 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
void lwip_socket_thread_init(void);
void lwip_socket_thread_cleanup(void);
# 576 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
int lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen);
int lwip_bind(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_shutdown(int s, int how);
int lwip_getpeername (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockname (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockopt (int s, int level, int optname, void *optval, socklen_t *optlen);
int lwip_setsockopt (int s, int level, int optname, const void *optval, socklen_t optlen);
 int lwip_close(int s);
int lwip_connect(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_listen(int s, int backlog);
ssize_t lwip_recv(int s, void *mem, size_t len, int flags);
ssize_t lwip_read(int s, void *mem, size_t len);
ssize_t lwip_readv(int s, const struct iovec *iov, int iovcnt);
ssize_t lwip_recvfrom(int s, void *mem, size_t len, int flags,
      struct sockaddr *from, socklen_t *fromlen);
ssize_t lwip_recvmsg(int s, struct msghdr *message, int flags);
ssize_t lwip_send(int s, const void *dataptr, size_t size, int flags);
ssize_t lwip_sendmsg(int s, const struct msghdr *message, int flags);
ssize_t lwip_sendto(int s, const void *dataptr, size_t size, int flags,
    const struct sockaddr *to, socklen_t tolen);
int lwip_socket(int domain, int type, int protocol);
ssize_t lwip_write(int s, const void *dataptr, size_t size);
ssize_t lwip_writev(int s, const struct iovec *iov, int iovcnt);

int lwip_select(int maxfdp1, fd_set *readset, fd_set *writeset, fd_set *exceptset,
                struct timeval *timeout);


int lwip_poll(struct pollfd *fds, nfds_t nfds, int timeout);

int lwip_ioctl(int s, long cmd, void *argp);
int lwip_fcntl(int s, int cmd, int val);
const char *lwip_inet_ntop(int af, const void *src, char *dst, socklen_t size);
int lwip_inet_pton(int af, const char *src, void *dst);
# 66 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netdb.h" 1
# 92 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netdb.h"
struct hostent {
    char *h_name;
    char **h_aliases;

    int h_addrtype;
    int h_length;
    char **h_addr_list;


};

struct addrinfo {
    int ai_flags;
    int ai_family;
    int ai_socktype;
    int ai_protocol;
    socklen_t ai_addrlen;
    struct sockaddr *ai_addr;
    char *ai_canonname;
    struct addrinfo *ai_next;
};






extern int h_errno;


struct hostent *lwip_gethostbyname(const char *name);
int lwip_gethostbyname_r(const char *name, struct hostent *ret, char *buf,
                size_t buflen, struct hostent **result, int *h_errnop);
void lwip_freeaddrinfo(struct addrinfo *ai);
int lwip_getaddrinfo(const char *nodename,
       const char *servname,
       const struct addrinfo *hints,
       struct addrinfo **res);
# 67 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h" 1
# 45 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpbase.h" 1
# 53 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpbase.h"
typedef u16_t tcpwnd_size_t;


enum tcp_state {
  CLOSED = 0,
  LISTEN = 1,
  SYN_SENT = 2,
  SYN_RCVD = 3,
  ESTABLISHED = 4,
  FIN_WAIT_1 = 5,
  FIN_WAIT_2 = 6,
  CLOSE_WAIT = 7,
  CLOSING = 8,
  LAST_ACK = 9,
  TIME_WAIT = 10
};
# 80 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpbase.h"
const char* tcp_debug_state_str(enum tcp_state s);
# 46 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h" 2


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip.h" 1
# 47 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4.h" 1
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/prot/ip4.h" 1
# 52 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/prot/ip4.h"

struct ip4_addr_packed {
  u32_t addr;
} __attribute__ ((__packed__));





typedef struct ip4_addr_packed ip4_addr_p_t;
# 71 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/prot/ip4.h"


struct ip_hdr {

  u8_t _v_hl;

  u8_t _tos;

  u16_t _len;

  u16_t _id;

  u16_t _offset;





  u8_t _ttl;

  u8_t _proto;

  u16_t _chksum;

  ip4_addr_p_t src;
  ip4_addr_p_t dest;
} __attribute__ ((__packed__));

# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4.h" 2
# 65 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4.h"
struct netif *ip4_route(const ip4_addr_t *dest);





err_t ip4_input(struct pbuf *p, struct netif *inp);
err_t ip4_output(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto);
err_t ip4_output_if(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif);
err_t ip4_output_if_src(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif);





err_t ip4_output_if_opt(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);
err_t ip4_output_if_opt_src(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);



void ip4_set_default_multicast_netif(struct netif* default_multicast_netif);
# 48 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip6.h" 1
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/prot/ip.h" 1
# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip.h" 2
# 91 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip.h"
struct ip_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t netif_idx; u8_t so_options; u8_t tos; u8_t ttl ;
};
# 107 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip.h"
struct ip_globals
{

  struct netif *current_netif;

  struct netif *current_input_netif;


  const struct ip_hdr *current_ip4_header;






  u16_t current_ip_header_tot_len;

  ip_addr_t current_iphdr_src;

  ip_addr_t current_iphdr_dest;
};
extern struct ip_globals ip_data;
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/icmp.h" 1
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/icmp.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/prot/icmp.h" 1
# 68 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/prot/icmp.h"

struct icmp_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} __attribute__ ((__packed__));

# 45 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/icmp.h" 2
# 55 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/icmp.h"
enum icmp_dur_type {

  ICMP_DUR_NET = 0,

  ICMP_DUR_HOST = 1,

  ICMP_DUR_PROTO = 2,

  ICMP_DUR_PORT = 3,

  ICMP_DUR_FRAG = 4,

  ICMP_DUR_SR = 5
};


enum icmp_te_type {

  ICMP_TE_TTL = 0,

  ICMP_TE_FRAG = 1
};



void icmp_input(struct pbuf *p, struct netif *inp);
void icmp_dest_unreach(struct pbuf *p, enum icmp_dur_type t);
void icmp_time_exceeded(struct pbuf *p, enum icmp_te_type t);
# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h" 2
# 58 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
struct tcp_pcb;
struct tcp_pcb_listen;
# 70 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef err_t (*tcp_accept_fn)(void *arg, struct tcp_pcb *newpcb, err_t err);
# 82 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef err_t (*tcp_recv_fn)(void *arg, struct tcp_pcb *tpcb,
                             struct pbuf *p, err_t err);
# 96 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef err_t (*tcp_sent_fn)(void *arg, struct tcp_pcb *tpcb,
                              u16_t len);
# 108 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef err_t (*tcp_poll_fn)(void *arg, struct tcp_pcb *tpcb);
# 120 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef void (*tcp_err_fn)(void *arg, err_t err);
# 134 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef err_t (*tcp_connected_fn)(void *arg, struct tcp_pcb *tpcb, err_t err);
# 173 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef void (*tcp_extarg_callback_pcb_destroyed_fn)(u8_t id, void *data);
# 182 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef err_t (*tcp_extarg_callback_passive_open_fn)(u8_t id, struct tcp_pcb_listen *lpcb, struct tcp_pcb *cpcb);


struct tcp_ext_arg_callbacks {

  tcp_extarg_callback_pcb_destroyed_fn destroy;

  tcp_extarg_callback_passive_open_fn passive_open;
};
# 206 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
typedef u16_t tcpflags_t;
# 223 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
struct tcp_pcb_listen {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t netif_idx; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb_listen *next; void *callback_arg; enum tcp_state state; u8_t prio; u16_t local_port;



  tcp_accept_fn accept;






};



struct tcp_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t netif_idx; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb *next; void *callback_arg; enum tcp_state state; u8_t prio; u16_t local_port;


  u16_t remote_port;

  tcpflags_t flags;
# 278 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
  u8_t polltmr, pollinterval;
  u8_t last_timer;
  u32_t tmr;


  u32_t rcv_nxt;
  tcpwnd_size_t rcv_wnd;
  tcpwnd_size_t rcv_ann_wnd;
  u32_t rcv_ann_right_edge;
# 295 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
  s16_t rtime;

  u16_t mss;


  u32_t rttest;
  u32_t rtseq;
  s16_t sa, sv;

  s16_t rto;
  u8_t nrtx;


  u8_t dupacks;
  u32_t lastack;


  tcpwnd_size_t cwnd;
  tcpwnd_size_t ssthresh;


  u32_t rto_end;


  u32_t snd_nxt;
  u32_t snd_wl1, snd_wl2;

  u32_t snd_lbb;
  tcpwnd_size_t snd_wnd;
  tcpwnd_size_t snd_wnd_max;

  tcpwnd_size_t snd_buf;

  u16_t snd_queuelen;



  u16_t unsent_oversize;


  tcpwnd_size_t bytes_acked;


  struct tcp_seg *unsent;
  struct tcp_seg *unacked;

  struct tcp_seg *ooseq;


  struct pbuf *refused_data;


  struct tcp_pcb_listen* listener;




  tcp_sent_fn sent;

  tcp_recv_fn recv;

  tcp_connected_fn connected;

  tcp_poll_fn poll;

  tcp_err_fn errf;
# 369 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
  u32_t keep_idle;

  u32_t keep_intvl;
  u32_t keep_cnt;



  u8_t persist_cnt;

  u8_t persist_backoff;

  u8_t persist_probe;


  u8_t keep_cnt_sent;





};
# 411 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
struct tcp_pcb * tcp_new (void);
struct tcp_pcb * tcp_new_ip_type (u8_t type);

void tcp_arg (struct tcp_pcb *pcb, void *arg);

void tcp_recv (struct tcp_pcb *pcb, tcp_recv_fn recv);
void tcp_sent (struct tcp_pcb *pcb, tcp_sent_fn sent);
void tcp_err (struct tcp_pcb *pcb, tcp_err_fn err);
void tcp_accept (struct tcp_pcb *pcb, tcp_accept_fn accept);

void tcp_poll (struct tcp_pcb *pcb, tcp_poll_fn poll, u8_t interval);
# 457 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
void tcp_recved (struct tcp_pcb *pcb, u16_t len);
err_t tcp_bind (struct tcp_pcb *pcb, const ip_addr_t *ipaddr,
                              u16_t port);
void tcp_bind_netif(struct tcp_pcb *pcb, const struct netif *netif);
err_t tcp_connect (struct tcp_pcb *pcb, const ip_addr_t *ipaddr,
                              u16_t port, tcp_connected_fn connected);

struct tcp_pcb * tcp_listen_with_backlog_and_err(struct tcp_pcb *pcb, u8_t backlog, err_t *err);
struct tcp_pcb * tcp_listen_with_backlog(struct tcp_pcb *pcb, u8_t backlog);



void tcp_abort (struct tcp_pcb *pcb);
err_t tcp_close (struct tcp_pcb *pcb);
err_t tcp_shutdown(struct tcp_pcb *pcb, int shut_rx, int shut_tx);

err_t tcp_write (struct tcp_pcb *pcb, const void *dataptr, u16_t len,
                              u8_t apiflags);

void tcp_setprio (struct tcp_pcb *pcb, u8_t prio);

err_t tcp_output (struct tcp_pcb *pcb);

err_t tcp_tcp_get_tcp_addrinfo(struct tcp_pcb *pcb, int local, ip_addr_t *addr, u16_t *port);
# 495 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcp.h"
int tcp_get_pcbs(struct tcp_pcb **const**list);
# 68 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/netutils/include/netutils/netutils.h" 1


int network_netutils_tcpclinet_cli_register();
int network_netutils_tcpserver_cli_register();
int network_netutils_iperf_cli_register();
int network_netutils_netstat_cli_register();
int network_netutils_ping_cli_register();
# 70 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/glb_reg.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/glb_reg.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 65 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum {
# 79 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
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
# 211 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
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





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h" 1







extern uint32_t SystemCoreClock;

extern void SystemCoreClockUpdate (void);
extern void SystemInit (void);
extern void System_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
extern void Systick_Stop(void);
extern void Systick_Start(void);
# 283 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 295 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
# 87 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
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
# 296 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/clic.h" 1
# 297 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/riscv_encoding.h" 1
# 298 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/glb_reg.h" 2
# 2745 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/glb_reg.h"
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
# 4061 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/glb_reg.h"
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
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pds_reg.h" 1
# 745 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pds_reg.h"
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
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h" 1
# 75 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
typedef enum
{
    GLB_GPIO_PIN_0 = 0,
    GLB_GPIO_PIN_1,
    GLB_GPIO_PIN_2,
    GLB_GPIO_PIN_3,
    GLB_GPIO_PIN_4,
    GLB_GPIO_PIN_5,
    GLB_GPIO_PIN_6,
    GLB_GPIO_PIN_7,
    GLB_GPIO_PIN_8,
    GLB_GPIO_PIN_9,
    GLB_GPIO_PIN_10,
    GLB_GPIO_PIN_11,
    GLB_GPIO_PIN_12,
    GLB_GPIO_PIN_13,
    GLB_GPIO_PIN_14,
    GLB_GPIO_PIN_15,
    GLB_GPIO_PIN_16,
    GLB_GPIO_PIN_17,
    GLB_GPIO_PIN_18,
    GLB_GPIO_PIN_19,
    GLB_GPIO_PIN_20,
    GLB_GPIO_PIN_21,
    GLB_GPIO_PIN_22,
    GLB_GPIO_PIN_MAX,
}GLB_GPIO_Type;
# 112 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
typedef enum
{
    GPIO_FUN_SDIO = 1,
    GPIO_FUN_FLASH = 2,
    GPIO_FUN_SPI = 4,
    GPIO_FUN_I2C = 6,
    GPIO_FUN_UART = 7,
    GPIO_FUN_PWM = 8,
    GPIO_FUN_EXT_PA = 9,
    GPIO_FUN_ANALOG = 10,
    GPIO_FUN_SWGPIO = 11,
    GPIO_FUN_JTAG = 14,
}GLB_GPIO_FUNC_Type;

typedef struct
{
    uint8_t gpioPin;
    uint8_t gpioFun;
    uint8_t gpioMode;
    uint8_t pullType;
    uint8_t drive;
    uint8_t smtCtrl;
}GLB_GPIO_Cfg_Type;
# 42 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/l1c_reg.h" 1
# 196 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/l1c_reg.h"
struct l1c_reg {

    union {
        struct
        {
            uint32_t l1c_cacheable : 1;
            uint32_t l1c_cnt_en : 1;
            uint32_t l1c_invalid_en : 1;
            uint32_t l1c_invalid_done : 1;
            uint32_t reserved_4_7 : 4;
            uint32_t l1c_way_dis : 4;
            uint32_t irom_2t_access : 1;
            uint32_t reserved_13 : 1;
            uint32_t l1c_bypass : 1;
            uint32_t l1c_bmx_err_en : 1;
            uint32_t l1c_bmx_arb_mode : 2;
            uint32_t reserved_18_19 : 2;
            uint32_t l1c_bmx_timeout_en : 4;
            uint32_t l1c_bmx_busy_option_dis : 1;
            uint32_t early_resp_dis : 1;
            uint32_t wrap_dis : 1;
            uint32_t reserved_27_31 : 5;
        } BF;
        uint32_t WORD;
    } l1c_config;


    union {
        struct
        {
            uint32_t hit_cnt_lsb : 32;
        } BF;
        uint32_t WORD;
    } hit_cnt_lsb;


    union {
        struct
        {
            uint32_t hit_cnt_msb : 32;
        } BF;
        uint32_t WORD;
    } hit_cnt_msb;


    union {
        struct
        {
            uint32_t miss_cnt : 32;
        } BF;
        uint32_t WORD;
    } miss_cnt;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } l1c_range;


    uint8_t RESERVED0x14[492];


    union {
        struct
        {
            uint32_t l1c_bmx_err_addr_dis : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t l1c_bmx_err_dec : 1;
            uint32_t l1c_bmx_err_tz : 1;
            uint32_t reserved_6_15 : 10;
            uint32_t l1c_hsel_option : 4;
            uint32_t reserved_20_31 : 12;
        } BF;
        uint32_t WORD;
    } l1c_bmx_err_addr_en;


    union {
        struct
        {
            uint32_t l1c_bmx_err_addr : 32;
        } BF;
        uint32_t WORD;
    } l1c_bmx_err_addr;


    union {
        struct
        {
            uint32_t irom1_misr_dataout_0 : 32;
        } BF;
        uint32_t WORD;
    } irom1_misr_dataout_0;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } irom1_misr_dataout_1;


    union {
        struct
        {
            uint32_t force_e21_clock_on_0 : 1;
            uint32_t force_e21_clock_on_1 : 1;
            uint32_t force_e21_clock_on_2 : 1;
            uint32_t reserved_3_31 : 29;
        } BF;
        uint32_t WORD;
    } cpu_clk_gate;
};

typedef volatile struct l1c_reg l1c_reg_t;
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 1



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 1
# 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
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
# 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 22 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
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
# 106 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
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
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h" 2
# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
typedef struct {
    BL_Fun_Type wrapDis;
    BL_Fun_Type bypassEn;
    uint8_t wayDis;
    BL_Fun_Type cntEn;
}L1C_CACHE_Cfg_Type;




typedef enum {
    L1C_BMX_ARB_FIX,
    L1C_BMX_ARB_ROUND_ROBIN,
    L1C_BMX_ARB_RANDOM,
}L1C_BMX_ARB_Type;




typedef struct {
    uint8_t timeoutEn;
    BL_Fun_Type errEn;
    L1C_BMX_ARB_Type arbMod;
}L1C_BMX_Cfg_Type;




typedef enum {
    L1C_BMX_BUS_ERR_TRUSTZONE_DECODE,
    L1C_BMX_BUS_ERR_ADDR_DECODE,
}L1C_BMX_BUS_ERR_Type;




typedef enum {
    L1C_BMX_ERR_INT_ERR,
    L1C_BMX_ERR_INT_ALL,
}L1C_BMX_ERR_INT_Type;




typedef enum {
    L1C_BMX_TO_INT_TIMEOUT,
    L1C_BMX_TO_INT_ALL,
}L1C_BMX_TO_INT_Type;
# 160 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
BL_Err_Type L1C_Set_Wrap(BL_Fun_Type wrap);
BL_Err_Type L1C_Set_Way_Disable(uint8_t disableVal);
BL_Err_Type L1C_IROM_2T_Access_Set(uint8_t enable);

BL_Err_Type L1C_BMX_Init(L1C_BMX_Cfg_Type *l1cBmxCfg);
BL_Err_Type L1C_BMX_Addr_Monitor_Enable(void);
BL_Err_Type L1C_BMX_Addr_Monitor_Disable(void);
BL_Err_Type L1C_BMX_BusErrResponse_Enable(void);
BL_Err_Type L1C_BMX_BusErrResponse_Disable(void);
BL_Sts_Type L1C_BMX_Get_Status(L1C_BMX_BUS_ERR_Type errType);
uint32_t L1C_BMX_Get_Err_Addr(void);
BL_Err_Type L1C_BMX_ERR_INT_Callback_Install(L1C_BMX_ERR_INT_Type intType,intCallback_Type* cbFun);
BL_Err_Type L1C_BMX_TIMEOUT_INT_Callback_Install(L1C_BMX_TO_INT_Type intType,
                                                 intCallback_Type* cbFun);
              ;
# 43 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/hbn_reg.h" 1
# 491 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/hbn_reg.h"
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
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/aon_reg.h" 1
# 1075 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/aon_reg.h"
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
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h" 2



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/ef_ctrl_reg.h" 1
# 574 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/ef_ctrl_reg.h"
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
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h" 2
# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
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
# 282 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
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
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h" 2
# 76 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h"
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
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h" 1
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/sf_ctrl_reg.h" 1
# 1295 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/sf_ctrl_reg.h"
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
# 2322 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/sf_ctrl_reg.h"
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
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h" 2
# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
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
# 291 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
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
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h" 2
# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
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
# 152 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
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
# 42 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 2
# 59 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
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
# 406 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
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
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_cfg.h" 1
# 97 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_cfg.h"
BL_Err_Type SF_Cfg_Get_Flash_Cfg_Need_Lock(uint32_t flashID,SPI_Flash_Cfg_Type * pFlashCfg);
void SF_Cfg_Init_Flash_Gpio(uint8_t flashPinCfg,uint8_t restoreDefault);
void SF_Cfg_Restore_GPIO17_Fun(uint8_t fun);
uint32_t SF_Cfg_Flash_Identify(uint8_t callFromFlash,uint32_t autoScan,uint32_t flashPinCfg,uint8_t restoreDefault,
                               SPI_Flash_Cfg_Type * pFlashCfg);
void SF_Cfg_Init_Ext_Flash_Gpio(uint8_t extFlashPin);
void SF_Cfg_Init_Internal_Flash_Gpio(void);
void SF_Cfg_Deinit_Ext_Flash_Gpio(uint8_t extFlashPin);
# 46 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h" 2


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pds.h" 1
# 61 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pds.h"
typedef enum {
    PDS_LDO_LEVEL_0P60V=0,
    PDS_LDO_LEVEL_0P65V=1,
    PDS_LDO_LEVEL_0P70V=2,
    PDS_LDO_LEVEL_0P75V=3,
    PDS_LDO_LEVEL_0P80V=4,
    PDS_LDO_LEVEL_0P85V=5,
    PDS_LDO_LEVEL_0P90V=6,
    PDS_LDO_LEVEL_0P95V=7,
    PDS_LDO_LEVEL_1P00V=8,
    PDS_LDO_LEVEL_1P05V=9,
    PDS_LDO_LEVEL_1P10V=10,
    PDS_LDO_LEVEL_1P15V=11,
    PDS_LDO_LEVEL_1P20V=12,
    PDS_LDO_LEVEL_1P25V=13,
    PDS_LDO_LEVEL_1P30V=14,
    PDS_LDO_LEVEL_1P35V=15,
}PDS_LDO_LEVEL_Type;




typedef struct {
    uint32_t pdsStart : 1;
    uint32_t sleepForever : 1;
    uint32_t xtalForceOff : 1;
    uint32_t saveWiFiState : 1;
    uint32_t dcdc18Off : 1;
    uint32_t bgSysOff : 1;
    uint32_t rsv6_7 : 2;
    uint32_t clkOff : 1;
    uint32_t memStby : 1;
    uint32_t rsv10 : 1;
    uint32_t isolation : 1;
    uint32_t waitXtalRdy : 1;
    uint32_t pdsPwrOff : 1;
    uint32_t xtalOff : 1;
    uint32_t socEnbForceOn : 1;
    uint32_t pdsRstSocEn : 1;
    uint32_t pdsRC32mOn : 1;
    uint32_t pdsLdoVselEn : 1;
    uint32_t rsv19_20 : 2;
    uint32_t wfiMask : 1;
    uint32_t ldo11Off : 1;
    uint32_t rsv23 : 1;
    uint32_t pdsLdoVol : 4;
    uint32_t pdsCtlRfSel : 2;
    uint32_t pdsCtlPllSel : 2;
}PDS_CTL_Type;




typedef struct {
    uint32_t cpuPwrOff : 1;
    uint32_t cpuRst : 1;
    uint32_t cpuMemStby : 1;
    uint32_t cpuGateClk : 1;
    uint32_t rsv4_11 : 8;
    uint32_t WbPwrOff : 1;
    uint32_t WbRst : 1;
    uint32_t WbMemStby : 1;
    uint32_t WbGateClk : 1;
    uint32_t rsv16_23 : 8;
    uint32_t MiscPwrOff : 1;
    uint32_t MiscRst : 1;
    uint32_t MiscMemStby : 1;
    uint32_t MiscGateClk : 1;
    uint32_t rsv28_31 : 4;
}PDS_CTL4_Type;




typedef enum {
    PDS_INT_WAKEUP=0,
    PDS_INT_HBN_GPIO_IRRX_BLE_WIFI=1,
    PDS_INT_RF_DONE=2,
    PDS_INT_PLL_DONE=3,
    PDS_INT_MAX=4,
}PDS_INT_Type;




typedef struct {
    uint32_t forceCpuPwrOff : 1;
    uint32_t rsv1 : 1;
    uint32_t forceWbPwrOff : 1;
    uint32_t rsv3 : 1;
    uint32_t forceCpuIsoPwrOff : 1;
    uint32_t rsv5 : 1;
    uint32_t forceWbIsoPwrOff : 1;
    uint32_t rsv7 : 1;
    uint32_t forceCpuPdsRst : 1;
    uint32_t rsv9 : 1;
    uint32_t forceWbPdsRst : 1;
    uint32_t rsv11 : 1;
    uint32_t forceCpuMemStby : 1;
    uint32_t rsv13 : 1;
    uint32_t forceWbMemStby : 1;
    uint32_t rsv15 : 1;
    uint32_t forceCpuGateClk : 1;
    uint32_t rsv17 : 1;
    uint32_t forceWbGateClk : 1;
    uint32_t rsv19_31 : 12;
}PDS_CTL2_Type;




typedef struct {
    uint32_t rsv0 : 1;
    uint32_t forceMiscPwrOff : 1;
    uint32_t rsv2_3 : 2;
    uint32_t forceMiscIsoEn : 1;
    uint32_t rsv5_6 : 2;
    uint32_t forceMiscPdsRst : 1;
    uint32_t rsv8_9 : 2;
    uint32_t forceMiscMemStby : 1;
    uint32_t rsv11_12 : 2;
    uint32_t forceMiscGateClk : 1;
    uint32_t rsv14_23 : 10;
    uint32_t CpuIsoEn : 1;
    uint32_t rsv25_26 : 2;
    uint32_t WbIsoEn : 1;
    uint32_t rsv28_29 : 2;
    uint32_t MiscIsoEn : 1;
    uint32_t rsv31 : 1;
}PDS_CTL3_Type;




typedef struct {
    PDS_CTL_Type pdsCtl;
    PDS_CTL2_Type pdsCtl2;
    PDS_CTL3_Type pdsCtl3;
    PDS_CTL4_Type pdsCtl4;
}PDS_DEFAULT_LV_CFG_Type;




typedef enum {
    PDS_PLL_STS_OFF=0,
    PDS_PLL_STS_SFREG=1,
    PDS_PLL_STS_PU=2,
    PDS_PLL_STS_RDY=3,
}PDS_PLL_STS_Type;




typedef enum {
    PDS_RF_STS_OFF=0,
    PDS_RF_STS_PU_MBG=1,
    PDS_RF_STS_PU_LDO15RF=3,
    PDS_RF_STS_PU_SFREG=7,
    PDS_RF_STS_WB_EN_AON=15,
}PDS_RF_STS_Type;




typedef enum {
    PDS_STS_IDLE=0,
    PDS_STS_ECG=8,
    PDS_STS_ERST=12,
    PDS_STS_EISO=15,
    PDS_STS_POFF=7,
    PDS_STS_PRE_BGON=3,
    PDS_STS_PRE_BGON1=1,
    PDS_STS_BGON=5,
    PDS_STS_CLK_SW_32M=4,
    PDS_STS_PON_DCDC=6,
    PDS_STS_PON_LDO11_MISC=14,
    PDS_STS_PON=10,
    PDS_STS_DISO=2,
    PDS_STS_DCG=13,
    PDS_STS_DRST=11,
    PDS_STS_WAIT_EFUSE=9,
}PDS_STS_Type;




typedef struct {
    uint32_t PDS_RAM_CFG_0KB_16KB_CPU_RAM_RET : 1;
    uint32_t PDS_RAM_CFG_16KB_32KB_CPU_RAM_RET : 1;
    uint32_t PDS_RAM_CFG_32KB_48KB_CPU_RAM_RET : 1;
    uint32_t PDS_RAM_CFG_48KB_64KB_CPU_RAM_RET : 1;
    uint32_t PDS_RAM_CFG_0KB_16KB_CPU_RAM_SLP : 1;
    uint32_t PDS_RAM_CFG_16KB_32KB_CPU_RAM_SLP : 1;
    uint32_t PDS_RAM_CFG_32KB_48KB_CPU_RAM_SLP : 1;
    uint32_t PDS_RAM_CFG_48KB_64KB_CPU_RAM_SLP : 1;
    uint32_t PDS_RAM_CFG_RSV : 24;
}PDS_RAM_CFG_Type;




typedef enum {
    PDS_PLL_XTAL_NONE,
    PDS_PLL_XTAL_24M,
    PDS_PLL_XTAL_32M,
    PDS_PLL_XTAL_38P4M,
    PDS_PLL_XTAL_40M,
    PDS_PLL_XTAL_26M,
    PDS_PLL_XTAL_RC32M,
}PDS_PLL_XTAL_Type;




typedef enum {
    PDS_PLL_CLK_480M,
    PDS_PLL_CLK_240M,
    PDS_PLL_CLK_192M,
    PDS_PLL_CLK_160M,
    PDS_PLL_CLK_120M,
    PDS_PLL_CLK_96M,
    PDS_PLL_CLK_80M,
    PDS_PLL_CLK_48M,
    PDS_PLL_CLK_32M,
}PDS_PLL_CLK_Type;




typedef enum {
    PDS_AON_GPIO_INT_TRIGGER_SYNC_FALLING_EDGE,
    PDS_AON_GPIO_INT_TRIGGER_SYNC_RISING_EDGE,
    PDS_AON_GPIO_INT_TRIGGER_SYNC_LOW_LEVEL,
    PDS_AON_GPIO_INT_TRIGGER_SYNC_HIGH_LEVEL,
    PDS_AON_GPIO_INT_TRIGGER_ASYNC_FALLING_EDGE,
    PDS_AON_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE,
    PDS_AON_GPIO_INT_TRIGGER_ASYNC_LOW_LEVEL,
    PDS_AON_GPIO_INT_TRIGGER_ASYNC_HIGH_LEVEL,
}PDS_AON_GPIO_INT_Trigger_Type;




typedef struct {
    uint8_t pdsLevel;
    uint8_t turnOffRF;
    uint8_t useXtal32k;
    uint8_t pdsAonGpioWakeupSrc;
    PDS_AON_GPIO_INT_Trigger_Type pdsAonGpioTrigType;
    uint8_t powerDownFlash;
    uint8_t turnOffFlashPad;
    uint8_t ocramRetetion;
    uint8_t turnoffPLL;
    uint8_t xtalType;
    uint8_t flashContRead;
    uint32_t sleepTime;
    SPI_Flash_Cfg_Type *flashCfg;
    PDS_LDO_LEVEL_Type ldoLevel;
    void (*preCbFun)(void);
    void (*postCbFun)(void);
}PDS_APP_CFG_Type;
# 456 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pds.h"
BL_Err_Type PDS_Reset(void);
BL_Err_Type PDS_Enable(PDS_CTL_Type *cfg,PDS_CTL4_Type *cfg4,uint32_t pdsSleepCnt);
BL_Err_Type PDS_Force_Config(PDS_CTL2_Type *cfg2,PDS_CTL3_Type *cfg3);
BL_Err_Type PDS_RAM_Config(PDS_RAM_CFG_Type *ramCfg);

BL_Err_Type PDS_Default_Level_Config(PDS_DEFAULT_LV_CFG_Type *defaultLvCfg,
                                                    PDS_RAM_CFG_Type *ramCfg,uint32_t pdsSleepCnt);

BL_Err_Type PDS_IntMask(PDS_INT_Type intType,BL_Mask_Type intMask);
BL_Sts_Type PDS_Get_IntStatus(PDS_INT_Type intType);
BL_Err_Type PDS_IntClear(void);
PDS_PLL_STS_Type PDS_Get_PdsPllStstus(void);
PDS_RF_STS_Type PDS_Get_PdsRfStstus(void);
PDS_STS_Type PDS_Get_PdsStstus(void);
BL_Err_Type PDS_WAKEUP_IRQHandler_Install(void);
BL_Err_Type PDS_Int_Callback_Install(PDS_INT_Type intType,intCallback_Type* cbFun);

BL_Err_Type PDS_Trim_RC32M(void);
BL_Err_Type PDS_Select_RC32M_As_PLL_Ref(void);
BL_Err_Type PDS_Select_XTAL_As_PLL_Ref(void);
BL_Err_Type PDS_Power_On_PLL(PDS_PLL_XTAL_Type xtalType);
BL_Err_Type PDS_Fix_Xtal_Settig(void);
BL_Err_Type PDS_Enable_PLL_All_Clks(void);
BL_Err_Type PDS_Enable_PLL_Clk(PDS_PLL_CLK_Type pllClk);
BL_Err_Type PDS_Disable_PLL_All_Clks(void);
BL_Err_Type PDS_Disable_PLL_Clk(PDS_PLL_CLK_Type pllClk);
BL_Err_Type PDS_Power_Off_PLL(void);
              ;
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h" 2
# 66 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
typedef enum {
    GLB_ROOT_CLK_RC32M,
    GLB_ROOT_CLK_XTAL,
    GLB_ROOT_CLK_PLL,
}GLB_ROOT_CLK_Type;




typedef enum {
    GLB_SYS_CLK_RC32M,
    GLB_SYS_CLK_XTAL,
    GLB_SYS_CLK_PLL48M,
    GLB_SYS_CLK_PLL120M,
    GLB_SYS_CLK_PLL160M,
    GLB_SYS_CLK_PLL192M,
}GLB_SYS_CLK_Type;




typedef enum {
    GLB_DMA_CLK_DMA0_CH0,
    GLB_DMA_CLK_DMA0_CH1,
    GLB_DMA_CLK_DMA0_CH2,
    GLB_DMA_CLK_DMA0_CH3,
}GLB_DMA_CLK_ID_Type;




typedef enum {
    GLB_IR_CLK_SRC_XCLK,
}GLB_IR_CLK_SRC_Type;




typedef enum {
    GLB_SFLASH_CLK_120M,
    GLB_SFLASH_CLK_XTAL,
    GLB_SFLASH_CLK_48M,
    GLB_SFLASH_CLK_80M,
    GLB_SFLASH_CLK_BCLK,
    GLB_SFLASH_CLK_96M,
}GLB_SFLASH_CLK_Type;




typedef enum {
    GLB_SPI_PAD_ACT_AS_SLAVE,
    GLB_SPI_PAD_ACT_AS_MASTER,
}GLB_SPI_PAD_ACT_AS_Type;




typedef enum {
    GLB_PKA_CLK_HCLK,
    GLB_PKA_CLK_PLL120M,
}GLB_PKA_CLK_Type;




typedef enum {
    BMX_ARB_FIX,
    BMX_ARB_ROUND_ROBIN,
    BMX_ARB_RANDOM,
}BMX_ARB_Type;




typedef struct {
    uint8_t timeoutEn;
    BL_Fun_Type errEn;
    BMX_ARB_Type arbMod;
}BMX_Cfg_Type;




typedef enum {
    BMX_BUS_ERR_TRUSTZONE_DECODE,
    BMX_BUS_ERR_ADDR_DECODE,
}BMX_BUS_ERR_Type;




typedef enum {
    BMX_ERR_INT_ERR,
    BMX_ERR_INT_ALL,
}BMX_ERR_INT_Type;




typedef enum {
    BMX_TO_INT_TIMEOUT,
    BMX_TO_INT_ALL,
}BMX_TO_INT_Type;




typedef enum {
    GLB_EM_0KB=0x0,
    GLB_EM_8KB=0x3,
    GLB_EM_16KB=0xF,
}GLB_EM_Type;




typedef enum {
    GLB_MTIMER_CLK_BCLK,
    GLB_MTIMER_CLK_32K,
}GLB_MTIMER_CLK_Type;




typedef enum {
    GLB_ADC_CLK_96M,
    GLB_ADC_CLK_XCLK,
}GLB_ADC_CLK_Type;




typedef enum {
    GLB_DAC_CLK_32M,
    GLB_DAC_CLK_XCLK,
}GLB_DAC_CLK_Type;




typedef enum {
    GLB_DIG_CLK_PLL_32M,
    GLB_DIG_CLK_XCLK,
}GLB_DIG_CLK_Type;




typedef enum {
    GLB_512K_CLK_OUT_512K,
    GLB_512K_CLK_OUT_256K,
    GLB_512K_CLK_OUT_128K,
}GLB_512K_CLK_OUT_Type;




typedef enum {
    GLB_BT_BANDWIDTH_1M,
    GLB_BT_BANDWIDTH_2M,
}GLB_BT_BANDWIDTH_Type;




typedef enum {
    GLB_UART_SIG_0,
    GLB_UART_SIG_1,
    GLB_UART_SIG_2,
    GLB_UART_SIG_3,
    GLB_UART_SIG_4,
    GLB_UART_SIG_5,
    GLB_UART_SIG_6,
    GLB_UART_SIG_7,
}GLB_UART_SIG_Type;




typedef enum {
    GLB_UART_SIG_FUN_UART0_RTS,
    GLB_UART_SIG_FUN_UART0_CTS,
    GLB_UART_SIG_FUN_UART0_TXD,
    GLB_UART_SIG_FUN_UART0_RXD,
    GLB_UART_SIG_FUN_UART1_RTS,
    GLB_UART_SIG_FUN_UART1_CTS,
    GLB_UART_SIG_FUN_UART1_TXD,
    GLB_UART_SIG_FUN_UART1_RXD,
}GLB_UART_SIG_FUN_Type;




typedef enum {
    GLB_GPIO_REAL_MODE_REG,
    GLB_GPIO_REAL_MODE_SDIO=0x1,
    GLB_GPIO_REAL_MODE_RF=0xC,
    GLB_GPIO_REAL_MODE_JTAG=0xE,
    GLB_GPIO_REAL_MODE_CCI=0xF,
}GLB_GPIO_REAL_MODE_Type;




typedef enum {
    GLB_GPIO_INT_TRIG_NEG_PULSE,
    GLB_GPIO_INT_TRIG_POS_PULSE,
    GLB_GPIO_INT_TRIG_NEG_LEVEL,
    GLB_GPIO_INT_TRIG_POS_LEVEL,
}GLB_GPIO_INT_TRIG_Type;




typedef enum {
    GLB_GPIO_INT_CONTROL_SYNC,
    GLB_GPIO_INT_CONTROL_ASYNC,
}GLB_GPIO_INT_CONTROL_Type;




typedef enum {
    GLB_PLL_XTAL_NONE,
    GLB_PLL_XTAL_24M,
    GLB_PLL_XTAL_32M,
    GLB_PLL_XTAL_38P4M,
    GLB_PLL_XTAL_40M,
    GLB_PLL_XTAL_26M,
    GLB_PLL_XTAL_RC32M,
}GLB_PLL_XTAL_Type;




typedef enum {
    GLB_PLL_CLK_480M,
    GLB_PLL_CLK_240M,
    GLB_PLL_CLK_192M,
    GLB_PLL_CLK_160M,
    GLB_PLL_CLK_120M,
    GLB_PLL_CLK_96M,
    GLB_PLL_CLK_80M,
    GLB_PLL_CLK_48M,
    GLB_PLL_CLK_32M,
}GLB_PLL_CLK_Type;




typedef struct {
    uint8_t clkpllIcp1u;
    uint8_t clkpllIcp5u;
    uint8_t clkpllIntFracSw;
    uint8_t clkpllC3;
    uint8_t clkpllCz;
    uint8_t clkpllRz;
    uint8_t clkpllR4;
    uint8_t clkpllR4Short;
    uint8_t clkpllRefdivRatio;
    uint8_t clkpllPostdiv;
    uint32_t clkpllSdmin;
    uint8_t clkpllSelFbClk;
    uint8_t clkpllSelSampleClk;
}GLB_PLL_Cfg_Type;
# 554 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
GLB_ROOT_CLK_Type GLB_Get_Root_CLK_Sel(void);
BL_Err_Type GLB_Set_System_CLK_Div(uint8_t hclkDiv,uint8_t bclkDiv);
uint8_t GLB_Get_BCLK_Div(void);
uint8_t GLB_Get_HCLK_Div(void);
BL_Err_Type Update_SystemCoreClockWith_XTAL(GLB_PLL_XTAL_Type xtalType);
BL_Err_Type GLB_Set_System_CLK(GLB_PLL_XTAL_Type xtalType,GLB_SYS_CLK_Type clkFreq);
BL_Err_Type System_Core_Clock_Update_From_RC32M(void);

BL_Err_Type GLB_Set_BLE_CLK(uint8_t enable);
BL_Err_Type GLB_Set_WiFi_Core_CLK(uint8_t clkDiv);
BL_Err_Type GLB_Set_WiFi_Encrypt_CLK(uint8_t clkDiv);
BL_Err_Type GLB_Set_DMA_CLK(uint8_t enable,GLB_DMA_CLK_ID_Type clk);
BL_Err_Type GLB_Set_IR_CLK(uint8_t enable,GLB_IR_CLK_SRC_Type clkSel,uint8_t div);
BL_Err_Type GLB_Set_SF_CLK(uint8_t enable,GLB_SFLASH_CLK_Type clkSel,uint8_t div);
BL_Err_Type GLB_Set_UART_CLK(uint8_t enable,HBN_UART_CLK_Type clkSel,uint8_t div);
BL_Err_Type GLB_Set_I2C_CLK(uint8_t enable,uint8_t div);
BL_Err_Type GLB_Set_SPI_CLK(uint8_t enable,uint8_t div);

BL_Err_Type GLB_Set_PKA_CLK_Sel(GLB_PKA_CLK_Type clkSel);
BL_Err_Type GLB_SW_System_Reset(void);
BL_Err_Type GLB_SW_CPU_Reset(void);
BL_Err_Type GLB_SW_POR_Reset(void);
BL_Err_Type GLB_AHB_Slave1_Reset(BL_AHB_Slave1_Type slave1);
BL_Err_Type GLB_AHB_Slave1_Clock_Gate(uint8_t enable,BL_AHB_Slave1_Type slave1);

BL_Err_Type GLB_BMX_Init(BMX_Cfg_Type *BmxCfg);
BL_Err_Type GLB_BMX_Addr_Monitor_Enable(void);
BL_Err_Type GLB_BMX_Addr_Monitor_Disable(void);
BL_Err_Type GLB_BMX_BusErrResponse_Enable(void);
BL_Err_Type GLB_BMX_BusErrResponse_Disable(void);
BL_Sts_Type GLB_BMX_Get_Status(BMX_BUS_ERR_Type errType);
uint32_t GLB_BMX_Get_Err_Addr(void);
BL_Err_Type BMX_ERR_INT_Callback_Install(BMX_ERR_INT_Type intType,intCallback_Type* cbFun);
BL_Err_Type BMX_TIMEOUT_INT_Callback_Install(BMX_TO_INT_Type intType,intCallback_Type* cbFun);

BL_Err_Type GLB_Set_OCRAM_Idle(void);
BL_Err_Type GLB_Set_SRAM_RET(uint32_t value);
uint32_t GLB_Get_SRAM_RET(void);
BL_Err_Type GLB_Set_SRAM_SLP(uint32_t value);
uint32_t GLB_Get_SRAM_SLP(void);
BL_Err_Type GLB_Set_SRAM_PARM(uint32_t value);
uint32_t GLB_Get_SRAM_PARM(void);

BL_Err_Type GLB_Set_EM_Sel(GLB_EM_Type emType);

BL_Err_Type GLB_UART_Sig_Swap_Set(uint8_t swapSel);
BL_Err_Type GLB_JTAG_Sig_Swap_Set(uint8_t swapSel);
BL_Err_Type GLB_Swap_SPI_0_MOSI_With_MISO(BL_Fun_Type newState);
BL_Err_Type GLB_Set_SPI_0_ACT_MOD_Sel(GLB_SPI_PAD_ACT_AS_Type mod);
BL_Err_Type GLB_Select_Internal_Flash(void);
BL_Err_Type GLB_Select_External_Flash(void);
BL_Err_Type GLB_Deswap_Flash_Pin(void);
BL_Err_Type GLB_Swap_Flash_Pin(void);

BL_Err_Type GLB_Set_MTimer_CLK(uint8_t enable,GLB_MTIMER_CLK_Type clkSel,uint32_t div);

BL_Err_Type GLB_Set_ADC_CLK(uint8_t enable,GLB_ADC_CLK_Type clkSel,uint8_t div);
BL_Err_Type GLB_Set_DAC_CLK(uint8_t enable,GLB_DAC_CLK_Type clkSel,uint8_t div);

BL_Err_Type GLB_Platform_Wakeup_Enable(void);
BL_Err_Type GLB_Platform_Wakeup_Disable(void);

BL_Err_Type GLB_Set_DIG_CLK_Sel(GLB_DIG_CLK_Type clkSel);
BL_Err_Type GLB_Set_DIG_512K_CLK(uint8_t enable,uint8_t compensation,uint8_t div);
BL_Err_Type GLB_Set_DIG_32K_CLK(uint8_t enable,uint8_t compensation,uint8_t div);

BL_Err_Type GLB_Set_BT_Coex_Signal(uint8_t enable,GLB_BT_BANDWIDTH_Type bandWidth,
                                                  uint8_t pti,uint8_t channel);

BL_Err_Type GLB_UART_Fun_Sel(GLB_UART_SIG_Type sig,GLB_UART_SIG_FUN_Type fun);

BL_Err_Type GLB_IR_RX_GPIO_Sel(GLB_GPIO_Type gpio);
BL_Err_Type GLB_IR_LED_Driver_Enable(void);
BL_Err_Type GLB_IR_LED_Driver_Disable(void);
BL_Err_Type GLB_IR_LED_Driver_Ibias(uint8_t ibias);

BL_Err_Type GLB_GPIO_Init(GLB_GPIO_Cfg_Type *cfg);
BL_Err_Type GLB_GPIO_Func_Init(GLB_GPIO_FUNC_Type gpioFun,GLB_GPIO_Type *pinList,uint8_t cnt);
BL_Err_Type GLB_GPIO_INPUT_Enable(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_INPUT_Disable(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_OUTPUT_Enable(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_OUTPUT_Disable(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_Set_PullUp(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_Set_PullDown(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_Set_HZ(GLB_GPIO_Type gpioPin);
uint8_t GLB_GPIO_Get_Fun(GLB_GPIO_Type gpioPin);
GLB_GPIO_REAL_MODE_Type GLB_GPIO_Get_Real_Fun(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_Write(GLB_GPIO_Type gpioPin,uint32_t val);
uint32_t GLB_GPIO_Read(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_IntMask(GLB_GPIO_Type gpioPin,BL_Mask_Type intMask);
BL_Err_Type GLB_GPIO_IntClear(GLB_GPIO_Type gpioPin,BL_Sts_Type intClear);
BL_Sts_Type GLB_Get_GPIO_IntStatus(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_Clr_GPIO_IntStatus(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_Set_GPIO_IntMod(GLB_GPIO_Type gpioPin,GLB_GPIO_INT_CONTROL_Type intCtlMod,
                                GLB_GPIO_INT_TRIG_Type intTrgMod);
GLB_GPIO_INT_CONTROL_Type GLB_Get_GPIO_IntCtlMod(GLB_GPIO_Type gpioPin);
BL_Err_Type GLB_GPIO_INT0_IRQHandler_Install(void);
BL_Err_Type GLB_GPIO_INT0_Callback_Install(GLB_GPIO_Type gpioPin,intCallback_Type* cbFun);
# 72 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h" 1
# 73 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_uart.h" 1



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h" 1
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/uart_reg.h" 1
# 467 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/uart_reg.h"
struct uart_reg {

    union {
        struct
        {
            uint32_t cr_utx_en : 1;
            uint32_t cr_utx_cts_en : 1;
            uint32_t cr_utx_frm_en : 1;
            uint32_t reserved_3 : 1;
            uint32_t cr_utx_prt_en : 1;
            uint32_t cr_utx_prt_sel : 1;
            uint32_t cr_utx_ir_en : 1;
            uint32_t cr_utx_ir_inv : 1;
            uint32_t cr_utx_bit_cnt_d : 3;
            uint32_t reserved_11 : 1;
            uint32_t cr_utx_bit_cnt_p : 2;
            uint32_t reserved_14_15 : 2;
            uint32_t cr_utx_len : 16;
        } BF;
        uint32_t WORD;
    } utx_config;


    union {
        struct
        {
            uint32_t cr_urx_en : 1;
            uint32_t cr_urx_rts_sw_mode : 1;
            uint32_t cr_urx_rts_sw_val : 1;
            uint32_t cr_urx_abr_en : 1;
            uint32_t cr_urx_prt_en : 1;
            uint32_t cr_urx_prt_sel : 1;
            uint32_t cr_urx_ir_en : 1;
            uint32_t cr_urx_ir_inv : 1;
            uint32_t cr_urx_bit_cnt_d : 3;
            uint32_t cr_urx_deg_en : 1;
            uint32_t cr_urx_deg_cnt : 4;
            uint32_t cr_urx_len : 16;
        } BF;
        uint32_t WORD;
    } urx_config;


    union {
        struct
        {
            uint32_t cr_utx_bit_prd : 16;
            uint32_t cr_urx_bit_prd : 16;
        } BF;
        uint32_t WORD;
    } uart_bit_prd;


    union {
        struct
        {
            uint32_t cr_uart_bit_inv : 1;
            uint32_t reserved_1_31 : 31;
        } BF;
        uint32_t WORD;
    } data_config;


    union {
        struct
        {
            uint32_t cr_utx_ir_pos_s : 16;
            uint32_t cr_utx_ir_pos_p : 16;
        } BF;
        uint32_t WORD;
    } utx_ir_position;


    union {
        struct
        {
            uint32_t cr_urx_ir_pos_s : 16;
            uint32_t reserved_16_31 : 16;
        } BF;
        uint32_t WORD;
    } urx_ir_position;


    union {
        struct
        {
            uint32_t cr_urx_rto_value : 8;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } urx_rto_timer;


    uint8_t RESERVED0x1c[4];


    union {
        struct
        {
            uint32_t utx_end_int : 1;
            uint32_t urx_end_int : 1;
            uint32_t utx_fifo_int : 1;
            uint32_t urx_fifo_int : 1;
            uint32_t urx_rto_int : 1;
            uint32_t urx_pce_int : 1;
            uint32_t utx_fer_int : 1;
            uint32_t urx_fer_int : 1;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } uart_int_sts;


    union {
        struct
        {
            uint32_t cr_utx_end_mask : 1;
            uint32_t cr_urx_end_mask : 1;
            uint32_t cr_utx_fifo_mask : 1;
            uint32_t cr_urx_fifo_mask : 1;
            uint32_t cr_urx_rto_mask : 1;
            uint32_t cr_urx_pce_mask : 1;
            uint32_t cr_utx_fer_mask : 1;
            uint32_t cr_urx_fer_mask : 1;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } uart_int_mask;


    union {
        struct
        {
            uint32_t cr_utx_end_clr : 1;
            uint32_t cr_urx_end_clr : 1;
            uint32_t rsvd_2 : 1;
            uint32_t rsvd_3 : 1;
            uint32_t cr_urx_rto_clr : 1;
            uint32_t cr_urx_pce_clr : 1;
            uint32_t rsvd_6 : 1;
            uint32_t rsvd_7 : 1;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } uart_int_clear;


    union {
        struct
        {
            uint32_t cr_utx_end_en : 1;
            uint32_t cr_urx_end_en : 1;
            uint32_t cr_utx_fifo_en : 1;
            uint32_t cr_urx_fifo_en : 1;
            uint32_t cr_urx_rto_en : 1;
            uint32_t cr_urx_pce_en : 1;
            uint32_t cr_utx_fer_en : 1;
            uint32_t cr_urx_fer_en : 1;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } uart_int_en;


    union {
        struct
        {
            uint32_t sts_utx_bus_busy : 1;
            uint32_t sts_urx_bus_busy : 1;
            uint32_t reserved_2_31 : 30;
        } BF;
        uint32_t WORD;
    } uart_status;


    union {
        struct
        {
            uint32_t sts_urx_abr_prd_start : 16;
            uint32_t sts_urx_abr_prd_0x55 : 16;
        } BF;
        uint32_t WORD;
    } sts_urx_abr_prd;


    uint8_t RESERVED0x38[72];


    union {
        struct
        {
            uint32_t uart_dma_tx_en : 1;
            uint32_t uart_dma_rx_en : 1;
            uint32_t tx_fifo_clr : 1;
            uint32_t rx_fifo_clr : 1;
            uint32_t tx_fifo_overflow : 1;
            uint32_t tx_fifo_underflow : 1;
            uint32_t rx_fifo_overflow : 1;
            uint32_t rx_fifo_underflow : 1;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } uart_fifo_config_0;


    union {
        struct
        {
            uint32_t tx_fifo_cnt : 6;
            uint32_t reserved_6_7 : 2;
            uint32_t rx_fifo_cnt : 6;
            uint32_t reserved_14_15 : 2;
            uint32_t tx_fifo_th : 5;
            uint32_t reserved_21_23 : 3;
            uint32_t rx_fifo_th : 5;
            uint32_t reserved_29_31 : 3;
        } BF;
        uint32_t WORD;
    } uart_fifo_config_1;


    union {
        struct
        {
            uint32_t uart_fifo_wdata : 8;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } uart_fifo_wdata;


    union {
        struct
        {
            uint32_t uart_fifo_rdata : 8;
            uint32_t reserved_8_31 : 24;
        } BF;
        uint32_t WORD;
    } uart_fifo_rdata;
};

typedef volatile struct uart_reg uart_reg_t;
# 40 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h" 2
# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
typedef enum {
    UART0_ID,
    UART1_ID,
    UART_ID_MAX,
}UART_ID_Type;




typedef enum {
    UART_TX,
    UART_RX,
    UART_TXRX,
}UART_Direction_Type;




typedef enum {
    UART_PARITY_NONE,
    UART_PARITY_ODD,
    UART_PARITY_EVEN,
}UART_Parity_Type;




typedef enum {
    UART_DATABITS_5,
    UART_DATABITS_6,
    UART_DATABITS_7,
    UART_DATABITS_8,
}UART_DataBits_Type;




typedef enum {
    UART_STOPBITS_0_5,
    UART_STOPBITS_1,
    UART_STOPBITS_1_5,
    UART_STOPBITS_2,
}UART_StopBits_Type;




typedef enum {
    UART_LSB_FIRST,
    UART_MSB_FIRST,
}UART_ByteBitInverse_Type;




typedef enum {
    UART_AUTOBAUD_0X55,
    UART_AUTOBAUD_STARTBIT,
}UART_AutoBaudDetection_Type;




typedef enum {
    UART_INT_TX_END,
    UART_INT_RX_END,
    UART_INT_TX_FIFO_REQ,
    UART_INT_RX_FIFO_REQ,
    UART_INT_RTO,
    UART_INT_PCE,
    UART_INT_TX_FER,
    UART_INT_RX_FER,
    UART_INT_ALL,
}UART_INT_Type;




typedef enum {
    UART_TX_OVERFLOW,
    UART_TX_UNDERFLOW,
    UART_RX_OVERFLOW,
    UART_RX_UNDERFLOW,
}UART_Overflow_Type;




typedef struct {
    uint32_t uartClk;
    uint32_t baudRate;
    UART_DataBits_Type dataBits;
    UART_StopBits_Type stopBits;
    UART_Parity_Type parity;
    BL_Fun_Type ctsFlowControl;
    BL_Fun_Type rxDeglitch;
    BL_Fun_Type rtsSoftwareControl;
    UART_ByteBitInverse_Type byteBitInverse;
}UART_CFG_Type;




typedef struct {
    uint8_t txFifoDmaThreshold;
    uint8_t rxFifoDmaThreshold;
    BL_Fun_Type txFifoDmaEnable;
    BL_Fun_Type rxFifoDmaEnable;
}UART_FifoCfg_Type;




typedef struct {
    BL_Fun_Type txIrEnable;
    BL_Fun_Type rxIrEnable;
    BL_Fun_Type txIrInverse;
    BL_Fun_Type rxIrInverse;
    uint16_t txIrPulseStart;
    uint16_t txIrPulseStop;
    uint16_t rxIrPulseStart;
}UART_IrCfg_Type;
# 274 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
void UART0_IRQHandler(void);
void UART1_IRQHandler(void);

BL_Err_Type UART_Init(UART_ID_Type uartId,UART_CFG_Type* uartCfg);
BL_Err_Type UART_DeInit(UART_ID_Type uartId);
BL_Err_Type UART_FifoConfig(UART_ID_Type uartId,UART_FifoCfg_Type* fifoCfg);
BL_Err_Type UART_IrConfig(UART_ID_Type uartId,UART_IrCfg_Type* irCfg);
BL_Err_Type UART_Enable(UART_ID_Type uartId,UART_Direction_Type direct);
BL_Err_Type UART_Disable(UART_ID_Type uartId,UART_Direction_Type direct);
BL_Err_Type UART_SetTxDataLength(UART_ID_Type uartId,uint16_t length);
BL_Err_Type UART_SetRxDataLength(UART_ID_Type uartId,uint16_t length);
BL_Err_Type UART_SetRxTimeoutValue(UART_ID_Type uartId,uint8_t time);
BL_Err_Type UART_SetDeglitchCount(UART_ID_Type uartId,uint8_t deglitchCnt);
BL_Err_Type UART_SetBaudrate(UART_ID_Type uartId,UART_AutoBaudDetection_Type autoBaudDet);
BL_Err_Type UART_SetRtsValue(UART_ID_Type uartId);
BL_Err_Type UART_ClrRtsValue(UART_ID_Type uartId);
BL_Err_Type UART_TxFreeRun(UART_ID_Type uartId,BL_Fun_Type txFreeRun);
BL_Err_Type UART_AutoBaudDetection(UART_ID_Type uartId,BL_Fun_Type autoBaud);
BL_Err_Type UART_TxFifoClear(UART_ID_Type uartId);
BL_Err_Type UART_RxFifoClear(UART_ID_Type uartId);
BL_Err_Type UART_IntMask(UART_ID_Type uartId,UART_INT_Type intType,BL_Mask_Type intMask);
BL_Err_Type UART_IntClear(UART_ID_Type uartId,UART_INT_Type intType);
BL_Err_Type UART_Int_Callback_Install(UART_ID_Type uartId,UART_INT_Type intType,intCallback_Type* cbFun);
BL_Err_Type UART_SendData(UART_ID_Type uartId,uint8_t* data,uint32_t len);
BL_Err_Type UART_SendDataBlock(UART_ID_Type uartId,uint8_t* data,uint32_t len);
uint32_t UART_ReceiveData(UART_ID_Type uartId,uint8_t* data,uint32_t maxLen);
uint16_t UART_GetAutoBaudCount(UART_ID_Type uartId,UART_AutoBaudDetection_Type autoBaudDet);
uint8_t UART_GetTxFifoCount(UART_ID_Type uartId);
uint8_t UART_GetRxFifoCount(UART_ID_Type uartId);
BL_Sts_Type UART_GetIntStatus(UART_ID_Type uartId,UART_INT_Type intType);
BL_Sts_Type UART_GetTxBusBusyStatus(UART_ID_Type uartId);
BL_Sts_Type UART_GetRxBusBusyStatus(UART_ID_Type uartId);
BL_Sts_Type UART_GetOverflowStatus(UART_ID_Type uartId,UART_Overflow_Type overflow);
uint32_t UART_GetBaudrate(UART_ID_Type uartId);
# 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_uart.h" 2


typedef void (*cb_uart_notify_t)(void *arg);
int bl_uart_gpio_init(uint8_t id, uint8_t tx, uint8_t rx, uint8_t rts, uint8_t cts, int baudrate);
int bl_uart_init(uint8_t id, uint8_t tx_pin, uint8_t rx_pin, uint8_t cts_pin, uint8_t rts_pin, uint32_t baudrate);
int bl_uart_init_ex(uint8_t id, uint8_t tx_pin, uint8_t rx_pin, uint8_t cts_pin, uint8_t rts_pin, uint32_t baudrate,
                 UART_DataBits_Type dataBits, UART_StopBits_Type stopBits, UART_Parity_Type parity);
int bl_uart_debug_early_init(uint32_t baudrate);
int bl_uart_early_init(uint8_t id, uint8_t tx_pin, uint32_t baudrate);

int bl_uart_int_rx_enable(uint8_t id);
int bl_uart_int_rx_disable(uint8_t id);
int bl_uart_int_tx_enable(uint8_t id);
int bl_uart_int_tx_disable(uint8_t id);
int bl_uart_string_send(uint8_t id, char *data);
int bl_uart_flush(uint8_t id);
void bl_uart_getdefconfig(uint8_t id, uint8_t *parity);
void bl_uart_setconfig(uint8_t id, uint32_t baudrate, UART_Parity_Type parity);
void bl_uart_setbaud(uint8_t id, uint32_t baud);
int bl_uart_data_send(uint8_t id, uint8_t data);
int bl_uart_datas_send(uint8_t id, uint8_t *data, int len);
int bl_uart_data_recv(uint8_t id);
int bl_uart_int_enable(uint8_t id);
int bl_uart_int_disable(uint8_t id);
int bl_uart_int_rx_notify_register(uint8_t id, cb_uart_notify_t cb, void *arg);
int bl_uart_int_tx_notify_register(uint8_t id, cb_uart_notify_t cb, void *arg);
int bl_uart_int_rx_notify_unregister(uint8_t id, cb_uart_notify_t cb, void *arg);
int bl_uart_int_tx_notify_unregister(uint8_t id, cb_uart_notify_t cb, void *arg);
# 75 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_chip.h" 1


int bl_chip_info(char *info);
int bl_chip_banner(const char **banner);
int bl_chip_memory_ram(int *num, unsigned int addr[], unsigned int size[], char desc[][6]);
# 76 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h" 1


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h" 2





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_common.h" 1
       



typedef enum {
    BL_SHA1,
    BL_SHA224,
    BL_SHA256,
    BL_MD5,
    BL_SHA384,
    BL_SHA512,
} bl_sha_type_t;





typedef struct {
    uint32_t total[2];
    uint32_t *shaBuf;
    uint32_t *shaPadding;
    uint32_t linkAddr;
} bl_SEC_Eng_SHA256_Link_Ctx;

typedef struct {
    uint32_t :2;
    uint32_t shaMode:3;
    uint32_t :1;
    uint32_t shaHashSel:1;
    uint32_t :2;
    uint32_t shaIntClr:1;
    uint32_t shaIntSet:1;
    uint32_t :5;
    uint32_t shaMsgLen:16;
    uint32_t shaSrcAddr;
    uint32_t result[8];
} __attribute__ ((aligned(4))) bl_SEC_Eng_SHA_Link_Config_Type;

typedef struct bl_sha_ctx {
    bl_sha_type_t type;
    bl_SEC_Eng_SHA256_Link_Ctx ctx;
    bl_SEC_Eng_SHA_Link_Config_Type link_cfg;
    uint32_t tmp[16];
    uint32_t pad[16];
} bl_sha_ctx_t;
# 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_pka.h" 1



int bl_sec_pka_init(void);
int bl_sec_pka_mutex_take(void);
int bl_sec_pka_mutex_give(void);
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_aes.h" 1
       



typedef struct
{
    uint32_t : 3;
    uint32_t aesMode : 2;
    uint32_t aesDecEn : 1;
    uint32_t aesDecKeySel : 1;
    uint32_t aesHwKeyEn : 1;
    uint32_t : 1;
    uint32_t aesIntClr : 1;
    uint32_t aesIntSet : 1;
    uint32_t : 1;
    uint32_t aesBlockMode : 2;
    uint32_t aesIVSel : 1;
    uint32_t aesXTS : 1;
    uint32_t aesMsgLen : 16;
    uint32_t aesSrcAddr;
    uint32_t aesDstAddr;
    uint32_t aesIV0;
    uint32_t aesIV1;
    uint32_t aesIV2;
    uint32_t aesIV3;
    uint32_t aesKey0;
    uint32_t aesKey1;
    uint32_t aesKey2;
    uint32_t aesKey3;
    uint32_t aesKey4;
    uint32_t aesKey5;
    uint32_t aesKey6;
    uint32_t aesKey7;
} __attribute__((aligned(4))) bl_SEC_Eng_AES_Link_Config_Type;

typedef enum {
    BL_AES_ENCRYPT,
    BL_AES_DECRYPT,
} bl_sec_aes_op_t;

typedef struct {
    bl_SEC_Eng_AES_Link_Config_Type link_cfg;
} bl_sec_aes_t;


typedef enum {
    BL_AES_ECB,
    BL_AES_CTR,
    BL_AES_CBC,
} bl_sec_aes_mode_t;

int bl_sec_aes_init();
int bl_aes_acquire_hw();
int bl_aes_release_hw();
int bl_aes_init(bl_sec_aes_t *aes);
int bl_aes_set_key(bl_sec_aes_t *aes, bl_sec_aes_op_t op, const uint8_t *key, size_t key_len);
int bl_aes_set_mode(bl_sec_aes_t *aes, bl_sec_aes_mode_t mode, const uint8_t iv[16]);
int bl_aes_transform_blocks(bl_sec_aes_t *aes, bl_sec_aes_op_t op, const uint8_t *input, uint16_t n_blk, uint8_t *output);
int bl_aes_transform(bl_sec_aes_t *aes, bl_sec_aes_op_t op, const uint8_t *input, uint8_t *output);
# 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_gmac.h" 1
       


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_gmac.h" 2

typedef struct {
    uint32_t :9;
    uint32_t gmacIntClr:1;
    uint32_t gmacIntSet:1;
    uint32_t :5;
    uint32_t gmacMsgLen:16;
    uint32_t gmacSrcAddr;
    uint32_t gmacKey0;
    uint32_t gmacKey1;
    uint32_t gmacKey2;
    uint32_t gmacKey3;
    uint32_t result[4];
} __attribute__((aligned(4))) bl_SEC_Eng_GMAC_Link_Config_Type;

typedef struct {
    bl_SEC_Eng_GMAC_Link_Config_Type link_cfg;
    uint32_t dummy_;
} bl_sec_gmac_t;

int bl_sec_gmac_init();

int bl_gmac_init(bl_sec_gmac_t *ctx, const uint8_t key[16]);
int bl_gmac_clear(bl_sec_gmac_t *ctx);
int bl_gmac_acquire_hw();
int bl_gmac_release_hw();
int bl_gmac_update(bl_sec_gmac_t *ctx, const uint8_t *input, size_t input_len);
int bl_gmac_finish(bl_sec_gmac_t *ctx, uint8_t result[16]);
# 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h" 2





extern SemaphoreHandle_t g_bl_sec_sha_mutex;

int bl_sec_init(void);
int bl_sec_test(void);
int bl_pka_test(void);
int bl_sec_aes_enc(uint8_t *key, int keysize, uint8_t *input, uint8_t *output);
int bl_sec_aes_test(void);
uint32_t bl_sec_get_random_word(void);
void bl_rand_stream(uint8_t *buf, int len);
int bl_rand(void);

int bl_sec_sha_init();
int bl_sec_sha_test(void);

int bl_sha_mutex_take();
int bl_sha_mutex_give();

int bl_sha_init(bl_sha_ctx_t *ctx, const bl_sha_type_t type);
int bl_sha_clone(bl_sha_ctx_t *dst, const bl_sha_ctx_t *src);
int bl_sha_update(bl_sha_ctx_t *ctx, const uint8_t *input, uint32_t len);
int bl_sha_finish(bl_sha_ctx_t *ctx, uint8_t *hash);

int bl_sec_ccm_encrypt_and_tag(const uint8_t *key, unsigned int key_bytelen, size_t length, const unsigned char *iv, size_t iv_len, const unsigned char *add, size_t add_len,
                         const unsigned char *input, unsigned char *output, unsigned char *tag, size_t tag_len);
int bl_sec_ccm_auth_decrypt(const uint8_t *key, unsigned int key_bytelen, size_t length,const unsigned char *iv, size_t iv_len, const unsigned char *add,
        size_t add_len, const unsigned char *input, unsigned char *output, const unsigned char *tag, size_t tag_len);
int bl_sec_aes_ecb_encrypt(const uint8_t *key, unsigned int key_bytelen, size_t length, const unsigned char *input, unsigned char *output);
int bl_sec_aes_ecb_decrypt(const uint8_t *key, unsigned int key_bytelen, size_t length, const unsigned char *input, unsigned char *output);
# 77 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_cks.h" 1


int bl_cks_test(void);
# 78 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.h" 1


void bl_irq_enable(unsigned int source);
void bl_irq_disable(unsigned int source);
typedef enum {
    BL_IRQ_EXCEPTION_TYPE_LOAD_MISALIGN,
    BL_IRQ_EXCEPTION_TYPE_STORE_MISALIGN,
    BL_IRQ_EXCEPTION_TYPE_ACCESS_ILLEGAL,
    BL_IRQ_EXCEPTION_TYPE_ILLEGAL_INSTRUCTION,
} BL_IRQ_EXCEPTION_TYPE_T;
void bl_irq_exception_trigger(BL_IRQ_EXCEPTION_TYPE_T type, void *ptr);

void bl_irq_init(void);

void bl_sec_aes_IRQHandler(void);
void bl_sec_sha_IRQHandler(void);
void bl_sec_pka_IRQHandler(void);
void bl_dma_IRQHandler(void);
void intc_irq(void);
void bl_irq_handler(void);
void bl_irq_register_with_ctx(int irqnum, void *handler, void *ctx);
void bl_irq_register(int irqnum, void *handler);
void bl_irq_unregister(int irqnum, void *handler);
void bl_irq_ctx_get(int irqnum, void **ctx);

int bl_irq_save(void);
void bl_irq_restore(int flags);
void __attribute__((noreturn)) bl_sys_abort(const char *details);
# 79 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_dma.h" 1



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h" 1
# 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h" 2

struct utils_list_hdr
{
    struct utils_list_hdr *next;
};

struct utils_list
{

    struct utils_list_hdr *first;

    struct utils_list_hdr *last;
};
# 41 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_init(struct utils_list *list);
# 54 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_pool_init(struct utils_list *list, void *pool, size_t elmt_size, unsigned int elmt_cnt, void *default_value);
# 64 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_push_back(struct utils_list *list,
                       struct utils_list_hdr *list_hdr);
# 75 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_push_front(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 85 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
struct utils_list_hdr *utils_list_pop_front(struct utils_list *list);
# 98 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_extract(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 110 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
int utils_list_find(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 127 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_insert(struct utils_list * const list, struct utils_list_hdr * const element,
        int (*cmp)(struct utils_list_hdr const *elementA,
        struct utils_list_hdr const *elementB));
# 145 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_insert_after(struct utils_list * const list, struct utils_list_hdr * const prev_element, struct utils_list_hdr * const element);
# 161 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_insert_before(struct utils_list * const list, struct utils_list_hdr * const next_element, struct utils_list_hdr * const element);
# 173 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_concat(struct utils_list *list1, struct utils_list *list2);
# 189 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_remove(struct utils_list *list, struct utils_list_hdr *prev_element, struct utils_list_hdr *element);
# 199 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline int utils_list_is_empty(const struct utils_list *const list)
{
    return (
# 201 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h" 3 4
           ((void *)0) 
# 201 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
                == list->first);
}
# 213 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
unsigned int utils_list_cnt(const struct utils_list *const list);
# 224 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline struct utils_list_hdr *utils_list_pick(const struct utils_list *const list)
{
    return list->first;
}

static inline struct utils_list_hdr *utils_list_pick_last(const struct utils_list *const list)
{
    return list->last;
}

static inline struct utils_list_hdr *utils_list_next(const struct utils_list_hdr *const list_hdr)
{
    return list_hdr->next;
}
# 259 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
typedef struct utils_dlist_s {
    struct utils_dlist_s *prev;
    struct utils_dlist_s *next;
} utils_dlist_t;

static inline void __utils_dlist_add(utils_dlist_t *node, utils_dlist_t *prev, utils_dlist_t *next)
{
    node->next = next;
    node->prev = prev;

    prev->next = node;
    next->prev = node;
}
# 284 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline void utils_dlist_add(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue, queue->next);
}

static inline void utils_dlist_add_tail(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue->prev, queue);
}

static inline void utils_dlist_del(utils_dlist_t *node)
{
    utils_dlist_t *prev = node->prev;
    utils_dlist_t *next = node->next;

    prev->next = next;
    next->prev = prev;
}

static inline void utils_dlist_init(utils_dlist_t *node)
{
    node->next = node->prev = node;
}

static inline void INIT_UTILS_DLIST_HEAD(utils_dlist_t *list)
{
    list->next = list;
    list->prev = list;
}

static inline int utils_dlist_empty(const utils_dlist_t *head)
{
    return head->next == head;
}
# 413 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline int utils_dlist_entry_number(utils_dlist_t *queue)
{
 int num;
 utils_dlist_t *cur = queue;
 for (num=0;cur->next != queue;cur=cur->next, num++)
  ;

 return num;
}
# 441 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
typedef struct utils_slist_s {
    struct utils_slist_s *next;
} utils_slist_t;

static inline void utils_slist_add(utils_slist_t *node, utils_slist_t *head)
{
    node->next = head->next;
    head->next = node;
}

static inline void utils_slist_add_tail(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        head = head->next;
    }

    utils_slist_add(node, head);
}

static inline void utils_slist_append(utils_slist_t *l, utils_slist_t *n)
{
    utils_slist_t *node;

    node = l;
    while (node->next) node = node->next;


    node->next = n;
    n->next = 
# 469 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h" 3 4
             ((void *)0)
# 469 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
                 ;
}

static inline void utils_slist_del(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        if (head->next == node) {
            head->next = node->next;
            break;
        }

        head = head->next;
    }
}

static inline int utils_slist_empty(const utils_slist_t *head)
{
    return !head->next;
}

static inline void utils_slist_init(utils_slist_t *head)
{
    head->next = 0;
}

static inline utils_slist_t* utils_slist_first(utils_slist_t *l)
{
    return l->next;
}

static inline utils_slist_t* utils_slist_tail(utils_slist_t *l)
{
    while (l->next) l = l->next;

    return l;
}

static inline utils_slist_t* utils_slist_next(utils_slist_t *l)
{
    return l->next;
}
# 591 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline int utils_slist_entry_number(utils_slist_t *queue)
{
 int num;
    utils_slist_t *cur = queue;
    for (num=0;cur->next;cur=cur->next, num++)
  ;

    return num;
}
# 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_dma.h" 2
# 28 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_dma.h"
struct bl_dma_item {
    struct utils_list_hdr item;
    void (*cb)(void *arg);
    void *arg;

    uint32_t src;
    uint32_t dst;
    uint32_t next;
    uint32_t ctrl;
};


void bl_dma_copy(struct bl_dma_item *item);
void bl_dma_init(void);
void bl_dma_test(void);
int bl_dma_int_clear(int ch);
void bl_dma_update_memsrc(uint8_t ch, uint32_t src, uint32_t len);
void bl_dma_update_memdst(uint8_t ch, uint32_t dst, uint32_t len);
int bl_dma_irq_register(int channel, void *tc_handler, void *interr_handler, void *ctx);
int bl_dma_irq_unregister(int channel);
void *bl_dma_find_node_by_channel(int channel);
void *bl_dma_find_ctx_by_channel(int channel);
void *bl_dma_mem_malloc(uint32_t size);
void bl_dma_mem_free(void *ptr);
# 80 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_adc.h" 1






typedef void (*bl_adc_cb_t)(int mode, uint32_t *data_ptr, uint32_t data_size);
typedef struct adc_ctx {
    int mode;
    uint32_t *channel_data;
    void *adc_lli;
    int lli_flag;
    uint32_t chan_init_table;
    uint32_t data_size;
    bl_adc_cb_t cb;
}adc_ctx_t;

int test_adc_init(void);
int test_adc_get(int16_t *tmp);
int test_adc_test(void);
int bl_tsen_adc_get(int16_t *temp, uint8_t log_flag);


int bl_adc_init(int mode, int gpio_num);
int bl_adc_dma_init(int mode, uint32_t data_num);
int bl_adc_start(void);
int bl_adc_gpio_init(int gpio_num);
int bl_adc_get_channel_by_gpio(int gpio_num);
int bl_adc_freq_init(int mode, uint32_t freq);
int32_t bl_adc_parse_data(uint32_t *parr, int data_size, int channel, int raw_flag);
# 81 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_timer.h" 1



uint32_t bl_timer_now_us(void);
void bl_timer_delay_us(uint32_t us);
uint64_t bl_timer_now_us64(void);
# 82 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio_cli.h" 1


int bl_gpio_cli_init(void);
# 83 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_wdt_cli.h" 1


int bl_wdt_cli_init(void);
# 84 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_sys.h" 1


void hal_reboot();
void hal_sys_reset();
void hal_poweroff();

struct romapi_freertos_map
{
    void *vApplicationIdleHook;
    void *interrupt_entry_ptr;
    void *vApplicationGetIdleTaskMemory;
    void *vApplicationStackOverflowHook;
    void *vApplicationGetTimerTaskMemory;
    void *rtos_sprintf;
    void *vApplicationMallocFailedHook;
    void *rtos_memcpy_ptr;
    void *vAssertCalled;
    void *rtos_strlen_ptr;
    void *rtos_memset_ptr;
    void *rtos_clz;
    void *exception_entry_ptr;
    void *rtos_strcpy_ptr;
    void *xISRStackTop;
};
struct romapi_freertos_map* hal_sys_romapi_get(void);
void hal_sys_romapi_update(struct romapi_freertos_map *romapi);

void hal_sys_capcode_update(uint8_t capin, uint8_t capout);
uint8_t hal_sys_capcode_get(void);
# 86 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_gpio.h" 1



typedef enum {
    GPIO_INT_TRIG_NEG_PULSE,
    GPIO_INT_TRIG_POS_PULSE,
    GPIO_INT_TRIG_NEG_LEVEL,
    GPIO_INT_TRIG_POS_LEVEL,
} hal_gpio_int_trig_type;

typedef enum {
    GPIO_INT_CONTROL_SYNC,
    GPIO_INT_CONTROL_ASYNC,
} hal_gpio_int_ctl_type;

int hal_gpio_register_handler(void *func, int gpioPin, int intCtrlMod, int intTrgMod, void *arg);
int hal_gpio_init_from_dts(uint32_t fdt, uint32_t dtb_offset);
int hal_gpio_led_on(void);
int hal_gpio_led_off(void);
# 87 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_boot2.h" 1




typedef int (*fptr_Flash_Erase_t)(uint32_t startaddr,uint32_t endaddr);
typedef int (*fptr_Flash_Write_t)(uint32_t addr,uint8_t *data, uint32_t len);
typedef int (*fptr_Flash_Read_t) (uint32_t addr,uint8_t *data, uint32_t len);

typedef struct {
    uint8_t type;
    uint8_t device;
    uint8_t activeIndex;
    uint8_t name[9];
    uint32_t Address[2];
    uint32_t maxLen[2];
    uint32_t len;
    uint32_t age;
} HALPartition_Entry_Config;




typedef enum {
    HAL_PT_ENTRY_FW_CPU0,
    HAL_PT_ENTRY_FW_CPU1,
    HAL_PT_ENTRY_MAX=16,
} HALPtTable_Entry_Type;






typedef enum
{
  HAL_SUCCESS = 0,
  HAL_ERROR = 1,
} HAL_Err_Type;

typedef HAL_Err_Type (*HALpPtTable_Flash_Erase)(uint32_t startaddr,uint32_t endaddr);
typedef HAL_Err_Type (*HALpPtTable_Flash_Write)(uint32_t addr,uint8_t *data, uint32_t len);
typedef HAL_Err_Type (*HALpPtTable_Flash_Read) (uint32_t addr,uint8_t *data, uint32_t len);

void hal_boot2_set_ptable_opt(HALpPtTable_Flash_Erase erase, HALpPtTable_Flash_Write write);
int hal_boot2_partition_bus_addr_active(const char *name, uint32_t *addr, uint32_t *size);
int hal_boot2_partition_bus_addr_inactive(const char *name, uint32_t *addr, uint32_t *size);
int hal_boot2_partition_bus_addr(const char *name, uint32_t *addr0, uint32_t *addr1, uint32_t *size0, uint32_t *size1, int *active);
int hal_boot2_partition_addr_active(const char *name, uint32_t *addr, uint32_t *size);
int hal_boot2_partition_addr_inactive(const char *name, uint32_t *addr, uint32_t *size);
int hal_boot2_partition_addr(const char *name, uint32_t *addr0, uint32_t *addr1, uint32_t *size0, uint32_t *size1, int *active);
uint8_t hal_boot2_get_active_partition(void);
int hal_boot2_get_active_entries(int type, HALPartition_Entry_Config *ptEntry);
int hal_boot2_update_ptable(HALPartition_Entry_Config *ptEntry);
int hal_boot2_dump(void);
int hal_boot2_init(void);
void hal_update_mfg_ptable(void);
# 88 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_board.h" 1


int hal_board_cfg(uint8_t board_code);
uint32_t hal_board_get_factory_addr(void);
# 89 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/looprt/include/looprt.h" 1




# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/bloop/include/bloop.h" 1
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/bloop/include/bloop.h"
struct loop_ctx;

struct loop_msg {
    struct utils_list_hdr item;
    union {
        void *container;
        struct {
            uint8_t priority;
            uint8_t id_dst;
            uint8_t id_msg;
            uint8_t id_src;
        } header;
    } u;
    void *arg1;
    void *arg2;
    unsigned int time_added;
    unsigned int time_consumed;
};

struct loop_evt_handler_statistic {
    unsigned int time_max;
    unsigned int time_consumed;
    unsigned int time_accumulated;
    unsigned int count_triggered;
};

struct loop_evt_handler {
    const char *name;
    int (*evt)(struct loop_ctx *loop, const struct loop_evt_handler *handler, uint32_t *bitmap_evt, uint32_t *evt_type_map);
    int (*handle)(struct loop_ctx *loop, const struct loop_evt_handler *handler, struct loop_msg *msg);
};




struct loop_ctx {
    TaskHandle_t looper;
    uint32_t bitmap_evt_async;
    uint32_t bitmap_evt_sync;
    uint32_t bitmap_msg;
    uint32_t evt_type_map_async[(32)];
    uint32_t evt_type_map_sync[(32)];
    struct utils_list list[(32)];
    struct loop_evt_handler_statistic statistic[(32)];
    const struct loop_evt_handler *(handlers[(32)]);

    utils_dlist_t timer_dlist;
    utils_dlist_t timer_dued;
};

struct loop_timer {
    utils_dlist_t dlist_item;






    uint8_t flags;

    unsigned int time_added;
    unsigned int time_target;
    int idx_task;
    uint32_t evt_type_map;
    void (*cb)(struct loop_ctx *loop, struct loop_timer *timer, void *arg);
    void *arg;
};


extern struct loop_evt_handler bloop_handler_sys;


int bloop_init(struct loop_ctx *loop);
int bloop_run(struct loop_ctx *loop);
int bloop_status_dump(struct loop_ctx *loop);
int bloop_handler_register(struct loop_ctx *loop, const struct loop_evt_handler *handler, int priority);
int bloop_handler_unregister(struct loop_ctx *loop, const struct loop_evt_handler *handler, int priority);
void bloop_timer_init(struct loop_timer *timer, int use_auto_free);
void bloop_timer_configure(struct loop_timer *timer, unsigned int delay_ms,
        void(*cb)(struct loop_ctx *loop, struct loop_timer *timer, void *arg), void *arg,
        int idx_task, uint32_t evt_type_map);
void bloop_timer_repeat_enable(struct loop_timer *timer);
void bloop_timer_register(struct loop_ctx *loop, struct loop_timer *timer);
void bloop_wait_startup(struct loop_ctx *loop);


void bloop_evt_set_async(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);
void bloop_evt_set_async_fromISR(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);

void bloop_evt_set_sync(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);
void bloop_evt_unset_sync(struct loop_ctx *loop, unsigned int evt);
# 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/looprt/include/looprt.h" 2
int looprt_test_cli_init(void);
int looprt_start(StackType_t *proc_stack_looprt, int stack_count, StaticTask_t *proc_task_looprt);
int looprt_start_auto(void);
void looprt_evt_status_dump(void);
void looprt_evt_notify_async(unsigned int task, uint32_t evt_map);
void looprt_evt_notify_async_fromISR(unsigned int task, uint32_t evt_map);
void looprt_evt_schedule(int task, uint32_t evt_map, int delay_ms);


int looprt_handler_register(const struct loop_evt_handler *handler, int priority);
int looprt_timer_register(struct loop_timer *timer);
# 90 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/include/loopset.h" 1






int loopset_led_hook_on_looprt(void);
void loopset_led_trigger(int pin, unsigned int timeon_ms);
int loopset_led_cli_init(void);
# 91 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bltime/include/bl_sys_time.h" 1




# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_rtc.h" 1
# 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_rtc.h"
void bl_rtc_init(void);
uint64_t bl_rtc_get_counter(void);
uint64_t bl_rtc_get_timestamp_ms(void);
uint64_t bl_rtc_get_delta_counter(uint64_t ref_cnt);
uint64_t bl_rtc_get_delta_time_ms(uint64_t ref_cnt);
# 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bltime/include/bl_sys_time.h" 2

void bl_sys_time_update(uint64_t epoch);
int bl_sys_time_get(uint64_t *epoch);
int bl_sys_time_cli_init(void);

void bl_sys_time_sync_init(void);
int bl_sys_time_sync_state(uint32_t *xTicksToJump);
uint32_t bl_sys_time_sync(void);
# 92 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/blota/include/bl_sys_ota.h" 1
# 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/blota/include/bl_sys_ota.h"
int bl_sys_ota_cli_init(void);
# 93 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/romfs/include/bl_romfs.h" 1
# 18 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/fs/romfs/include/bl_romfs.h"
int romfs_register(void);
void test1_romfs(void);
void test2_romfs(void);
void test3_romfs(void);
# 94 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/fdt.h" 1


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h" 1
# 55 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 56 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h" 2



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 1 3 4
# 60 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h" 2
# 69 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h"
typedef uint16_t fdt16_t;
typedef uint32_t fdt32_t;
typedef uint64_t fdt64_t;
# 82 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h"
static inline uint16_t fdt16_to_cpu(fdt16_t x)
{
    return ( uint16_t)((((unsigned long long)((uint8_t *)&x)[0]) << 8) | ((unsigned long long)((uint8_t *)&x)[1]));
}
static inline fdt16_t cpu_to_fdt16(uint16_t x)
{
    return ( fdt16_t)((((unsigned long long)((uint8_t *)&x)[0]) << 8) | ((unsigned long long)((uint8_t *)&x)[1]));
}

static inline uint32_t fdt32_to_cpu(fdt32_t x)
{
    return ( uint32_t)((((unsigned long long)((uint8_t *)&x)[0]) << 24) | (((unsigned long long)((uint8_t *)&x)[1]) << 16) | (((unsigned long long)((uint8_t *)&x)[2]) << 8) | ((unsigned long long)((uint8_t *)&x)[3]));
}
static inline fdt32_t cpu_to_fdt32(uint32_t x)
{
    return ( fdt32_t)((((unsigned long long)((uint8_t *)&x)[0]) << 24) | (((unsigned long long)((uint8_t *)&x)[1]) << 16) | (((unsigned long long)((uint8_t *)&x)[2]) << 8) | ((unsigned long long)((uint8_t *)&x)[3]));
}

static inline uint64_t fdt64_to_cpu(fdt64_t x)
{
    return ( uint64_t)((((unsigned long long)((uint8_t *)&x)[0]) << 56) | (((unsigned long long)((uint8_t *)&x)[1]) << 48) | (((unsigned long long)((uint8_t *)&x)[2]) << 40) | (((unsigned long long)((uint8_t *)&x)[3]) << 32) | (((unsigned long long)((uint8_t *)&x)[4]) << 24) | (((unsigned long long)((uint8_t *)&x)[5]) << 16) | (((unsigned long long)((uint8_t *)&x)[6]) << 8) | ((unsigned long long)((uint8_t *)&x)[7]));
}
static inline fdt64_t cpu_to_fdt64(uint64_t x)
{
    return ( fdt64_t)((((unsigned long long)((uint8_t *)&x)[0]) << 56) | (((unsigned long long)((uint8_t *)&x)[1]) << 48) | (((unsigned long long)((uint8_t *)&x)[2]) << 40) | (((unsigned long long)((uint8_t *)&x)[3]) << 32) | (((unsigned long long)((uint8_t *)&x)[4]) << 24) | (((unsigned long long)((uint8_t *)&x)[5]) << 16) | (((unsigned long long)((uint8_t *)&x)[6]) << 8) | ((unsigned long long)((uint8_t *)&x)[7]));
}
# 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/fdt.h" 2
# 58 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/fdt.h"
struct fdt_header {
    fdt32_t magic;
    fdt32_t totalsize;
    fdt32_t off_dt_struct;
    fdt32_t off_dt_strings;
    fdt32_t off_mem_rsvmap;
    fdt32_t version;
    fdt32_t last_comp_version;


    fdt32_t boot_cpuid_phys;


    fdt32_t size_dt_strings;


    fdt32_t size_dt_struct;
};

struct fdt_reserve_entry {
    fdt64_t address;
    fdt64_t size;
};

struct fdt_node_header {
    fdt32_t tag;
    char name[0];
};

struct fdt_property {
    fdt32_t tag;
    fdt32_t len;
    fdt32_t nameoff;
    char data[0];
};
# 112 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/fdt.h"
int blfdt_cli_init(void);
# 95 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys.h" 1





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
# 96 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h" 1
# 34 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/ef_cfg.h" 1
# 84 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/ef_cfg.h"
extern uint32_t ENV_AREA_SIZE;
# 37 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/ef_def.h" 1
# 73 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/ef_def.h"
typedef struct _ef_env {
    char *key;
    void *value;
    size_t value_len;
} ef_env, *ef_env_t;


typedef enum {
    EF_NO_ERR,
    EF_ERASE_ERR,
    EF_READ_ERR,
    EF_WRITE_ERR,
    EF_ENV_NAME_ERR,
    EF_ENV_NAME_EXIST,
    EF_ENV_FULL,
    EF_ENV_INIT_FAILED,
    EF_ENV_ARG_ERR,
} EfErrCode;


typedef enum {
    EF_SECTOR_EMPTY,
    EF_SECTOR_USING,
    EF_SECTOR_FULL,
} EfSecrorStatus;

enum env_status {
    ENV_UNUSED,
    ENV_PRE_WRITE,
    ENV_WRITE,
    ENV_PRE_DELETE,
    ENV_DELETED,
    ENV_ERR_HDR,
    ENV_STATUS_NUM,
};
typedef enum env_status env_status_t;

struct env_node_obj {
    env_status_t status;
    
# 112 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/ef_def.h" 3 4
   _Bool 
# 112 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/ef_def.h"
        crc_is_ok;
    uint8_t name_len;
    uint32_t magic;
    uint32_t len;
    uint32_t value_len;
    char name[(64)];
    struct {
        uint32_t start;
        uint32_t value;
    } addr;
};
typedef struct env_node_obj *env_node_obj_t;
# 38 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h" 2






EfErrCode easyflash_init(void);



size_t ef_get_env_blob(const char *key, void *value_buf, size_t buf_len, size_t *saved_value_len);

# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h" 3 4
_Bool 
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h"
    ef_get_env_obj(const char *key, env_node_obj_t env);
size_t ef_read_env_value(env_node_obj_t env, uint8_t *value_buf, size_t buf_len);
EfErrCode ef_set_env_blob(const char *key, const void *value_buf, size_t buf_len);


EfErrCode ef_load_env(void);
void ef_print_env(void);

typedef 
# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h" 3 4
       _Bool 
# 57 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h"
            (*print_env_cb_t)(env_node_obj_t env, void *arg1, void *arg2);
void ef_print_env_cb(print_env_cb_t cb);

char *ef_get_env(const char *key);
EfErrCode ef_set_env(const char *key, const char *value);
EfErrCode ef_del_env(const char *key);
EfErrCode ef_save_env(void);
EfErrCode ef_env_set_default(void);
size_t ef_get_env_write_bytes(void);
EfErrCode ef_set_and_save_env(const char *key, const char *value);
EfErrCode ef_del_and_save_env(const char *key);
EfErrCode ef_prefetch_cache_env(void);
# 101 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h"
uint32_t ef_calc_crc32(uint32_t crc, const void *buf, size_t size);


EfErrCode ef_port_read(uint32_t addr, uint32_t *buf, size_t size);
EfErrCode ef_port_erase(uint32_t addr, size_t size);
EfErrCode ef_port_write(uint32_t addr, const uint32_t *buf, size_t size);
void ef_port_env_lock(void);
void ef_port_env_unlock(void);
void ef_log_debug(const char *file, const long line, const char *format, ...);
void ef_log_info(const char *format, ...);
void ef_print(const char *format, ...);

int easyflash_cli_init(void);
# 98 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h" 1





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 1
# 24 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 1
# 25 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 26 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 27 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h" 1
# 35 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h"
typedef void* BL_Timer_t;
typedef void* BL_TaskHandle_t;
typedef void* BL_Sem_t;
typedef void* BL_Mutex_t;
typedef void* BL_MessageQueue_t;
typedef void* BL_EventGroup_t;
typedef void* BL_TimeOut_t;
typedef uint32_t BL_TickType_t;
# 28 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 48 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"
struct bl_ops_funcs
{
    int _version;
    void (*_printf)(const char *fmt, ...);
    void (*_puts)(const char *c);
    void (*_assert)(const char *file, int line, const char *func, const char *expr);
    int (*_init)(void);
    uint32_t (*_enter_critical)(void);
    void (*_exit_critical)(uint32_t level);
    int (*_msleep)(long ms);
    int (*_sleep)(unsigned int seconds);
    BL_EventGroup_t (*_event_group_create)(void);
    void (*_event_group_delete)(BL_EventGroup_t event);
    uint32_t (*_event_group_send)(BL_EventGroup_t event, uint32_t bits);
    uint32_t (*_event_group_wait)(BL_EventGroup_t event,
                                  uint32_t bits_to_wait_for,
                                  int clear_on_exit,
                                  int wait_for_all_bits,
                                  uint32_t block_time_tick);
    int (*_event_register)(int type, void *cb, void *arg);
    int (*_event_notify)(int evt, int val);
    int (*_task_create)(const char *name,
                        void *entry,
                        uint32_t stack_depth,
                        void *param,
                        uint32_t prio,
                        BL_TaskHandle_t task_handle);
    void (*_task_delete)(BL_TaskHandle_t task_handle);
    BL_TaskHandle_t (*_task_get_current_task)(void);
    BL_TaskHandle_t (*_task_notify_create)(void);
    void (*_task_notify)(BL_TaskHandle_t task_handle);
    void (*_task_wait)(BL_TaskHandle_t task_handle, uint32_t tick);
    void (*_lock_gaint)(void);
    void (*_unlock_gaint)(void);
    void (*_irq_attach)(int32_t n, void *f, void *arg);
    void (*_irq_enable)(int32_t n);
    void (*_irq_disable)(int32_t n);
    void *(*_workqueue_create)(void);
    int (*_workqueue_submit_hp)(void *work, void *woker, void *argv, long tick);
    int (*_workqueue_submit_lp)(void *work, void *woker, void *argv, long tick);
    BL_Timer_t (*_timer_create)(void *func, void *argv);
    int (*_timer_delete)(BL_Timer_t timerid, uint32_t tick);
    int (*_timer_start_once)(BL_Timer_t timerid, long t_sec, long t_nsec);
    int (*_timer_start_periodic)(BL_Timer_t timerid, long t_sec, long t_nsec);
    BL_Sem_t (*_sem_create)(uint32_t init);
    void (*_sem_delete)(BL_Sem_t semphr);
    int32_t (*_sem_take)(BL_Sem_t semphr, uint32_t tick);
    int32_t (*_sem_give)(BL_Sem_t semphr);
    BL_Mutex_t (*_mutex_create)(void);
    void (*_mutex_delete)(BL_Mutex_t mutex);
    int32_t (*_mutex_lock)(BL_Mutex_t mutex);
    int32_t (*_mutex_unlock)(BL_Mutex_t mutex);
    BL_MessageQueue_t (*_queue_create)(uint32_t queue_len, uint32_t item_size);
    void (*_queue_delete)(BL_MessageQueue_t queue);
    int (*_queue_send_wait)(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t ticks, int prio);
    int (*_queue_send)(BL_MessageQueue_t queue, void *item, uint32_t len);
    int (*_queue_recv)(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t tick);
    void *(*_malloc)(unsigned int size);
    void (*_free)(void *p);
    void *(*_zalloc)(unsigned int size);
    uint64_t (*_get_time_ms)(void);
    uint32_t (*_get_tick)(void);
    void (*_log_write)(uint32_t level, const char *tag, const char *file, int line, const char *format, ...);
    int (*_task_notify_isr)(BL_TaskHandle_t task_handle);
    void (*_yield_from_isr)(int xYield);
    unsigned int (*_ms_to_tick)(unsigned int ms);
    BL_TimeOut_t (*_set_timeout)(void);
    int (*_check_timeout)(BL_TimeOut_t xTimeOut, BL_TickType_t *xTicksToWait);
};

typedef struct bl_ops_funcs bl_ops_funcs_t;

extern bl_ops_funcs_t g_bl_ops_funcs;
# 25 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_log.h" 1
# 34 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_log.h"
typedef enum _bl_os_log_leve
{
    LOG_LEVEL_ALL = 0,
    LOG_LEVEL_DEBUG,
    LOG_LEVEL_INFO,
    LOG_LEVEL_WARN,
    LOG_LEVEL_ERROR,
    LOG_LEVEL_ASSERT,
    LOG_LEVEL_NEVER,
} bl_os_log_level_t;
# 26 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_system.h" 1
# 27 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h" 2


typedef enum wifi_fw_task_id
{
    TASK_NONE = (uint8_t) -1,


    TASK_MM = 0,

    TASK_SCAN,

    TASK_SCANU,

    TASK_ME,

    TASK_SM,

    TASK_APM,

    TASK_BAM,

    TASK_RXU,

    TASK_CFG,


    TASK_LAST_EMB = TASK_CFG,


    TASK_API,
    TASK_MAX,
} ke_task_id_t;


typedef enum hw_state_tag
{

    HW_IDLE = 0,

    HW_RESERVED,

    HW_DOZE,

    HW_ACTIVE
} hw_state_tag_t;


typedef enum mm_state_tag
{

    MM_IDLE,

    MM_ACTIVE,

    MM_GOING_TO_IDLE,

    MM_HOST_BYPASSED,

    MM_STATE_MAX
} mm_state_tag_t;
# 81 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
typedef enum wifi_fw_event_id
{

    MM_RESET_REQ = (((TASK_MM) << 10)),

    MM_RESET_CFM,

    MM_START_REQ,

    MM_START_CFM,

    MM_VERSION_REQ,

    MM_VERSION_CFM,

    MM_ADD_IF_REQ,

    MM_ADD_IF_CFM,

    MM_REMOVE_IF_REQ,

    MM_REMOVE_IF_CFM,

    MM_STA_ADD_REQ,

    MM_STA_ADD_CFM,

    MM_STA_DEL_REQ,

    MM_STA_DEL_CFM,

    MM_SET_CHANNEL_REQ,

    MM_SET_CHANNEL_CFM,

    MM_SET_BEACON_INT_REQ,

    MM_SET_BEACON_INT_CFM,

    MM_SET_BASIC_RATES_REQ,

    MM_SET_BASIC_RATES_CFM,

    MM_SET_BSSID_REQ,

    MM_SET_BSSID_CFM,

    MM_SET_EDCA_REQ,

    MM_SET_EDCA_CFM,

    MM_SET_VIF_STATE_REQ,

    MM_SET_VIF_STATE_CFM,

    MM_SET_IDLE_REQ,

    MM_SET_IDLE_CFM,


    MM_PRIMARY_TBTT_IND,


    MM_SECONDARY_TBTT_IND,


    MM_DENOISE_REQ,

    MM_SET_PS_MODE_REQ,

    MM_SET_PS_MODE_CFM,

    MM_CHAN_CTXT_ADD_REQ,

    MM_CHAN_CTXT_ADD_CFM,

    MM_CHAN_CTXT_DEL_REQ,

    MM_CHAN_CTXT_DEL_CFM,

    MM_CHAN_CTXT_LINK_REQ,

    MM_CHAN_CTXT_LINK_CFM,

    MM_CHAN_CTXT_UNLINK_REQ,

    MM_CHAN_CTXT_UNLINK_CFM,

    MM_CHAN_CTXT_UPDATE_REQ,

    MM_CHAN_CTXT_UPDATE_CFM,

    MM_CHAN_CTXT_SCHED_REQ,

    MM_CHAN_CTXT_SCHED_CFM,

    MM_BCN_CHANGE_REQ,

    MM_BCN_CHANGE_CFM,

    MM_TIM_UPDATE_REQ,

    MM_TIM_UPDATE_CFM,

    MM_CONNECTION_LOSS_IND,

    MM_CHANNEL_SWITCH_IND,

    MM_CHANNEL_PRE_SWITCH_IND,

    MM_REMAIN_ON_CHANNEL_REQ,

    MM_REMAIN_ON_CHANNEL_CFM,

    MM_REMAIN_ON_CHANNEL_EXP_IND,

    MM_PS_CHANGE_IND,

    MM_TRAFFIC_REQ_IND,

    MM_SET_PS_OPTIONS_REQ,

    MM_SET_PS_OPTIONS_CFM,

    MM_P2P_VIF_PS_CHANGE_IND,

    MM_CSA_COUNTER_IND,

    MM_CHANNEL_SURVEY_IND,

    MM_BFMER_ENABLE_REQ,

    MM_SET_P2P_NOA_REQ,

    MM_SET_P2P_OPPPS_REQ,

    MM_SET_P2P_NOA_CFM,

    MM_SET_P2P_OPPPS_CFM,

    MM_P2P_NOA_UPD_IND,

    MM_RSSI_STATUS_IND,

    MM_CSA_FINISH_IND,

    MM_CSA_TRAFFIC_IND,

    MM_MU_GROUP_UPDATE_REQ,

    MM_MU_GROUP_UPDATE_CFM,

    MM_MONITOR_REQ,
    MM_MONITOR_CFM,

    MM_MONITOR_CHANNEL_REQ,
    MM_MONITOR_CHANNEL_CFM,





    MM_FORCE_IDLE_REQ,

    MM_SCAN_CHANNEL_START_IND,

    MM_SCAN_CHANNEL_END_EARLY,

    MM_SCAN_CHANNEL_END_IND,


    MM_MAX,


    CFG_START_REQ = (((TASK_CFG) << 10)),
    CFG_START_CFM,
    CFG_MAX,



    SCAN_START_REQ = (((TASK_SCAN) << 10)),

    SCAN_START_CFM,

    SCAN_DONE_IND,

    SCAN_CANCEL_REQ,

    SCAN_CANCEL_CFM,


    SCAN_ABORT_REQ,
    SCAN_ABORT_CFM,




    SCAN_TIMER,


    SCAN_MAX,


    APM_START_REQ = (((TASK_APM) << 10)),

    APM_START_CFM,

    APM_STOP_REQ,

    APM_STOP_CFM,

    APM_STA_ADD_IND,

    APM_STA_DEL_IND,

    APM_STA_CONNECT_TIMEOUT_IND,

    APM_STA_DEL_REQ,

    APM_STA_DEL_CFM,

    APM_CONF_MAX_STA_REQ,

    APM_CONF_MAX_STA_CFM,

    APM_CHAN_SWITCH_REQ,

    APM_CHAN_SWITCH_CFM,

    APM_MAX,


    BAM_ADD_BA_RSP_TIMEOUT_IND = (((TASK_BAM) << 10)),

    BAM_INACTIVITY_TIMEOUT_IND,


    ME_CONFIG_REQ = (((TASK_ME) << 10)),

    ME_CONFIG_CFM,

    ME_CHAN_CONFIG_REQ,

    ME_CHAN_CONFIG_CFM,

    ME_TKIP_MIC_FAILURE_IND,

    ME_STA_ADD_REQ,

    ME_STA_ADD_CFM,

    ME_STA_DEL_REQ,

    ME_STA_DEL_CFM,

    ME_TX_CREDITS_UPDATE_IND,

    ME_TRAFFIC_IND_REQ,

    ME_TRAFFIC_IND_CFM,

    ME_RC_SET_RATE_REQ,





    ME_SET_ACTIVE_REQ,

    ME_SET_ACTIVE_CFM,

    ME_SET_PS_DISABLE_REQ,

    ME_SET_PS_DISABLE_CFM,

    ME_MAX,


    RXU_MGT_IND = (((TASK_RXU) << 10)),

    RXU_NULL_DATA,


    SCANU_START_REQ = (((TASK_SCANU) << 10)),

    SCANU_START_CFM,

    SCANU_JOIN_REQ,

    SCANU_JOIN_CFM,

    SCANU_RESULT_IND,

    SCANU_RAW_SEND_REQ,

    SCANU_RAW_SEND_CFM,


    SCANU_MAX,


    SM_CONNECT_REQ = (((TASK_SM) << 10)),

    SM_CONNECT_CFM,

    SM_CONNECT_IND,

    SM_DISCONNECT_REQ,

    SM_DISCONNECT_CFM,

    SM_DISCONNECT_IND,

    SM_RSP_TIMEOUT_IND,

    SM_CONNECT_ABORT_REQ,

    SM_CONNECT_ABORT_CFM,

    SM_SA_QUERY_TIMEOUT_IND,

    SM_MAX,
} ke_msg_id_t;
# 454 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
void bl60x_fw_xtal_capcode_set(uint8_t cap_in, uint8_t cap_out, uint8_t enable, uint8_t cap_in_max, uint8_t cap_out_max);
void bl60x_fw_xtal_capcode_update(uint8_t cap_in, uint8_t cap_out);
void bl60x_fw_xtal_capcode_restore(void);
void bl60x_fw_xtal_capcode_autofit(void);
void bl60x_fw_xtal_capcode_get(uint8_t *cap_in, uint8_t *cap_out);

int bl60x_fw_password_hash(char *password, char *ssid, int ssidlength, char *output);
void bl60x_fw_rf_table_set(uint32_t* channel_div_table_in, uint16_t* channel_cnt_table_in,
                                                uint16_t lo_fcal_div);

void bl60x_fw_dump_data(void);
void bl60x_fw_dump_statistic(int forced);

int bl60x_check_mac_status(int *is_ok);

enum {

    API_AC_BK = 0,

    API_AC_BE,

    API_AC_VI,

    API_AC_VO,

    API_AC_MAX
};

int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop);


void wifi_main(void *param);

void bl_tpc_update_power_table(int8_t power_table_config[38]);
void bl_tpc_update_power_table_rate(int8_t power_table[24]);
void bl_tpc_update_power_table_channel_offset(int8_t power_table[14]);
void bl_tpc_update_power_rate_11b(int8_t power_rate_table[4]);
void bl_tpc_update_power_rate_11g(int8_t power_rate_table[8]);
void bl_tpc_update_power_rate_11n(int8_t power_rate_table[8]);
void bl_tpc_power_table_get(int8_t power_table_config[38]);

void phy_cli_register(void);



enum task_mm_cfg {
    TASK_MM_CFG_KEEP_ALIVE_STATUS_ENABLED,
    TASK_MM_CFG_KEEP_ALIVE_TIME_LAST_RECEIVED,
    TASK_MM_CFG_KEEP_ALIVE_PACKET_COUNTER,
};

enum task_sm_cfg {
    TASK_SM_CFG_AUTH_ASSOC_RETRY_LIMIT,
};

enum task_scan_cfg {
    TASK_SCAN_CFG_DURATION_SCAN_PASSIVE,
    TASK_SCAN_CFG_DURATION_SCAN_ACTIVE,
    TASK_SCAN_CFG_DURATION_SCAN_JOIN_ACTIVE,
};

typedef enum{

    SM_CONNECTION_DATA_TLV_ID_VERSION,

    SM_CONNECTION_DATA_TLV_ID_STATUS_CODE,
    SM_CONNECTION_DATA_TLV_ID_DHCPSTATUS,

    SM_CONNECTION_DATA_TLV_ID_AUTH_1,
    SM_CONNECTION_DATA_TLV_ID_AUTH_2,
    SM_CONNECTION_DATA_TLV_ID_AUTH_3,
    SM_CONNECTION_DATA_TLV_ID_AUTH_4,
    SM_CONNECTION_DATA_TLV_ID_ASSOC_REQ,
    SM_CONNECTION_DATA_TLV_ID_ASSOC_RSP,
    SM_CONNECTION_DATA_TLV_ID_4WAY_1,
    SM_CONNECTION_DATA_TLV_ID_4WAY_2,
    SM_CONNECTION_DATA_TLV_ID_4WAY_3,
    SM_CONNECTION_DATA_TLV_ID_4WAY_4,
    SM_CONNECTION_DATA_TLV_ID_2WAY_1,
    SM_CONNECTION_DATA_TLV_ID_2WAY_2,
    SM_CONNECTION_DATA_TLV_ID_DEAUTH,

    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_1,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_2,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_3,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_4,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_UNVALID,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_ASSOC_REQ,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_ASSOC_RSP,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_DEAUTH_FROM_REMOTE,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_DEASSOC_FROM_REMOTE,
    SM_CONNECTION_DATA_TLV_ID_RESERVED,
} sm_connection_data_tlv_id_t;


struct sm_tlv_list_hdr
{
    struct sm_tlv_list_hdr *next;
};


struct sm_tlv_list
{
    struct sm_tlv_list_hdr *first;
    struct sm_tlv_list_hdr *last;
};





struct sm_connect_tlv_desc {
    struct sm_tlv_list_hdr list_hdr;
    sm_connection_data_tlv_id_t id;
    uint16_t len;
    uint8_t data[0];
};
# 99 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_log.h" 1
# 56 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_log.h"
typedef enum LOG_BUF_OUT_DATA_TYPE {
    LOG_BUF_OUT_DATA_TYPE_HEX,
    LOG_BUF_OUT_DATA_TYPE_INT8,
    LOG_BUF_OUT_DATA_TYPE_UNT8,
} LOG_BUF_OUT_DATA_TYPE_T;
# 127 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_log.h"
int log_buf_out(const char *file, int line, const void *inbuf, int len, LOG_BUF_OUT_DATA_TYPE_T type);

void bl_printk(const char *format, ...);
# 100 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h" 1
# 54 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h" 1
# 55 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h" 2
# 148 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int checklen);

static inline void *fdt_offset_ptr_w(void *fdt, int offset, int checklen)
{
    return (void *)(uintptr_t)fdt_offset_ptr(fdt, offset, checklen);
}

uint32_t fdt_next_tag(const void *fdt, int offset, int *nextoffset);
# 164 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
static inline uint32_t fdt32_ld(const fdt32_t *p)
{
    const uint8_t *bp = (const uint8_t *)p;

    return ((uint32_t)bp[0] << 24)
        | ((uint32_t)bp[1] << 16)
        | ((uint32_t)bp[2] << 8)
        | bp[3];
}

static inline uint64_t fdt64_ld(const fdt64_t *p)
{
    const uint8_t *bp = (const uint8_t *)p;

    return ((uint64_t)bp[0] << 56)
        | ((uint64_t)bp[1] << 48)
        | ((uint64_t)bp[2] << 40)
        | ((uint64_t)bp[3] << 32)
        | ((uint64_t)bp[4] << 24)
        | ((uint64_t)bp[5] << 16)
        | ((uint64_t)bp[6] << 8)
        | bp[7];
}





int fdt_next_node(const void *fdt, int offset, int *depth);
# 201 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_first_subnode(const void *fdt, int offset);
# 214 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_next_subnode(const void *fdt, int offset);
# 266 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
static inline void fdt_set_magic(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->magic = cpu_to_fdt32(val); };
static inline void fdt_set_totalsize(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->totalsize = cpu_to_fdt32(val); };
static inline void fdt_set_off_dt_struct(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->off_dt_struct = cpu_to_fdt32(val); };
static inline void fdt_set_off_dt_strings(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->off_dt_strings = cpu_to_fdt32(val); };
static inline void fdt_set_off_mem_rsvmap(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->off_mem_rsvmap = cpu_to_fdt32(val); };
static inline void fdt_set_version(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->version = cpu_to_fdt32(val); };
static inline void fdt_set_last_comp_version(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->last_comp_version = cpu_to_fdt32(val); };
static inline void fdt_set_boot_cpuid_phys(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->boot_cpuid_phys = cpu_to_fdt32(val); };
static inline void fdt_set_size_dt_strings(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->size_dt_strings = cpu_to_fdt32(val); };
static inline void fdt_set_size_dt_struct(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->size_dt_struct = cpu_to_fdt32(val); };






size_t fdt_header_size_(uint32_t version);
static inline size_t fdt_header_size(const void *fdt)
{
    return fdt_header_size_(((fdt32_ld(&((const struct fdt_header *)(fdt))->version))));
}
# 305 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_check_header(const void *fdt);
# 326 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_move(const void *fdt, void *buf, int bufsize);





int fdt_check_full(const void *fdt, size_t bufsize);
# 348 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const char *fdt_get_string(const void *fdt, int stroffset, int *lenp);
# 362 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const char *fdt_string(const void *fdt, int stroffset);
# 377 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
uint32_t fdt_get_max_phandle(const void *fdt);
# 390 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_num_mem_rsv(const void *fdt);
# 407 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_get_mem_rsv(const void *fdt, int n, uint64_t *address, uint64_t *size);
# 422 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_subnode_offset_namelen(const void *fdt, int parentoffset,
                   const char *name, int namelen);
# 449 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_subnode_offset(const void *fdt, int parentoffset, const char *name);
# 461 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_path_offset_namelen(const void *fdt, const char *path, int namelen);
# 487 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_path_offset(const void *fdt, const char *path);
# 512 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const char *fdt_get_name(const void *fdt, int nodeoffset, int *lenp);
# 532 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_first_property_offset(const void *fdt, int nodeoffset);
# 553 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_next_property_offset(const void *fdt, int offset);
# 609 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
                              int offset,
                              int *lenp);
# 625 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const struct fdt_property *fdt_get_property_namelen(const void *fdt,
                            int nodeoffset,
                            const char *name,
                            int namelen, int *lenp);
# 659 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const struct fdt_property *fdt_get_property(const void *fdt, int nodeoffset,
                        const char *name, int *lenp);
static inline struct fdt_property *fdt_get_property_w(void *fdt, int nodeoffset,
                              const char *name,
                              int *lenp)
{
    return (struct fdt_property *)(uintptr_t)
        fdt_get_property(fdt, nodeoffset, name, lenp);
}
# 701 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const void *fdt_getprop_by_offset(const void *fdt, int offset,
                  const char **namep, int *lenp);
# 717 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const void *fdt_getprop_namelen(const void *fdt, int nodeoffset,
                const char *name, int namelen, int *lenp);
static inline void *fdt_getprop_namelen_w(void *fdt, int nodeoffset,
                      const char *name, int namelen,
                      int *lenp)
{
    return (void *)(uintptr_t)fdt_getprop_namelen(fdt, nodeoffset, name,
                              namelen, lenp);
}
# 756 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const void *fdt_getprop(const void *fdt, int nodeoffset,
            const char *name, int *lenp);
static inline void *fdt_getprop_w(void *fdt, int nodeoffset,
                  const char *name, int *lenp)
{
    return (void *)(uintptr_t)fdt_getprop(fdt, nodeoffset, name, lenp);
}
# 776 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
uint32_t fdt_get_phandle(const void *fdt, int nodeoffset);
# 788 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const char *fdt_get_alias_namelen(const void *fdt,
                  const char *name, int namelen);
# 804 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const char *fdt_get_alias(const void *fdt, const char *name);
# 831 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_get_path(const void *fdt, int nodeoffset, char *buf, int buflen);
# 863 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_supernode_atdepth_offset(const void *fdt, int nodeoffset,
                 int supernodedepth, int *nodedepth);
# 885 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_node_depth(const void *fdt, int nodeoffset);
# 908 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_parent_offset(const void *fdt, int nodeoffset);
# 948 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_node_offset_by_prop_value(const void *fdt, int startoffset,
                  const char *propname,
                  const void *propval, int proplen);
# 971 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_node_offset_by_phandle(const void *fdt, uint32_t phandle);
# 995 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_node_check_compatible(const void *fdt, int nodeoffset,
                  const char *compatible);
# 1032 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_node_offset_by_compatible(const void *fdt, int startoffset,
                  const char *compatible);
# 1047 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_stringlist_contains(const char *strlist, int listlen, const char *str);
# 1059 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_stringlist_count(const void *fdt, int nodeoffset, const char *property);
# 1080 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_stringlist_search(const void *fdt, int nodeoffset, const char *property,
              const char *string);
# 1107 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
const char *fdt_stringlist_get(const void *fdt, int nodeoffset,
                   const char *property, int index,
                   int *lenp);
# 1144 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_address_cells(const void *fdt, int nodeoffset);
# 1165 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_size_cells(const void *fdt, int nodeoffset);
# 1189 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_setprop_inplace_namelen_partial(void *fdt, int nodeoffset,
                    const char *name, int namelen,
                    uint32_t idx, const void *val,
                    int len);
# 1224 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_setprop_inplace(void *fdt, int nodeoffset, const char *name,
            const void *val, int len);
# 1256 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_setprop_inplace_u32(void *fdt, int nodeoffset,
                      const char *name, uint32_t val)
{
    fdt32_t tmp = cpu_to_fdt32(val);
    return fdt_setprop_inplace(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}
# 1291 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_setprop_inplace_u64(void *fdt, int nodeoffset,
                      const char *name, uint64_t val)
{
    fdt64_t tmp = cpu_to_fdt64(val);
    return fdt_setprop_inplace(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}






static inline int fdt_setprop_inplace_cell(void *fdt, int nodeoffset,
                       const char *name, uint32_t val)
{
    return fdt_setprop_inplace_u32(fdt, nodeoffset, name, val);
}
# 1333 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_nop_property(void *fdt, int nodeoffset, const char *name);
# 1357 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_nop_node(void *fdt, int nodeoffset);





int fdt_create(void *buf, int bufsize);
int fdt_resize(void *fdt, void *buf, int bufsize);
int fdt_add_reservemap_entry(void *fdt, uint64_t addr, uint64_t size);
int fdt_finish_reservemap(void *fdt);
int fdt_begin_node(void *fdt, const char *name);
int fdt_property(void *fdt, const char *name, const void *val, int len);
static inline int fdt_property_u32(void *fdt, const char *name, uint32_t val)
{
    fdt32_t tmp = cpu_to_fdt32(val);
    return fdt_property(fdt, name, &tmp, sizeof(tmp));
}
static inline int fdt_property_u64(void *fdt, const char *name, uint64_t val)
{
    fdt64_t tmp = cpu_to_fdt64(val);
    return fdt_property(fdt, name, &tmp, sizeof(tmp));
}


static inline int fdt_property_cell(void *fdt, const char *name, uint32_t val)
{
    return fdt_property_u32(fdt, name, val);
}
# 1400 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_property_placeholder(void *fdt, const char *name, int len, void **valp);



int fdt_end_node(void *fdt);
int fdt_finish(void *fdt);





int fdt_create_empty_tree(void *buf, int bufsize);
int fdt_open_into(const void *fdt, void *buf, int bufsize);
int fdt_pack(void *fdt);
# 1437 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_add_mem_rsv(void *fdt, uint64_t address, uint64_t size);
# 1461 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_del_mem_rsv(void *fdt, int n);
# 1487 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_set_name(void *fdt, int nodeoffset, const char *name);
# 1517 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_setprop(void *fdt, int nodeoffset, const char *name,
        const void *val, int len);
# 1548 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_setprop_placeholder(void *fdt, int nodeoffset, const char *name,
                int len, void **prop_data);
# 1579 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_setprop_u32(void *fdt, int nodeoffset, const char *name,
                  uint32_t val)
{
    fdt32_t tmp = cpu_to_fdt32(val);
    return fdt_setprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}
# 1614 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_setprop_u64(void *fdt, int nodeoffset, const char *name,
                  uint64_t val)
{
    fdt64_t tmp = cpu_to_fdt64(val);
    return fdt_setprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}






static inline int fdt_setprop_cell(void *fdt, int nodeoffset, const char *name,
                   uint32_t val)
{
    return fdt_setprop_u32(fdt, nodeoffset, name, val);
}
# 1720 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_appendprop(void *fdt, int nodeoffset, const char *name,
           const void *val, int len);
# 1751 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_appendprop_u32(void *fdt, int nodeoffset,
                     const char *name, uint32_t val)
{
    fdt32_t tmp = cpu_to_fdt32(val);
    return fdt_appendprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}
# 1786 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_appendprop_u64(void *fdt, int nodeoffset,
                     const char *name, uint64_t val)
{
    fdt64_t tmp = cpu_to_fdt64(val);
    return fdt_appendprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}






static inline int fdt_appendprop_cell(void *fdt, int nodeoffset,
                      const char *name, uint32_t val)
{
    return fdt_appendprop_u32(fdt, nodeoffset, name, val);
}
# 1856 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_delprop(void *fdt, int nodeoffset, const char *name);
# 1871 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_add_subnode_namelen(void *fdt, int parentoffset,
                const char *name, int namelen);
# 1906 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_add_subnode(void *fdt, int parentoffset, const char *name);
# 1929 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_del_node(void *fdt, int nodeoffset);
# 1960 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
int fdt_overlay_apply(void *fdt, void *fdto);





const char *fdt_strerror(int errval);
# 101 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog/blog.h" 1
# 43 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog/blog.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog/blog_type.h" 1
# 34 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog/blog_type.h"
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
# 44 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog/blog.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog/blog_cfg.h" 1
# 45 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog/blog.h" 2
# 340 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog/blog.h"
    void blog_init(void);

    void blog_hexdump_out(const char* name, uint8_t width, uint8_t* buf, uint16_t size);

    int blog_set_level_log_component(char* level, char* component_name);
# 102 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h" 1
# 23 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h" 1
# 33 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
typedef void (*hosal_dma_irq_t)(void *p_arg, uint32_t flag);




struct hosal_dma_chan {
    uint8_t used;
    hosal_dma_irq_t callback;
    void *p_arg;
};




typedef struct hosal_dma_dev {
    int max_chans;
    struct hosal_dma_chan *used_chan;
    void *priv;
} hosal_dma_dev_t;




typedef int hosal_dma_chan_t;






int hosal_dma_init(void);
# 72 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
hosal_dma_chan_t hosal_dma_chan_request(int flag);
# 81 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_release(hosal_dma_chan_t chan);
# 90 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_start(hosal_dma_chan_t chan);
# 99 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_stop(hosal_dma_chan_t chan);
# 110 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_irq_callback_set(hosal_dma_chan_t chan, hosal_dma_irq_t pfn, void *p_arg);
# 119 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_finalize(void);
# 24 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h" 2
# 62 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
typedef int (*hosal_uart_callback_t)(void *p_arg);




typedef enum {
    HOSAL_DATA_WIDTH_5BIT,
    HOSAL_DATA_WIDTH_6BIT,
    HOSAL_DATA_WIDTH_7BIT,
    HOSAL_DATA_WIDTH_8BIT,
    HOSAL_DATA_WIDTH_9BIT
} hosal_uart_data_width_t;




typedef enum {
    HOSAL_STOP_BITS_1,
    HOSAL_STOP_BITS_1_5,
    HOSAL_STOP_BITS_2
} hosal_uart_stop_bits_t;




typedef enum {
    HOSAL_FLOW_CONTROL_DISABLED,
    HOSAL_FLOW_CONTROL_CTS,
    HOSAL_FLOW_CONTROL_RTS,
    HOSAL_FLOW_CONTROL_CTS_RTS
} hosal_uart_flow_control_t;




typedef enum {
    HOSAL_NO_PARITY,
    HOSAL_ODD_PARITY,
    HOSAL_EVEN_PARITY
} hosal_uart_parity_t;




typedef enum {
    HOSAL_UART_MODE_POLL,
    HOSAL_UART_MODE_INT_TX,
    HOSAL_UART_MODE_INT_RX,
    HOSAL_UART_MODE_INT,
} hosal_uart_mode_t;




typedef struct {





    uint8_t *dma_buf;

    uint32_t dma_buf_size;
} hosal_uart_dma_cfg_t;




typedef struct {
    uint8_t uart_id;
    uint8_t tx_pin;
    uint8_t rx_pin;
    uint8_t cts_pin;
    uint8_t rts_pin;
    uint32_t baud_rate;
    hosal_uart_data_width_t data_width;
    hosal_uart_parity_t parity;
    hosal_uart_stop_bits_t stop_bits;
    hosal_uart_flow_control_t flow_control;
    hosal_uart_mode_t mode;
} hosal_uart_config_t;




typedef struct {
    uint8_t port;
    hosal_uart_config_t config;
    hosal_uart_callback_t tx_cb;
    void *p_txarg;
    hosal_uart_callback_t rx_cb;
    void *p_rxarg;
    hosal_uart_callback_t txdma_cb;
    void *p_txdma_arg;
    hosal_uart_callback_t rxdma_cb;
    void *p_rxdma_arg;
    hosal_dma_chan_t dma_tx_chan;
    hosal_dma_chan_t dma_rx_chan;
    void *priv;
} hosal_uart_dev_t;
# 221 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
int hosal_uart_abr_get(hosal_uart_dev_t *uart, uint8_t mode);
# 232 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
int hosal_uart_init(hosal_uart_dev_t *uart);
int hosal_uart_init_only_tx(hosal_uart_dev_t *uart);
# 246 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
int hosal_uart_send(hosal_uart_dev_t *uart, const void *txbuf, uint32_t size);
# 259 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
int hosal_uart_receive(hosal_uart_dev_t *uart, void *data, uint32_t expect_size);
# 293 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
int hosal_uart_ioctl (hosal_uart_dev_t *uart, int ctl, void *p_arg);
# 311 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
int hosal_uart_callback_set (hosal_uart_dev_t *uart,
                           int callback_type,
                           hosal_uart_callback_t pfn_callback,
                           void *arg);
# 325 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
int hosal_uart_finalize(hosal_uart_dev_t *uart);
# 104 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_master.h" 1







# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 1
# 22 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/printk.h" 1
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/printk.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/printk.h" 2



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 1



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h" 1
# 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
typedef signed char s8_t;
typedef signed short s16_t;
typedef int32_t s32_t;
typedef signed long long s64_t;

typedef unsigned char u8_t;
typedef unsigned short u16_t;
typedef uint32_t u32_t;
typedef unsigned long long u64_t;
# 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 1
# 20 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 21 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 2







struct _snode {
 struct _snode *next;
};

typedef struct _snode sys_snode_t;

struct _slist {
 sys_snode_t *head;
 sys_snode_t *tail;
};

typedef struct _slist sys_slist_t;
# 192 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_init(sys_slist_t *list)
{
 list->head = 
# 194 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 194 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
 list->tail = 
# 195 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 195 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
}
# 207 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline 
# 207 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             _Bool 
# 207 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                  sys_slist_is_empty(sys_slist_t *list)
{
 return (!list->head);
}
# 219 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_head(sys_slist_t *list)
{
 return list->head;
}
# 231 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_tail(sys_slist_t *list)
{
 return list->tail;
}
# 245 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_next_no_check(sys_snode_t *node)
{
 return node->next;
}
# 257 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_next(sys_snode_t *node)
{
 return node ? sys_slist_peek_next_no_check(node) : 
# 259 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                                                   ((void *)0)
# 259 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                                                       ;
}
# 270 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_prepend(sys_slist_t *list,
         sys_snode_t *node)
{
 node->next = list->head;
 list->head = node;

 if (!list->tail) {
  list->tail = list->head;
 }
}
# 289 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_append(sys_slist_t *list,
        sys_snode_t *node)
{
 node->next = 
# 292 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 292 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;

 if (!list->tail) {
  list->tail = node;
  list->head = node;
 } else {
  list->tail->next = node;
  list->tail = node;
 }
}
# 314 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
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
# 335 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_merge_slist(sys_slist_t *list,
      sys_slist_t *list_to_append)
{
 sys_slist_append_list(list, list_to_append->head,
        list_to_append->tail);
 sys_slist_init(list_to_append);
}
# 352 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
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
# 376 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_get_not_empty(sys_slist_t *list)
{
 sys_snode_t *node = list->head;

 list->head = node->next;
 if (list->tail == node) {
  list->tail = list->head;
 }

 return node;
}
# 397 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_get(sys_slist_t *list)
{
 return sys_slist_is_empty(list) ? 
# 399 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                                  ((void *)0) 
# 399 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                                       : sys_slist_get_not_empty(list);
}
# 412 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
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
# 432 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 432 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
}
# 445 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline 
# 445 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             _Bool 
# 445 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                  sys_slist_find_and_remove(sys_slist_t *list,
          sys_snode_t *node)
{
 sys_snode_t *prev = 
# 448 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                    ((void *)0)
# 448 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
                        ;
 sys_snode_t *test;

 for (test = sys_slist_peek_head(list); test; test = sys_slist_peek_next(test)) {
  if (test == node) {
   sys_slist_remove(list, prev, node);
   return 
# 454 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
         1
# 454 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
             ;
  }

  prev = test;
 }

 return 
# 460 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
       0
# 460 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
            ;
}
# 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 1
# 23 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 24 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 2





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
# 188 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_init(sys_dlist_t *list)
{
 list->head = (sys_dnode_t *)list;
 list->tail = (sys_dnode_t *)list;
}
# 205 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_head(sys_dlist_t *list, sys_dnode_t *node)
{
 return list->head == node;
}
# 219 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_tail(sys_dlist_t *list, sys_dnode_t *node)
{
 return list->tail == node;
}
# 232 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_empty(sys_dlist_t *list)
{
 return list->head == list;
}
# 247 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_has_multiple_nodes(sys_dlist_t *list)
{
 return list->head != list->tail;
}
# 260 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_head(sys_dlist_t *list)
{
 return sys_dlist_is_empty(list) ? 
# 262 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                  ((void *)0) 
# 262 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                       : list->head;
}
# 275 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_head_not_empty(sys_dlist_t *list)
{
 return list->head;
}
# 291 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_next_no_check(sys_dlist_t *list,
       sys_dnode_t *node)
{
 return (node == list->tail) ? 
# 294 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                              ((void *)0) 
# 294 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                   : node->next;
}
# 307 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_next(sys_dlist_t *list,
            sys_dnode_t *node)
{
 return node ? sys_dlist_peek_next_no_check(list, node) : 
# 310 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                                         ((void *)0)
# 310 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                                             ;
}
# 321 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_tail(sys_dlist_t *list)
{
 return sys_dlist_is_empty(list) ? 
# 323 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                  ((void *)0) 
# 323 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                       : list->tail;
}
# 337 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_append(sys_dlist_t *list, sys_dnode_t *node)
{
 node->next = list;
 node->prev = list->tail;

 list->tail->next = node;
 list->tail = node;
}
# 357 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_prepend(sys_dlist_t *list, sys_dnode_t *node)
{
 node->next = list->head;
 node->prev = list;

 list->head->prev = node;
 list->head = node;
}
# 379 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
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
# 405 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
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
# 435 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
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
# 461 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_remove(sys_dnode_t *node)
{
 node->prev->next = node->next;
 node->next->prev = node->prev;
}
# 477 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_get(sys_dlist_t *list)
{
 sys_dnode_t *node;

 if (sys_dlist_is_empty(list)) {
  return 
# 482 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
        ((void *)0)
# 482 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
            ;
 }

 node = list->head;
 sys_dlist_remove(node);
 return node;
}
# 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 1





# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/config.h" 1



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/config.h" 2
# 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2

# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 1 3
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3

# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h" 1
# 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 1
# 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 2







# 21 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
typedef struct {
    void *hdl;
} bl_hdl_t;

typedef bl_hdl_t _queue_t;
typedef bl_hdl_t _sem_t;
typedef uint32_t _stack_element_t;
typedef bl_hdl_t _mutex_t;
typedef bl_hdl_t bl_timer_t;
typedef uint32_t _task_t;
# 52 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
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
# 98 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
struct k_fifo {
        struct k_queue _queue;
};
# 129 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
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
# 214 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
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


# 241 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h" 3 4
_Bool 
# 241 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
    k_is_current_thread(struct k_thread *thread);




int k_yield();





void k_sleep(s32_t duration);




unsigned int irq_lock();




void irq_unlock(unsigned int key);

int k_is_in_isr(void);
# 273 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
long long k_now_ms(void);
void k_get_random_byte_array(uint8_t *buf, size_t len);
void *k_malloc(size_t size);
void k_free(void *buf);
# 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h" 1


# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h" 1
# 18 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
typedef int atomic_t;
typedef atomic_t atomic_val_t;
# 49 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern int atomic_cas(atomic_t *target, atomic_val_t old_value,
        atomic_val_t new_value);
# 70 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_add(atomic_t *target, atomic_val_t value);
# 90 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_sub(atomic_t *target, atomic_val_t value);
# 109 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_inc(atomic_t *target);
# 128 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_dec(atomic_t *target);
# 147 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_get(const atomic_t *target);
# 172 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_set(atomic_t *target, atomic_val_t value);
# 192 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_clear(atomic_t *target);
# 213 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_or(atomic_t *target, atomic_val_t value);
# 234 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_xor(atomic_t *target, atomic_val_t value);
# 255 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_and(atomic_t *target, atomic_val_t value);
# 276 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_nand(atomic_t *target, atomic_val_t value);
# 329 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_bit(const atomic_t *target, int bit)
{
 atomic_val_t val = atomic_get(((target) + ((bit) / (sizeof(atomic_val_t) * 8))));

 return (1 & (val >> (bit & ((sizeof(atomic_val_t) * 8) - 1))));
}
# 347 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_and_clear_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
 atomic_val_t old;

 old = atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);

 return (old & mask) != 0;
}
# 368 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_and_set_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
 atomic_val_t old;

 old = atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);

 return (old & mask) != 0;
}
# 389 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_clear_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);
}
# 407 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_set_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);
}
# 426 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_set_bit_to(atomic_t *target, int bit, 
# 426 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h" 3 4
                                                               _Bool 
# 426 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
                                                                    val)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 if (val) {
  (void)atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);
 } else {
  (void)atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);
 }
}
# 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 1
# 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h" 2
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 54 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
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
# 89 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
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
# 136 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
extern int k_poll_signal_raise(struct k_poll_signal *signal, int result);



extern int k_poll(struct k_poll_event *events, int num_events, s32_t timeout);

extern void k_poll_event_init(struct k_poll_event *event, u32_t type, int mode, void *obj);


enum k_poll_modes {

        K_POLL_MODE_NOTIFY_ONLY = 0,

        K_POLL_NUM_MODES
};
# 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/printk.h" 2
# 23 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h" 1
# 91 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/util.h"
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
# 24 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 1
# 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 2



# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/../../port/include/config.h" 1
# 18 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 2
# 96 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_simple {

 u8_t *data;


 u16_t len;


 u16_t size;




 u8_t *__buf;
};
# 143 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_init(struct net_buf_simple *buf,
           size_t reserve_head)
{
 if (!buf->__buf) {
  buf->__buf = (u8_t *)buf + sizeof(*buf);
 }

 buf->data = buf->__buf + reserve_head;
 buf->len = 0;
}
# 163 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_init_with_data(struct net_buf_simple *buf,
       void *data, size_t size);
# 174 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_reset(struct net_buf_simple *buf)
{
 buf->len = 0;
 buf->data = buf->__buf;
}
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_clone(const struct net_buf_simple *original,
     struct net_buf_simple *clone);
# 204 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_add(struct net_buf_simple *buf, size_t len);
# 218 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_add_mem(struct net_buf_simple *buf, const void *mem,
        size_t len);
# 232 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u8_t *net_buf_simple_add_u8(struct net_buf_simple *buf, u8_t val);
# 244 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le16(struct net_buf_simple *buf, u16_t val);
# 256 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be16(struct net_buf_simple *buf, u16_t val);
# 268 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le24(struct net_buf_simple *buf, uint32_t val);
# 280 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be24(struct net_buf_simple *buf, uint32_t val);
# 292 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le32(struct net_buf_simple *buf, u32_t val);
# 304 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be32(struct net_buf_simple *buf, u32_t val);
# 317 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_push(struct net_buf_simple *buf, size_t len);
# 328 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_le16(struct net_buf_simple *buf, u16_t val);
# 339 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_be16(struct net_buf_simple *buf, u16_t val);
# 349 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_u8(struct net_buf_simple *buf, u8_t val);
# 360 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_le24(struct net_buf_simple *buf, uint32_t val);
# 371 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_be24(struct net_buf_simple *buf, uint32_t val);
# 384 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_pull(struct net_buf_simple *buf, size_t len);
# 397 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_pull_mem(struct net_buf_simple *buf, size_t len);
# 409 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u8_t net_buf_simple_pull_u8(struct net_buf_simple *buf);
# 421 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u16_t net_buf_simple_pull_le16(struct net_buf_simple *buf);
# 433 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u16_t net_buf_simple_pull_be16(struct net_buf_simple *buf);
# 445 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u32_t net_buf_simple_pull_le32(struct net_buf_simple *buf);
# 457 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
u32_t net_buf_simple_pull_be32(struct net_buf_simple *buf);
# 468 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline u8_t *net_buf_simple_tail(struct net_buf_simple *buf)
{
 return buf->data + buf->len;
}
# 482 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_simple_headroom(struct net_buf_simple *buf);
# 493 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_simple_tailroom(struct net_buf_simple *buf);
# 502 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_simple_state {

 u16_t offset;

 u16_t len;
};
# 517 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_save(struct net_buf_simple *buf,
           struct net_buf_simple_state *state)
{
 state->offset = net_buf_simple_headroom(buf);
 state->len = buf->len;
}
# 533 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_restore(struct net_buf_simple *buf,
       struct net_buf_simple_state *state)
{
 buf->data = buf->__buf + state->offset;
 buf->len = state->len;
}
# 564 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
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


 u8_t user_data[4] 
# 608 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 3
                                              __attribute__((__aligned__(
# 608 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
                                              sizeof(int)
# 608 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 3
                                              )))
# 608 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
                                                             ;
};





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





 const u16_t buf_count;


 u16_t uninit_count;
# 660 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
 void (*const destroy)(struct net_buf *buf);


 const struct net_buf_data_alloc *alloc;


 struct net_buf * const __bufs;

};
# 694 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
extern const struct net_buf_data_alloc net_buf_heap_alloc;
# 728 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_pool_fixed {
 size_t data_size;
 u8_t *data_pool;
};

extern const struct net_buf_data_cb net_buf_fixed_cb;
# 780 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
extern const struct net_buf_data_cb net_buf_var_cb;
# 858 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_pool *net_buf_pool_get(int id);
# 872 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
int net_buf_id(struct net_buf *buf);
# 897 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_fixed(struct net_buf_pool *pool, s32_t timeout);
# 926 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_len(struct net_buf_pool *pool, size_t size,
      s32_t timeout);
# 958 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_with_data(struct net_buf_pool *pool,
     void *data, size_t size,
     s32_t timeout);
# 982 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_get(struct k_fifo *fifo, s32_t timeout);
# 994 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_destroy(struct net_buf *buf)
{
 struct net_buf_pool *pool = net_buf_pool_get(buf->pool_id);

 k_queue_prepend((struct k_queue *) &pool->free, buf);
}
# 1008 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_reset(struct net_buf *buf);
# 1019 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_reserve(struct net_buf_simple *buf, size_t reserve);
# 1031 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_slist_put(sys_slist_t *list, struct net_buf *buf);
# 1044 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_slist_get(sys_slist_t *list);
# 1056 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_put(struct k_fifo *fifo, struct net_buf *buf);
# 1071 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_unref(struct net_buf *buf);
# 1081 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_ref(struct net_buf *buf);
# 1096 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_clone(struct net_buf *buf, s32_t timeout);
# 1105 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void *net_buf_user_data(const struct net_buf *buf)
{
 return (void *)buf->user_data;
}
# 1400 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_last(struct net_buf *frags);
# 1412 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_frag_insert(struct net_buf *parent, struct net_buf *frag);
# 1427 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_add(struct net_buf *head, struct net_buf *frag);
# 1444 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_del(struct net_buf *parent, struct net_buf *frag);
# 1461 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_linearize(void *dst, size_t dst_len, struct net_buf *src,
                size_t offset, size_t len);
# 1478 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
typedef struct net_buf *(*net_buf_allocator_cb)(s32_t timeout, void *user_data);
# 1500 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_append_bytes(struct net_buf *buf, size_t len,
       const void *value, s32_t timeout,
       net_buf_allocator_cb allocate_cb, void *user_data);
# 1519 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline struct net_buf *net_buf_skip(struct net_buf *buf, u16_t len)
{
 while (buf && len--) {
  net_buf_simple_pull_u8(&(buf)->b);
  if (!buf->len) {
   buf = net_buf_frag_del(
# 1524 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h" 3 4
                         ((void *)0)
# 1524 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
                             , buf);
  }
 }

 return buf;
}
# 1540 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
static inline size_t net_buf_frags_len(struct net_buf *buf)
{
 size_t bytes = 0;

 while (buf) {
  bytes += buf->len;
  buf = buf->frags;
 }

 return bytes;
}
# 25 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 1
# 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain.h" 1
# 21 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain/gcc.h" 1
# 65 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain/gcc.h"
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain/common.h" 1
# 66 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain/gcc.h" 2
# 22 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/toolchain.h" 2
# 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2




# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 1
# 25 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
typedef struct {
 u8_t val[6];
} bt_addr_t;


typedef struct {
 u8_t type;
 bt_addr_t a;
} bt_addr_le_t;
# 42 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
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
# 70 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
int bt_addr_le_create_nrpa(bt_addr_le_t *addr);
int bt_addr_le_create_static(bt_addr_le_t *addr);

static inline 
# 73 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
             _Bool 
# 73 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
                  bt_addr_le_is_rpa(const bt_addr_le_t *addr)
{
 if (addr->type != 0x01) {
  return 
# 76 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
        0
# 76 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
             ;
 }

 return (((&addr->a)->val[5] & 0xc0) == 0x40);
}

static inline 
# 82 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
             _Bool 
# 82 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
                  bt_addr_le_is_identity(const bt_addr_le_t *addr)
{
 if (addr->type == 0x00) {
  return 
# 85 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
        1
# 85 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
            ;
 }

 return (((&addr->a)->val[5] & 0xc0) == 0xc0);
}
# 17 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_err.h" 1
# 18 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2
# 36 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_hdr {
 u8_t evt;
 u8_t len;
} 
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 39 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 50 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_acl_hdr {
 u16_t handle;
 u16_t len;
} 
# 53 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 53 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 78 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_iso_data_hdr {
 uint16_t sn;
 uint16_t slen;
} 
# 81 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 81 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_iso_ts_data_hdr {
 uint32_t ts;
 struct bt_hci_iso_data_hdr data;
} 
# 87 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 87 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_iso_hdr {
 uint16_t handle;
 uint16_t len;
} 
# 93 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 93 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cmd_hdr {
 u16_t opcode;
 u8_t param_len;
} 
# 99 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 99 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 285 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_op_inquiry {
 u8_t lap[3];
 u8_t length;
 u8_t num_rsp;
} 
# 289 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 289 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_connect {
 bt_addr_t bdaddr;
 u16_t packet_type;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u16_t clock_offset;
 u8_t allow_role_switch;
} 
# 301 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 301 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_disconnect {
 u16_t handle;
 u8_t reason;
} 
# 307 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 307 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_connect_cancel {
 bt_addr_t bdaddr;
} 
# 312 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 312 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_connect_cancel {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 316 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 316 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_accept_conn_req {
 bt_addr_t bdaddr;
 u8_t role;
} 
# 322 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 322 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 333 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 333 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 344 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 344 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_reject_conn_req {
 bt_addr_t bdaddr;
 u8_t reason;
} 
# 350 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 350 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_link_key_reply {
 bt_addr_t bdaddr;
 u8_t link_key[16];
} 
# 356 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 356 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_link_key_neg_reply {
 bt_addr_t bdaddr;
} 
# 361 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 361 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_pin_code_reply {
 bt_addr_t bdaddr;
 u8_t pin_len;
 u8_t pin_code[16];
} 
# 368 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 368 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_pin_code_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 372 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 372 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_pin_code_neg_reply {
 bt_addr_t bdaddr;
} 
# 377 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 377 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_pin_code_neg_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 381 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 381 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_auth_requested {
 u16_t handle;
} 
# 386 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 386 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_conn_encrypt {
 u16_t handle;
 u8_t encrypt;
} 
# 392 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 392 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_remote_name_request {
 bt_addr_t bdaddr;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u16_t clock_offset;
} 
# 400 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 400 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_remote_name_cancel {
 bt_addr_t bdaddr;
} 
# 405 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 405 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_remote_name_cancel {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 409 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 409 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_features {
 u16_t handle;
} 
# 414 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 414 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_ext_features {
 u16_t handle;
 u8_t page;
} 
# 420 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 420 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_version_info {
 u16_t handle;
} 
# 425 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 425 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_io_capability_reply {
 bt_addr_t bdaddr;
 u8_t capability;
 u8_t oob_data;
 u8_t authentication;
} 
# 433 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 433 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;



struct bt_hci_cp_user_confirm_reply {
 bt_addr_t bdaddr;
} 
# 439 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 439 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_user_confirm_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 443 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 443 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_user_passkey_reply {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 449 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 449 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_user_passkey_neg_reply {
 bt_addr_t bdaddr;
} 
# 454 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 454 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_io_capability_neg_reply {
 bt_addr_t bdaddr;
 u8_t reason;
} 
# 460 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 460 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_event_mask {
 u8_t events[8];
} 
# 465 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 465 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_write_local_name {
 u8_t local_name[248];
} 
# 472 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 472 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 482 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_write_inquiry_scan_activity {
 u16_t interval;
 u16_t window;
} 
# 485 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 485 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_class_of_device {
 u8_t cod[3];
} 
# 490 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 490 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_read_tx_power_level {
 u16_t handle;
 u8_t type;
} 
# 498 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 498 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_read_tx_power_level {
 u8_t status;
 u16_t handle;
 s8_t tx_power_level;
} 
# 504 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 504 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_set_ctl_to_host_flow {
 u8_t flow_enable;
} 
# 511 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 511 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_host_buffer_size {
 u16_t acl_mtu;
 u8_t sco_mtu;
 u16_t acl_pkts;
 u16_t sco_pkts;
} 
# 519 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 519 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_handle_count {
 u16_t handle;
 u16_t count;
} 
# 524 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 524 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_host_num_completed_packets {
 u8_t num_handles;
 struct bt_hci_handle_count h[0];
} 
# 530 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 530 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_inquiry_scan_type {
 u8_t type;
} 
# 535 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 535 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_inquiry_mode {
 u8_t mode;
} 
# 540 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 540 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_page_scan_type {
 u8_t type;
} 
# 545 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 545 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_ext_inquiry_resp {
       u8_t fec;
       u8_t eir[240];
} 
# 551 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 551 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_ssp_mode {
 u8_t mode;
} 
# 556 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 556 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_event_mask_page_2 {
 u8_t events_page_2[8];
} 
# 561 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 561 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_le_host_supp {
 u8_t le;
 u8_t simul;
} 
# 567 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 567 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_sc_host_supp {
 u8_t sc_support;
} 
# 572 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 572 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_auth_payload_timeout {
 u16_t handle;
} 
# 577 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 577 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_read_auth_payload_timeout {
 u8_t status;
 u16_t handle;
 u16_t auth_payload_timeout;
} 
# 583 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 583 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_auth_payload_timeout {
 u16_t handle;
 u16_t auth_payload_timeout;
} 
# 589 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 589 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_write_auth_payload_timeout {
 u8_t status;
 u16_t handle;
} 
# 594 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 594 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_configure_data_path {
 uint8_t data_path_dir;
 uint8_t data_path_id;
 uint8_t vs_config_len;
 uint8_t vs_config[0];
} 
# 602 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 602 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_configure_data_path {
 uint8_t status;
} 
# 606 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 606 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 623 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_rp_read_local_version_info {
 u8_t status;
 u8_t hci_version;
 u16_t hci_revision;
 u8_t lmp_version;
 u16_t manufacturer;
 u16_t lmp_subversion;
} 
# 630 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 630 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_supported_commands {
 u8_t status;
 u8_t commands[64];
} 
# 636 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 636 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 647 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 647 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_local_features {
 u8_t status;
 u8_t features[8];
} 
# 653 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 653 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_buffer_size {
 u8_t status;
 u16_t acl_max_len;
 u8_t sco_max_len;
 u16_t acl_max_num;
 u16_t sco_max_num;
} 
# 662 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 662 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_bd_addr {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 668 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 668 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 697 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_std_codec_info {
 uint8_t codec_id;
} 
# 699 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 699 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_std_codecs {
 uint8_t num_codecs;
 struct bt_hci_std_codec_info codec_info[0];
} 
# 703 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 703 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_vs_codec_info {
 uint16_t company_id;
 uint16_t codec_id;
} 
# 707 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 707 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_vs_codecs {
 uint8_t num_codecs;
 struct bt_hci_vs_codec_info codec_info[0];
} 
# 711 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 711 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_codecs {
 uint8_t status;

 uint8_t codecs[0];
} 
# 716 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 716 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_std_codec_info_v2 {
 uint8_t codec_id;
 uint8_t transports;
} 
# 722 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 722 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_std_codecs_v2 {
 uint8_t num_codecs;
 struct bt_hci_std_codec_info_v2 codec_info[0];
} 
# 726 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 726 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_vs_codec_info_v2 {
 uint16_t company_id;
 uint16_t codec_id;
 uint8_t transports;
} 
# 731 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 731 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_vs_codecs_v2 {
 uint8_t num_codecs;
 struct bt_hci_vs_codec_info_v2 codec_info[0];
} 
# 735 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 735 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_codecs_v2 {
 uint8_t status;

 uint8_t codecs[0];
} 
# 740 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 740 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_codec_id {
 uint8_t coding_format;
 uint16_t company_id;
 uint16_t vs_codec_id;
} 
# 746 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 746 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_codec_capabilities {
 struct bt_hci_cp_codec_id codec_id;
 uint8_t transport;
 uint8_t direction;
} 
# 753 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 753 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_codec_capability_info {
 uint8_t length;
 uint8_t data[0];
} 
# 757 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 757 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_codec_capabilities {
 uint8_t status;
 uint8_t num_capabilities;

 uint8_t capabilities[0];
} 
# 763 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 763 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_ctlr_delay {
 struct bt_hci_cp_codec_id codec_id;
 uint8_t transport;
 uint8_t direction;
 uint8_t codec_config_len;
 uint8_t codec_config[0];
} 
# 772 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 772 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_ctlr_delay {
 uint8_t status;
 uint8_t min_ctlr_delay[3];
 uint8_t max_ctlr_delay[3];
} 
# 777 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 777 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_rssi {
 u16_t handle;
} 
# 782 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 782 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_rssi {
 u8_t status;
 u16_t handle;
 s8_t rssi;
} 
# 787 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 787 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_read_encryption_key_size {
 u16_t handle;
} 
# 795 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 795 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_encryption_key_size {
 u8_t status;
 u16_t handle;
 u8_t key_size;
} 
# 800 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 800 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_set_event_mask {
 u8_t events[8];
} 
# 807 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 807 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_buffer_size {
 u8_t status;
 u16_t le_max_len;
 u8_t le_max_num;
} 
# 814 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 814 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_local_features {
 u8_t status;
 u8_t features[8];
} 
# 820 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 820 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_random_address {
 bt_addr_t bdaddr;
} 
# 825 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 825 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 842 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_adv_param {
 u16_t min_interval;
 u16_t max_interval;
 u8_t type;
 u8_t own_addr_type;
 bt_addr_le_t direct_addr;
 u8_t channel_map;
 u8_t filter_policy;
} 
# 850 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 850 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_chan_tx_power {
 u8_t status;
 s8_t tx_power_level;
} 
# 856 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 856 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_adv_data {
 u8_t len;
 u8_t data[31];
} 
# 862 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 862 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_scan_rsp_data {
 u8_t len;
 u8_t data[31];
} 
# 868 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 868 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_adv_enable {
 u8_t enable;
} 
# 876 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 876 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 886 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_scan_param {
 u8_t scan_type;
 u16_t interval;
 u16_t window;
 u8_t addr_type;
 u8_t filter_policy;
} 
# 892 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 892 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 902 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_scan_enable {
 u8_t enable;
 u8_t filter_dup;
} 
# 905 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 905 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 924 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 924 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_wl_size {
 u8_t status;
 u8_t wl_size;
} 
# 932 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 932 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_add_dev_to_wl {
 bt_addr_le_t addr;
} 
# 939 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 939 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_wl {
 bt_addr_le_t addr;
} 
# 944 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 944 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 955 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 955 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_host_chan_classif {
 u8_t ch_map[5];
} 
# 960 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 960 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_chan_map {
 u16_t handle;
} 
# 965 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 965 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_chan_map {
 u8_t status;
 u16_t handle;
 u8_t ch_map[5];
} 
# 970 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 970 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_remote_features {
 u16_t handle;
} 
# 975 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 975 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_encrypt {
 u8_t key[16];
 u8_t plaintext[16];
} 
# 981 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 981 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_encrypt {
 u8_t status;
 u8_t enc_data[16];
} 
# 985 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 985 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_rand {
 u8_t status;
 u8_t rand[8];
} 
# 991 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 991 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_start_encryption {
 u16_t handle;
 u64_t rand;
 u16_t ediv;
 u8_t ltk[16];
} 
# 999 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 999 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_ltk_req_reply {
 u16_t handle;
 u8_t ltk[16];
} 
# 1005 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1005 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_ltk_req_reply {
 u8_t status;
 u16_t handle;
} 
# 1009 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1009 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_ltk_req_neg_reply {
 u16_t handle;
} 
# 1014 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1014 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_ltk_req_neg_reply {
 u8_t status;
 u16_t handle;
} 
# 1018 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1018 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_supp_states {
 u8_t status;
 u8_t le_states[8];
} 
# 1024 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1024 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rx_test {
 u8_t rx_ch;
} 
# 1029 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1029 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_tx_test {
 u8_t tx_ch;
 u8_t test_data_len;
 u8_t pkt_payload;
} 
# 1036 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1036 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_test_end {
 u8_t status;
 u16_t rx_pkt_count;
} 
# 1042 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1042 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1053 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1053 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_conn_param_req_reply {
 u8_t status;
 u16_t handle;
} 
# 1057 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1057 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_conn_param_req_neg_reply {
 u16_t handle;
 u8_t reason;
} 
# 1063 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1063 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_conn_param_req_neg_reply {
 u8_t status;
 u16_t handle;
} 
# 1067 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1067 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_data_len {
 u16_t handle;
 u16_t tx_octets;
 u16_t tx_time;
} 
# 1074 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1074 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_set_data_len {
 u8_t status;
 u16_t handle;
} 
# 1078 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1078 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_default_data_len {
 u8_t status;
 u16_t max_tx_octets;
 u16_t max_tx_time;
} 
# 1085 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1085 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_write_default_data_len {
 u16_t max_tx_octets;
 u16_t max_tx_time;
} 
# 1091 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1091 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_generate_dhkey {
 u8_t key[64];
} 
# 1098 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1098 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_add_dev_to_rl {
 bt_addr_le_t peer_id_addr;
 u8_t peer_irk[16];
 u8_t local_irk[16];
} 
# 1105 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1105 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_rl {
 bt_addr_le_t peer_id_addr;
} 
# 1110 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1110 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_rl_size {
 u8_t status;
 u8_t rl_size;
} 
# 1118 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1118 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_peer_rpa {
 bt_addr_le_t peer_id_addr;
} 
# 1123 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1123 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_peer_rpa {
 u8_t status;
 bt_addr_t peer_rpa;
} 
# 1127 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1127 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_local_rpa {
 bt_addr_le_t peer_id_addr;
} 
# 1132 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1132 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_local_rpa {
 u8_t status;
 bt_addr_t local_rpa;
} 
# 1136 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1136 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_addr_res_enable {
 u8_t enable;
} 
# 1144 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1144 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_rpa_timeout {
 u16_t rpa_timeout;
} 
# 1149 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1149 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_max_data_len {
 u8_t status;
 u16_t max_tx_octets;
 u16_t max_tx_time;
 u16_t max_rx_octets;
 u16_t max_rx_time;
} 
# 1158 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1158 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_read_phy {
 u16_t handle;
} 
# 1167 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1167 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_phy {
 u8_t status;
 u16_t handle;
 u8_t tx_phy;
 u8_t rx_phy;
} 
# 1173 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1173 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1183 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_default_phy {
 u8_t all_phys;
 u8_t tx_phys;
 u8_t rx_phys;
} 
# 1187 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1187 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_set_phy {
 u16_t handle;
 u8_t all_phys;
 u8_t tx_phys;
 u8_t rx_phys;
 u16_t phy_opts;
} 
# 1200 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1200 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_enh_rx_test {
 u8_t rx_ch;
 u8_t phy;
 u8_t mod_index;
} 
# 1210 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1210 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_enh_tx_test {
 u8_t tx_ch;
 u8_t test_data_len;
 u8_t pkt_payload;
 u8_t phy;
} 
# 1222 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1222 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_adv_set_random_addr {
 u8_t handle;
 bt_addr_t bdaddr;
} 
# 1228 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1228 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1246 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1261 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1261 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_set_ext_adv_param {
 u8_t status;
 s8_t tx_power;
} 
# 1265 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1265 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1279 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_ext_adv_data {
 u8_t handle;
 u8_t op;
 u8_t frag_pref;
 u8_t len;
 u8_t data[251];
} 
# 1285 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1285 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_ext_scan_rsp_data {
 u8_t handle;
 u8_t op;
 u8_t frag_pref;
 u8_t len;
 u8_t data[251];
} 
# 1294 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1294 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_ext_adv_set {
 u8_t handle;
 u16_t duration;
 u8_t max_ext_adv_evts;
} 
# 1301 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1301 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_set_ext_adv_enable {
 u8_t enable;
 u8_t set_num;
 struct bt_hci_ext_adv_set s[0];
} 
# 1307 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1307 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_max_adv_data_len {
 u8_t status;
 u16_t max_adv_data_len;
} 
# 1313 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1313 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_num_adv_sets {
 u8_t status;
 u8_t num_sets;
} 
# 1319 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1319 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_remove_adv_set {
 u8_t handle;
} 
# 1324 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1324 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_set_per_adv_param {
 u8_t handle;
 u16_t min_interval;
 u16_t max_interval;
 u16_t props;
} 
# 1334 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1334 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1344 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_per_adv_data {
 u8_t handle;
 u8_t op;
 u8_t len;
 u8_t data[251];
} 
# 1349 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1349 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_per_adv_enable {
 u8_t enable;
 u8_t handle;
} 
# 1355 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1355 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_ext_scan_phy {
 u8_t type;
 u16_t interval;
 u16_t window;
} 
# 1362 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1362 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_ext_scan_param {
 u8_t own_addr_type;
 u8_t filter_policy;
 u8_t phys;
 struct bt_hci_ext_scan_phy p[0];
} 
# 1373 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1373 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_ext_scan_enable {
 u8_t enable;
 u8_t filter_dup;
 u16_t duration;
 u16_t period;
} 
# 1384 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1384 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1396 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1396 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_ext_create_conn {
 u8_t filter_policy;
 u8_t own_addr_type;
 bt_addr_le_t peer_addr;
 u8_t phys;
 struct bt_hci_ext_conn_phy p[0];
} 
# 1404 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1404 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1416 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_per_adv_create_sync {
 u8_t filter_policy;
 u8_t sid;
 bt_addr_le_t addr;
 u16_t skip;
 u16_t sync_timeout;
 u8_t unused;
} 
# 1423 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1423 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_per_adv_terminate_sync {
 u16_t handle;
} 
# 1430 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1430 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_add_dev_to_per_adv_list {
 bt_addr_le_t addr;
 u8_t sid;
} 
# 1436 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1436 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_per_adv_list {
 bt_addr_le_t addr;
 u8_t sid;
} 
# 1442 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1442 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_per_adv_list_size {
 u8_t status;
 u8_t list_size;
} 
# 1450 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1450 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_tx_power {
 u8_t status;
 s8_t min_tx_power;
 s8_t max_tx_power;
} 
# 1457 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1457 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_rf_path_comp {
 u8_t status;
 s16_t tx_path_comp;
 s16_t rx_path_comp;
} 
# 1464 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1464 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_write_rf_path_comp {
 s16_t tx_path_comp;
 s16_t rx_path_comp;
} 
# 1470 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1470 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_privacy_mode {
 bt_addr_le_t id_addr;
 u8_t mode;
} 
# 1479 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1479 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_cl_cte_tx_enable {
 uint8_t handle;
 uint8_t cte_enable;
} 
# 1485 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1485 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1499 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_cl_cte_tx_params {
 uint8_t handle;
 uint8_t cte_len;
 uint8_t cte_type;
 uint8_t cte_count;
 uint8_t switch_pattern_len;
 uint8_t ant_ids[0];
} 
# 1506 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1506 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1516 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_conn_cte_tx_params {
 uint16_t handle;
 uint8_t cte_types;
 uint8_t switch_pattern_len;
 uint8_t ant_id[0];
} 
# 1521 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1521 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_set_conn_cte_tx_params {
 uint8_t status;
 uint16_t handle;
} 
# 1526 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1526 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1542 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1554 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1554 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_per_adv_sync_transfer {
 uint16_t conn_handle;
 uint16_t service_data;
 uint16_t sync_handle;
} 
# 1561 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1561 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_per_adv_sync_transfer {
 uint8_t status;
 uint16_t conn_handle;
} 
# 1566 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1566 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_per_adv_set_info_transfer {
 uint16_t conn_handle;
 uint16_t service_data;
 uint8_t adv_handle;
} 
# 1573 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1573 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_per_adv_set_info_transfer {
 uint8_t status;
 uint16_t conn_handle;
} 
# 1578 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1578 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1591 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_past_param {
 uint16_t conn_handle;
 uint8_t mode;
 uint16_t skip;
 uint16_t timeout;
 uint8_t cte_type;
} 
# 1597 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1597 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_past_param {
 uint8_t status;
 uint16_t conn_handle;
} 
# 1602 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1602 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_default_past_param {
 uint8_t mode;
 uint16_t skip;
 uint16_t timeout;
 uint8_t cte_type;
} 
# 1610 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1610 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_default_past_param {
 uint8_t status;
} 
# 1614 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1614 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_buffer_size_v2 {
 uint8_t status;
 uint16_t acl_mtu;
 uint8_t acl_max_pkt;
 uint16_t iso_mtu;
 uint8_t iso_max_pkt;
} 
# 1623 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1623 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_iso_tx_sync {
 uint16_t handle;
} 
# 1628 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1628 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_read_iso_tx_sync {
 uint8_t status;
 uint16_t handle;
 uint16_t seq;
 uint32_t timestamp;
 uint8_t offset[3];
} 
# 1636 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1636 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1647 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1647 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1660 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1660 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_set_cig_params {
 uint8_t status;
 uint8_t cig_id;
 uint8_t num_handles;
 uint16_t handle[0];
} 
# 1667 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1667 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1681 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1681 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1695 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1695 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_set_cig_params_test {
 uint8_t status;
 uint8_t cig_id;
 uint8_t num_handles;
 uint16_t handle[0];
} 
# 1702 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1702 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cis {
 uint16_t cis_handle;
 uint16_t acl_handle;
} 
# 1708 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1708 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_create_cis {
 uint8_t num_cis;
 struct bt_hci_cis cis[0];
} 
# 1713 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1713 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_remove_cig {
 uint8_t cig_id;
} 
# 1718 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1718 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_remove_cig {
 uint8_t status;
 uint8_t cig_id;
} 
# 1723 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1723 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_accept_cis {
 uint16_t handle;
} 
# 1728 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1728 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_reject_cis {
 uint16_t handle;
 uint8_t reason;
} 
# 1734 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1734 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_reject_cis {
 uint8_t status;
 uint16_t handle;
} 
# 1739 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1739 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1755 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1755 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1775 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1775 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_terminate_big {
 uint8_t big_handle;
 uint8_t reason;
} 
# 1781 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1781 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1793 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1793 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_big_terminate_sync {
 uint8_t big_handle;
} 
# 1798 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1798 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_big_terminate_sync {
 uint8_t status;
 uint8_t big_handle;
} 
# 1803 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1803 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_req_peer_sca {
 uint16_t handle;
} 
# 1808 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1808 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1819 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1819 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_setup_iso_path {
 uint8_t status;
 uint16_t handle;
} 
# 1824 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1824 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_remove_iso_path {
 uint16_t handle;
 uint8_t path_dir;
} 
# 1830 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1830 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_remove_iso_path {
 uint8_t status;
 uint16_t handle;
} 
# 1835 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1835 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_iso_transmit_test {
 uint16_t handle;
 uint8_t payload_type;
} 
# 1841 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1841 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_iso_transmit_test {
 uint8_t status;
 uint16_t handle;
} 
# 1846 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1846 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_iso_receive_test {
 uint16_t handle;
 uint8_t payload_type;
} 
# 1852 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1852 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_iso_receive_test {
 uint8_t status;
 uint16_t handle;
} 
# 1857 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1857 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_test_counters {
 uint16_t handle;
} 
# 1862 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1862 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_read_test_counters {
 uint8_t status;
 uint16_t handle;
 uint32_t received_cnt;
 uint32_t missed_cnt;
 uint32_t failed_cnt;
} 
# 1870 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1870 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_iso_test_end {
 uint16_t handle;
} 
# 1875 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1875 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_iso_test_end {
 uint8_t status;
 uint16_t handle;
 uint32_t received_cnt;
 uint32_t missed_cnt;
 uint32_t failed_cnt;
} 
# 1883 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1883 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_host_feature {
 uint8_t bit_number;
 uint8_t bit_value;
} 
# 1889 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1889 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_le_set_host_feature {
 uint8_t status;
} 
# 1893 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1893 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_iso_link_quality {
 uint16_t handle;
} 
# 1898 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1898 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 1910 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1910 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1925 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_inquiry_complete {
 u8_t status;
} 
# 1927 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1927 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_conn_complete {
 u8_t status;
 u16_t handle;
 bt_addr_t bdaddr;
 u8_t link_type;
 u8_t encr_enabled;
} 
# 1936 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1936 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_conn_request {
 bt_addr_t bdaddr;
 u8_t dev_class[3];
 u8_t link_type;
} 
# 1943 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1943 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_disconn_complete {
 u8_t status;
 u16_t handle;
 u8_t reason;
} 
# 1950 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1950 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_auth_complete {
 u8_t status;
 u16_t handle;
} 
# 1956 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1956 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_name_req_complete {
 u8_t status;
 bt_addr_t bdaddr;
 u8_t name[248];
} 
# 1963 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1963 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_encrypt_change {
 u8_t status;
 u16_t handle;
 u8_t encrypt;
} 
# 1970 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1970 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_features {
 u8_t status;
 u16_t handle;
 u8_t features[8];
} 
# 1977 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1977 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_version_info {
 u8_t status;
 u16_t handle;
 u8_t version;
 u16_t manufacturer;
 u16_t subversion;
} 
# 1986 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1986 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_cmd_complete {
 u8_t ncmd;
 u16_t opcode;
} 
# 1992 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1992 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_evt_cc_status {
 u8_t status;
} 
# 1996 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1996 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_cmd_status {
 u8_t status;
 u8_t ncmd;
 u16_t opcode;
} 
# 2003 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2003 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_hardware_error {
 uint8_t hardware_code;
} 
# 2008 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2008 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_role_change {
 u8_t status;
 bt_addr_t bdaddr;
 u8_t role;
} 
# 2015 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2015 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_num_completed_packets {
 u8_t num_handles;
 struct bt_hci_handle_count h[0];
} 
# 2021 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2021 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_pin_code_req {
 bt_addr_t bdaddr;
} 
# 2026 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2026 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_link_key_req {
 bt_addr_t bdaddr;
} 
# 2031 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2031 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 2045 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_link_key_notify {
 bt_addr_t bdaddr;
 u8_t link_key[16];
 u8_t key_type;
} 
# 2049 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2049 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_evt_data_buf_overflow {
 u8_t link_type;
} 
# 2058 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2058 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_inquiry_result_with_rssi {
 bt_addr_t addr;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u8_t cod[3];
 u16_t clock_offset;
 s8_t rssi;
} 
# 2068 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2068 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_ext_features {
 u8_t status;
 u16_t handle;
 u8_t page;
 u8_t max_page;
 u8_t features[8];
} 
# 2077 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2077 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2090 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2090 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2102 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2102 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_encrypt_key_refresh_complete {
 u8_t status;
 u16_t handle;
} 
# 2108 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2108 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_io_capa_req {
 bt_addr_t bdaddr;
} 
# 2113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_io_capa_resp {
 bt_addr_t bdaddr;
 u8_t capability;
 u8_t oob_data;
 u8_t authentication;
} 
# 2121 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2121 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_confirm_req {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 2127 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2127 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_passkey_req {
 bt_addr_t bdaddr;
} 
# 2132 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2132 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_ssp_complete {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 2138 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2138 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_passkey_notify {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 2144 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2144 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_meta_event {
 u8_t subevent;
} 
# 2149 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2149 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_auth_payload_timeout_exp {
 u16_t handle;
} 
# 2154 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2154 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2169 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2169 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_advertising_info {
 u8_t evt_type;
 bt_addr_le_t addr;
 u8_t length;
 u8_t data[0];
} 
# 2177 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2177 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_advertising_report {
 u8_t num_reports;
 struct bt_hci_evt_le_advertising_info adv_info[0];
} 
# 2181 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2181 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_conn_update_complete {
 u8_t status;
 u16_t handle;
 u16_t interval;
 u16_t latency;
 u16_t supv_timeout;
} 
# 2190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_remote_feat_complete {
 u8_t status;
 u16_t handle;
 u8_t features[8];
} 
# 2197 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2197 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_ltk_request {
 u16_t handle;
 u64_t rand;
 u16_t ediv;
} 
# 2204 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2204 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_conn_param_req {
 u16_t handle;
 u16_t interval_min;
 u16_t interval_max;
 u16_t latency;
 u16_t timeout;
} 
# 2213 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2213 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_data_len_change {
 u16_t handle;
 u16_t max_tx_octets;
 u16_t max_tx_time;
 u16_t max_rx_octets;
 u16_t max_rx_time;
} 
# 2222 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2222 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_p256_public_key_complete {
 u8_t status;
 u8_t key[64];
} 
# 2228 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2228 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_generate_dhkey_complete {
 u8_t status;
 u8_t dhkey[32];
} 
# 2234 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2234 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2248 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2248 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_direct_adv_info {
 u8_t evt_type;
 bt_addr_le_t addr;
 bt_addr_le_t dir_addr;
 s8_t rssi;
} 
# 2256 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2256 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_direct_adv_report {
 u8_t num_reports;
 struct bt_hci_evt_le_direct_adv_info direct_adv_info[0];
} 
# 2260 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2260 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_phy_update_complete {
 u8_t status;
 u16_t handle;
 u8_t tx_phy;
 u8_t rx_phy;
} 
# 2268 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2268 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 2283 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2295 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2295 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_ext_advertising_report {
 u8_t num_reports;
 struct bt_hci_evt_le_ext_advertising_info adv_info[0];
} 
# 2299 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2299 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2310 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2310 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2321 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2321 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_per_adv_sync_lost {
 u16_t handle;
} 
# 2326 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2326 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_evt_le_per_adv_set_terminated {
 u8_t status;
 u8_t adv_handle;
 u16_t conn_handle;
 u8_t num_completed_ext_adv_evts;
} 
# 2336 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2336 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_scan_req_received {
 u8_t handle;
 bt_addr_le_t addr;
} 
# 2342 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2342 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_evt_le_chan_sel_algo {
 u16_t handle;
 u8_t chan_sel_algo;
} 
# 2351 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2351 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2364 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2364 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2384 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2384 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_cis_req {
 uint16_t acl_handle;
 uint16_t cis_handle;
 uint8_t cig_id;
 uint8_t cis_id;
} 
# 2392 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2392 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2408 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2408 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_big_terminate {
 uint8_t big_handle;
 uint8_t reason;
} 
# 2414 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2414 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2428 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2428 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_big_sync_lost {
 uint8_t big_handle;
 uint8_t reason;
} 
# 2434 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2434 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_req_peer_sca_complete {
 uint8_t status;
 uint16_t handle;
 uint8_t sca;
} 
# 2441 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2441 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
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
# 2458 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 2458 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 2563 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct net_buf *bt_hci_cmd_create(u16_t opcode, u8_t param_len);
# 2582 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_cmd_send(u16_t opcode, struct net_buf *buf);
# 2607 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_cmd_send_sync(u16_t opcode, struct net_buf *buf,
    struct net_buf **rsp);
# 2619 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_get_conn_handle(const struct bt_conn *conn, u16_t *conn_handle);
# 2633 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
typedef 
# 2633 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3 4
       _Bool 
# 2633 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
            bt_hci_vnd_evt_cb_t(struct net_buf_simple *buf);
# 2642 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_register_vnd_evt_cb(bt_hci_vnd_evt_cb_t cb);
# 26 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gap.h" 1
# 27 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 55 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
typedef void (*bt_ready_cb_t)(int err);
# 67 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_enable(bt_ready_cb_t cb);
# 77 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_set_name(const char *name);







const char *bt_get_name(void);
# 100 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_set_id_addr(const bt_addr_le_t *addr);
# 117 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
void bt_id_get(bt_addr_le_t *addrs, size_t *count);
# 156 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_create(bt_addr_le_t *addr, u8_t *irk);
# 189 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_reset(u8_t id, bt_addr_le_t *addr, u8_t *irk);
# 206 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_delete(u8_t id);







struct bt_data {
 u8_t type;
 u8_t data_len;
 const u8_t *data;
};
# 249 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
enum {

 BT_LE_ADV_OPT_NONE = 0,




 BT_LE_ADV_OPT_CONNECTABLE = (1UL << (0)),
# 267 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
 BT_LE_ADV_OPT_ONE_TIME = (1UL << (1)),





 BT_LE_ADV_OPT_USE_IDENTITY = (1UL << (2)),


 BT_LE_ADV_OPT_USE_NAME = (1UL << (3)),





 BT_LE_ADV_OPT_DIR_MODE_LOW_DUTY = (1UL << (4)),
# 293 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
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
# 378 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_adv_start(const struct bt_le_adv_param *param,
      const struct bt_data *ad, size_t ad_len,
      const struct bt_data *sd, size_t sd_len);
# 393 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_adv_update_data(const struct bt_data *ad, size_t ad_len,
     const struct bt_data *sd, size_t sd_len);







int bt_le_adv_stop(void);
# 415 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
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
# 498 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_scan_start(const struct bt_le_scan_param *param, bt_le_scan_cb_t cb);
# 508 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_scan_stop(void);
# 523 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_add(const bt_addr_le_t *addr);
# 538 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_rem(const bt_addr_le_t *addr);
# 551 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_clear(void);
# 560 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_set_chan_map(u8_t chan_map[5]);
# 575 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
void bt_data_parse(struct net_buf_simple *ad,
     
# 576 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
    _Bool 
# 576 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
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
# 615 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_oob_get_local(u8_t id, struct bt_le_oob *oob);


struct bt_br_discovery_result {

 u8_t _priv[4];


 bt_addr_t addr;


 s8_t rssi;


 u8_t cod[3];


 u8_t eir[240];
};
# 646 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
typedef void bt_br_discovery_cb_t(struct bt_br_discovery_result *results,
      size_t count);


struct bt_br_discovery_param {



 u8_t length;


 
# 657 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
_Bool 
# 657 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
     limited;
};
# 676 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_discovery_start(const struct bt_br_discovery_param *param,
     struct bt_br_discovery_result *results, size_t count,
     bt_br_discovery_cb_t cb);
# 688 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_discovery_stop(void);

int bt_disable(void);


struct bt_br_oob {

 bt_addr_t addr;
};
# 706 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_oob_get_local(struct bt_br_oob *oob);
# 738 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
static inline int bt_addr_to_str(const bt_addr_t *addr, char *str, size_t len)
{
 return snprintf(str, len, "%02X:%02X:%02X:%02X:%02X:%02X",
   addr->val[5], addr->val[4], addr->val[3],
   addr->val[2], addr->val[1], addr->val[0]);
}
# 755 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
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
# 791 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_addr_from_str(const char *str, bt_addr_t *addr);
# 802 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_addr_le_from_str(const char *str, const char *type, bt_addr_le_t *addr);
# 815 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_set_discoverable(
# 815 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
                          _Bool 
# 815 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
                               enable);
# 828 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_set_connectable(
# 828 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
                         _Bool 
# 828 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
                              enable);
# 838 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_unpair(u8_t id, const bt_addr_le_t *addr);


struct bt_bond_info {

 bt_addr_le_t addr;
};







void bt_foreach_bond(u8_t id, void (*func)(const struct bt_bond_info *info, void *user_data),
       void *user_data);




int bt_br_write_local_name(char *name);




int bt_br_write_eir(u8_t fec, u8_t *data);
# 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_master.h" 2




typedef int (*ble_gatt_conn_cb_t)(struct bt_conn *conn, uint8_t code);

typedef enum {
    BLE_MASTER_AUTOCONN_DISABLE = 0x00,
    BLE_MASTER_AUTOCONN_ENABLE = 0x01,
    BLE_MASTER_AUTOCONN_FORCE = 0x02
} ble_master_autoconn_t;

typedef struct
{
    int8_t rssi;
    uint8_t mac[6];
    char name[30];
} ble_scan_info_t;

typedef struct
{
    uint8_t svr[16];
    uint8_t tx[16];
    uint8_t rx[16];
} server_uuid_t;
struct bt_conn *pconn;
void ble_reverse_byte(uint8_t *arr, uint32_t size);
void ble_stack_start(void);

struct bt_conn *ble_get_conn_cur(void);
int ble_regist_conn(ble_gatt_conn_cb_t cb);
int ble_regist_disconn(ble_gatt_conn_cb_t cb);
int ble_master_init();
int ble_master_deinit(void);
int ble_master_scan(uint32_t scan_time);
int ble_master_find_target(uint32_t scan_time, uint8_t *mac, uint16_t *uuid, bt_addr_le_t *target_addr);


uint16_t ble_master_get_led_handle(void);
int ble_master_write_led_cmd(const char *cmd, uint16_t handle);
# 105 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/hardware/common/hardware.h" 1
# 106 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h" 1




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
# 107 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/../components/third_party/lib_button/app_btn.h" 1
# 32 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/../components/third_party/lib_button/app_btn.h"
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
# 108 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2
# 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/../components/hardware/led/led.h" 1




void led_init(void);
void led_on(void);
void led_off(void);
void led_toggle(void);
void led_blink(int times, int delay_ms);
int led_get_state(void);
# 109 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 2


static uint8_t slave_mac[6] = {0x88, 0x88, 0x88, 0x88, 0x88, 0x88};


extern unsigned char bleuart_connect_status;
extern uint8_t axk_HalBleInit();
extern uint8_t axk_HalBleCentralStartScan(void);
extern uint8_t axk_HalBleCentralConnect(uint8_t *mac, uint8_t *uuid, uint8_t autoConnect);
extern int axk_HalBleCentralTTWrite(uint16_t len, uint8_t *data);
hosal_uart_dev_t ble_uart_dev = {
    .config = {
        .uart_id = 1,
        .tx_pin = 16,
        .rx_pin = 7,
        .cts_pin = 255,
        .rts_pin = 255,
        .baud_rate = 115200,
        .data_width = HOSAL_DATA_WIDTH_8BIT,
        .parity = HOSAL_NO_PARITY,
        .stop_bits = HOSAL_STOP_BITS_1,
        .mode = HOSAL_UART_MODE_POLL,
    },
};

void bleuart_printf(char *buf)
{
  hosal_uart_send(&ble_uart_dev, buf, strlen(buf));
}

void ble_user_init(void)
{
  axk_HalBleInit();
  axk_HalBleCentralStartScan();
  axk_HalBleCentralConnect(slave_mac, 
# 143 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                                     ((void *)0)
# 143 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                                         , BLE_MASTER_AUTOCONN_ENABLE);
}

int str2hex(char *pbuf, int len)
{
  int i = 0;
  for (i = 0; i < len; i++)
  {
    if (((pbuf[i] >= '0') && (pbuf[i] <= '9')) || ((pbuf[i] >= 'A') && (pbuf[i] <= 'F')) || ((pbuf[i] >= 'a') && (pbuf[i] <= 'f')))
    {
      if ((pbuf[i] >= '0') && (pbuf[i] <= '9'))
      {
        pbuf[i] -= '0';
      }
      else if (((pbuf[i] >= 'A') && (pbuf[i] <= 'F')))
      {
        pbuf[i] -= 'A';
        pbuf[i] += 0x0A;
      }
      else
      {
        pbuf[i] -= 'a';
        pbuf[i] += 0x0A;
      }

      if (i % 2)
      {
        pbuf[i / 2] = (pbuf[i - 1] << 4) | pbuf[i];
      }
    }
    else
    {
      return -1;
    }
  }

  return 0;
}

static void ble_loop_proc(void *pvParameters)
{
  char data[250];
  int ret, rep;
  ble_user_init();
  while (1)
  {

    ret = hosal_uart_receive(&ble_uart_dev, data, sizeof(data));
    if (ret > 0)
    {

      if (bleuart_connect_status == 1)
      {
        rep = axk_HalBleCentralTTWrite(ret, (uint8_t *)data);
        if (rep >= 0)
        {

        }
        else if (rep == -1)
        {
          bleuart_printf("ble status error!\r\n");
        }
        else if (rep == -2)
        {
          bleuart_printf("ble data len error!\r\n");
        }
        else if (rep == -3)
        {
          bleuart_printf("ble data null!\r\n");
        }
        else
        {
          bleuart_printf("ble send fail!\r\n");
        }
      }
      else
        bleuart_printf("no ble connect!\r\n");
    }
    vTaskDelay(100);
  }
  vTaskDelete(
# 223 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
             ((void *)0)
# 223 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                 );
}


static void master_button_press_callback(int pin, int event, void *data)
{
    static 
# 229 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
          _Bool 
# 229 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
               s_remote_led_on = 
# 229 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                                 0
# 229 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                                      ;
    extern unsigned char bleuart_connect_status;

    bleuart_printf("[BTN] PRESSED, connect_status=");
    char buf[20];
    sprintf(buf, "%d\r\n", bleuart_connect_status);
    bleuart_printf(buf);

    if (bleuart_connect_status == 1) {
        const char *cmd = s_remote_led_on ? "turn off" : "turn on";
        bleuart_printf("[BTN] Writing LED cmd to TB03F\r\n");

        ble_master_write_led_cmd(cmd, 0);
        s_remote_led_on = !s_remote_led_on;
    } else {
        bleuart_printf("[BTN] BLE not connected, skip write\r\n");
    }


    led_toggle();
    bleuart_printf("[BTN] LED local toggled\r\n");
}

static uint32_t app_get_tick_ms(void)
{
    return aos_now_ms();
}


static void master_button_task(void *params)
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
# 272 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                            ((void *)0)
# 272 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                                ;
    btn_cfg.btn_read = 
# 273 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                      ((void *)0)
# 273 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                          ;

    bl_gpio_enable_input(4, 0, 0);
    btn_cfg.btn_read = (app_btn_get_level_cb)bl_gpio_input_get_value;

    app_btn_initialize(&btn_cfg);
    extern void master_button_press_callback(int pin, int event, void *data);
    app_btn_register_callback(APP_BTN_EVT_PRESSED, master_button_press_callback, 
# 280 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                                                                                ((void *)0)
# 280 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                                                                                    );

    while (1) {
        app_btn_scan(
# 283 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                    ((void *)0)
# 283 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                        );
        aos_msleep(20);
    }
}




static void uart_init(void)
{
  hosal_uart_init(&ble_uart_dev);
}




void main()
{
  uart_init();
  bleuart_printf("MY BLE MASTER\r\n");
  bl_sys_init();
  led_init();
  xTaskCreate(ble_loop_proc, "ble master", 1024, 
# 305 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                                                ((void *)0)
# 305 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                                                    , 15, 
# 305 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                                                          ((void *)0)
# 305 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                                                              );
  xTaskCreate(master_button_task, "btn_task", 1024, 
# 306 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                                                   ((void *)0)
# 306 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                                                       , 14, 
# 306 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c" 3 4
                                                             ((void *)0)
# 306 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
                                                                 );

}
