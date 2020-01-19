.globl _start
.text
_start:
 xor %EBX, %EBX
 mov $-5, %ECX
 call check
 nop

 check:
 cmp $0,  %ECX
 je end
 jg plus
 dec %EBX
 jmp end
 plus:
 inc %EBx
 end:
 ret
