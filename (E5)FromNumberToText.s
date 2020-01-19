.globl _start
.bss
numbers: .space 6
endnumbers:
.data
ten: .long 10
.equ size, endnumbers-numbers
.text
_start:
mov $0, %ECX
mov $size, %EBX
mov $8701593, %EAX
begin:
xor %EDX,%EDX
divl ten
add $48, %DL
mov %DL, numbers(%EBX)
dec %EBX
and %EAX, %EAX
jg begin
nop
