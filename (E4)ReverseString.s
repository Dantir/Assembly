.globl _start
.data
arr: .asciz "Something"
endarr:
.equ size,endarr-(arr+2)
.text
_start:
xor %EBX,%EBX
mov $size, %ECX
while:
cmp %ECX,%EBX
jge endwhile
mov arr(%EBX),%DL
xchg %DL,arr(%ECX)
mov %DL,arr(%EBX)
inc %EBX
dec %ECX
jmp while
endwhile:
nop
