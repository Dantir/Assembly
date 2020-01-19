.globl _start
.text
_start:
mov $-7, %ECX
mov $4, %EDX
sub %ECX, %EDX
mov %EDX, %EBX
jge end_if
neg %EBX
end_if:
nop
