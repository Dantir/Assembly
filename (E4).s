.globl _start

.data
str: .asciz "AbcXyz123"

.text

reverse:
    mov 4(%ESP), %ESI
    mov %ESI, %EDI

while1:
    cmp $0, (%EDI)
    je end_while1
    inc %EDI
    jmp while1
end_while1:
    dec %EDI

while2:
    cmp  %ESI, %EDI
    jle  end_while2
    mov  (%ESI), %AL
    xchg (%EDI), %AL
    mov  %AL, (%ESI)
    inc %ESI
    dec %EDI
    jmp while2
end_while2:
    ret $4

_start:
    pushl $str
    call reverse
    nop
