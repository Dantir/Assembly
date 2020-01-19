.globl _start
.text
_start:
mov $4, %EDX
mov $1, %ECX
mov $1, %EAX
while:
        cmp $2, %EDX
        je endwhile
        add %ECX, %EAX
        xchg %ECX,%EAX
        dec %EDX
        jmp while
endwhile:
nop
