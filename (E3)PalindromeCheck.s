.globl _start
.data
sentence: .asciz "REFER"
endarray:
.equ size, endarray - (sentence+2)
.text
_start:
mov $0, %EBX
mov $1, %EAX
mov $size, %EDX
begin:
cmp %EDX,%EBX
jge end_while
mov sentence(%EBX),%CH
mov sentence(%EDX),%CL
inc %EBX
dec %EDX
cmp %CH, %CL
je begin
mov $0, %EAX
end_while:
nop
