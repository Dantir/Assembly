.globl _start
.data
array: .long 4,5,6,7,8,9
endarray:
.equ size, (endarray-array)/4
.text
_start:
xor %ECX, %ECX
mov $1, %EAX
mov $0, %EBX
while:
   cmp $size, %ECX
   jge end
   mov %EAX, array(,%ECX,4)
   add %EAX, %EBX
   xchg %EAX,%EBX
   inc %ECX
   jmp while
end:
nop
