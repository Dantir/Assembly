.globl _start
.text
_start:
mov $232, %EAX
mov $10, %EBX
mov $0, %ECX
while:
        xor %EDX, %EDX
        cmp $0, %EAX
        je endwhile
        div %EBX
        add %EDX, %ECX
        jmp while
endwhile:
nop
