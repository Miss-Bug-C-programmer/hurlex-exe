/*
 *  kernel.ld ----针对kernel格式所写的链接脚本
 *
 */

ENTRY(start) /*声明内核程序的入口地址*/
SECTIONS
{
    /*段起始位置*/
    
    . = 0x100000;

    PROVIDE( kern_start = . );
    .text : /*代码段*/
    {
        *(.text)
        . = ALIGN(4096); /*采用4096的页对齐方式*/
    }
    .data : /*已初始化数据段*/
    {
        *(.data)
        *(.rodata) /*只读的已初始化数据段*/
        . = ALIGN(4096);
    }
    .bss : /*未初始化数据段*/
    {
        *(.bss)
        . = ALIGN(4096);
    }
    .stab :
    {
        *(.stab)
        . = ALIGN(4096);
    }
    .stabstr :
    {
        *(.stabstr)
        . = ALIGN(4096);
    }
    PROVIDE( kern_end = . );

    /DISCARD/ : { *(.comment) *(.eh_frame) }
}
