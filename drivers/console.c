#include "common.h"
#include "console.h"


//清屏操作
void console_clear();
//屏幕输出一个字符带颜色
void console_putc_color(char c, real_color_t back, real_color_t fore);
//屏幕打印一个以\0结尾的字符串默认黑底白字
void console_write(char *cstr);
//屏幕打印一个以\0结尾的字符串代颜色
void console_write_color(char *cstr, real_color_t back, real_color_t fore);
//屏幕输出一个十六进制的整形数
void console_write_hex(uint32_t n, real_color_t back, real_color_t fore);
//屏幕输出一个十进制的整形数
void console_write_dec(uint32_t n, real_color_t back, real_color_t fore);
