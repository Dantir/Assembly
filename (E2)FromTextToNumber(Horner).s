.globl _start
.data
numbers: .asciz "7561"
ten: .long 10
.text
_start:
mov $0, %ECX
mov $0, %EBX
mov $0, %EAX
begin:
mov numbers(%EBX),%CL
cmp $0, %CL
je end_while
mull ten
sub $48, %CL
add %ECX, %EAX
inc %EBX
jmp begin
end_while:
nop
