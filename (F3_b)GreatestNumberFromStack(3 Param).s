.globl _start
.text
_start:
 pushl %EAX
 pushl $7
 pushl $13
 pushl $4
 call max
 nop

max:
mov 4(%ESP), %EAX
cmp %EAX, 8(%ESP)
jle endif
mov 8(%ESP), %EAX
endif:
cmp %EAX, 12(%ESP)
jle endif2
mov 12(%ESP),%EAX
endif2:
ret $12
