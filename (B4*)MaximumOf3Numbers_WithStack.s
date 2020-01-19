.globl _start
.text
_start:
pushl %EAX
pushl $14
pushl $20
pushl $5
call max
nop

max:
mov 4(%ESP), %EAX
cmp %EAX, 8(%ESP)
jl end_if
mov 8(%ESP),%EAX
end_if:
cmp %EAX, 12(%ESP)
jl end_if2
mov 12(%ESP),%EAX
end_if2:
ret $12
