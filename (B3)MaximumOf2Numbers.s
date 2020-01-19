.globl _start
.text
_start:
 mov $7, %ECX
 mov $6, %EDX
 cmp %ECX, %EDX
 jg else
 mov %ECX, %EDX
else:
 mov %EDX, %EBX
 nop
