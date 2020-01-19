.globl _start
.text
_start:
 pushl %EAX
 pushl $7
 pushl $13
 pushl $4
 pushl $20
 pushl $17
 pushl $5
 call max
 add $24, %ESP
 nop

max:
mov 4(%ESP), %ECX
mov 4(%ESP,%ECX,4),%EAX
dec %ECX
cmp $0, %ECX
je endwhile
while:
 cmp %EAX, 4(%ESP,%ECX,4)
 jle endif
 mov 4(%ESP,%ECX,4), %EAX
 endif:
  loop while
 endwhile:
  ret
