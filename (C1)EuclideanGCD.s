.globl _start
.text
_start:
mov $65, %EAX
mov $40, %ECX
call euclid
nop

euclid:
while:
xor %EDX, %EDX
div %ECX
cmp $0, %EDX
je end
mov %ECX, %EAX
mov %EDX, %ECX
jmp while
end:
ret
