 .globl _start
.bss
pid: .space 10
.text
_start:
mov $20, %EAX
int $0x80
xor %EBX,%EBX
mov $10, %ECX
while:
        xor %EDX,%EDX
        div %ECX
        add $48, %DL
        mov %DL, pid(%EBX)
        inc %EBX
        and %EAX,%EAX #cmp $0, %EAX
jg while
xor %ESI,%ESI
mov %EBX,%EDI
dec %EDI

while2:
        cmp %ESI,%EDI
        jle endwhile
        mov pid (%ESI),%DL
        xchg pid (%EDI),%DL
        mov %DL,pid(%ESI)
        inc %ESI
        dec %EDI
jmp while2
endwhile:

mov $4,%EAX
mov %EBX,%EDX
mov $1, %EBX
mov $pid, %ECX
int $0x80
mov $1, %EAX
mov $7, %EBX
int $0x80
