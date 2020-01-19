.globl _start
.data
s1: .ascii "Hello world!\n"
ends1:
.text
_start:
mov $20, %EAX

int $0x80

mov $4, %EAX
mov $1, %EBX
mov $s1,%ECX
mov $ends1-s1,%EDX
int $0x80

mov $1, %EAX
mov $7, %EBX
int $0x80
