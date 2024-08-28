.section .data
.globl number
number: .word 11
.globl result
result: .word #.byte 0

.section .text
.globl main
main:
la $t0, number 
lw $t0, 0($t0) 

andi $t1, $t0, 1
xori $t2, $t1, 1

la $t0, result
sw $t3, 0($t0)

addiu $v0, $0, 0

jr $ra


