.section .rodata
.globl CONST
CONST: .word 11

.section .data
.globl a
a: .word 5
b: .hword 7
.globl d
d: .word 11

.section .bss
.globl c
c: .byte
.globl niz
niz: .size 1200


.section .text
.globl main
main:

la $t0, b
la $t1, c
lh $t0, ($t0)
sb $t0, ($t1)

la $t0, niz
lw $t0, ($t0)

addu $v0, $0, $t0
jr $ra
