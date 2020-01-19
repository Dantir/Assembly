.globl _start
.data
        array: .long 1, 2, 7, 4, 15, 6
        endarray:
.equ size,(endarray-array)/4
.text
_start:
xor %EBX, %EBX
mov array(,%EBX,4), %EDX #maximum
add $4, %EBX
mov %EBX, %EAX #address of maximum
while:
        cmp $size, %EBX
        jge end_while
        cmp %EDX, array(,%EBX,4)
        jle endcompare
        mov array(,%EBX,4), %EDX
        mov %EBX, %EAX
        endcompare:
        add $4, %EBX
        jmp while
end_while:
nop
