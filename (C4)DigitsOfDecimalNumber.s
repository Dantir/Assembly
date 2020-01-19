.globl _start
.text
_start:
mov $232, %EAX
mov $10, %EBX
mov $0, %ECX
xor %EDX, %EDX
while:
        cmp $0, %EAX
        jle endwhile
        div %EBX
        inc %ECX
        jmp while
endwhile:
nop
