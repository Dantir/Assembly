.globl _start
.data
sentence: .asciz "Alice  has TWO2 cats"
.text
_start:
mov $0, %EBX
begin:
mov sentence(%EBX),%AL
cmpb $0, %AL
je end_while
cmpb $'a', %AL
jl end_if
cmpb $'z', %AL
jg end_if
add $-32, sentence(%EBX)
end_if:
inc %EBX
jmp begin
end_while:
nop
