.globl _start
.data
        array: .long 1, 2, 3, 4, 5, 6
        endarray:
.equ size, (endarray - array)/4
.text
_start:
xor %EAX, %EAX
xor %EBX, %EBX
while:
        cmp $size, %EBX
        jge end_while
        add array(,%EBX,4), %EAX
        inc %EBX
        jmp while
end_while:
nop
