.globl _start

.data
   arr: .long 6, 3, 8, 1, 2, 9, 7, 5
   end_arr: 
.equ size, (end_arr - arr)/4

.text
bsort:
# on stack parameter passing
   mov 4(%ESP), %EBX # array address
   mov 8(%ESP), %ECX # size (num of items)
   
repeat:
   mov $1, %ESI # index of array item
   mov $0, %EDX # used to indicate the exchange if items
while:
   cmp %ECX, %ESI #end of array checking
   jge end_while
   mov -4(%EBX, %ESI, 4), %EAX
   cmp %EAX, (%EBX, %ESI, 4)
   jge end_if
   xchg %EAX, (%EBX, %ESI, 4)
   mov %EAX, -4(%EBX, %ESI, 4)
   mov $1, %EDX
end_if:
   inc %ESI
   jmp while
end_while:
   cmp $0, %EDX
   jg repeat
   ret $8

_start:
   pushl $size
   pushl $arr
   call bsort
   nop
