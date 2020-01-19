.globl _start
.text
_start:
 mov $14, %ECX
 mov $5, %EDX
 mov %ECX, %EAX
 mov %EDX, %EBX
 xor %EDX, %EDX
 div %EBX
 add %EDX, %EDX
 cmp %EDX, %EBX
 jge end_if
  inc %EAX
 end_if:
 mov %EAX, %EBX
 nop
