.globl _start
.text
 _start:
 mov $-7, %ECX
 mov %ECX, %EBX
 cmp $0, %ECX
 jge end_if
 neg %EBX
 end_if:
 nop
