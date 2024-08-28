.section .data
.globl number
number: .word 11
.globl result 
result: .word 0

.section .text
.globl main
main:

la $t0, number
lw $t1, 0($t0)

#provjerava je li paran
andi $t2, $t1, 1
xori $t3, $t2, 1

#number x22
sll $t4, $t1, 4
sll $t5, $t1, 2
add $t6, $t5, $t4 #20 number
add $t7, $t6, $t1
add $t8, $t7, $t1 #22 number 

#number x7
sll $t2, $t1, 2
sll $t3, $t1, 1
add $t4, $t2, $t3 #6 number
add $t5, $t4, $t1 #7 number

#modul 8
andi $t6, $t0, 7

#modul 32
andi $t8, $t0, 31

la $t1, result
sw $t2, 0($t1)

addiu $v0, $0, 0

jr $ra





