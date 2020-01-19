.globl _start
.data
        array: .long 1, 2, 7, 4, 15, 6
        endarray:
.equ size,endarray-array
.text
_start:
xor %EBX, %EBX
mov array(%EBX), %EDX
add $4, %EBX
while:
        cmp $size, %EBX
        jge end_while
        cmp %EDX, array(%EBX)
        jle endcompare
        mov array(%EBX), %EDX
        endcompare:
        add $4, %EBX
        jmp while
end_while:
nop
