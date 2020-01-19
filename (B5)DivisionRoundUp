.globl _start
.text
_start:
 mov $11, %ECX
 mov $5, %EDX
 mov %ECX, %EAX
 mov %EDX, %EBX
 xor %EDX, %EDX
 div %EBX
 cmp $0, %EDX
 je end_if
 inc %EAX
 end_if:
 mov %EAX, %EBX
nop
