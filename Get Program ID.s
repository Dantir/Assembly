.globl _start

.text
_start:

mov $20, %EAX

int $0x80
mov $1,%EAX
mov $7,%EBX
int $0x80
