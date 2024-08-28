.section .data
.globl number
number: .word 123456

.section .text
.globl main
main:
la $t0, number
lw $t1, 0($t0)


#0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 | 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0

lui $t2, 0b0111011111111111
ori $t3, $t2, 0b101111111111110

and $t4, $t3, $t1

addiu $v0, $0, 0
jr $ra

