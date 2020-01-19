.globl _start
.data
        array: .long 1, 2, 5, 4, 100, 6
        endarray:
.equ size,(endarray-array)/4
.text
_start:
xor %EBX, %EBX
while:
        cmp $size, %EBX
        jge end_while
        mov %EBX, %EAX
        mul %EBX
        mov %EAX, array(,%EBX,4)
        inc %EBX
        jmp while
end_while:
nop
