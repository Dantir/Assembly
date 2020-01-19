.globl _start
.text
_start:
mov $4, %ECX
mov $2, %EBX
mov %EBX, %EAX
cmp $1, %ECX
jg while
je endwhile
mov $1, %EAX
jl endwhile
while:
        cmp $1, %ECX
        je endwhile
        mul %EBX
        dec %ECX
        jmp while
endwhile:
nop
