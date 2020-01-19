.globl _start
.text
_start:
mov $4, %ECX
mov $1, %EAX
while:
        cmp $1, %ECX
        jle endwhile
        mul %ECX
        dec %ECX
        jmp while
endwhile:
nop
