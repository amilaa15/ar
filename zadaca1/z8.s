.section .data
.globl buffer
buffer: .asciiz
.globl number
number .word 15
.globl numit
numit: "\nbroj iteracija %d\n"

.section .text
.globl main:
main:
    addiu $sp, $sp, -64
    sw $ra, 20($sp)

    la $a0, buffer
    la $t0, number
    lw $a1, ($t0)
    jal tobinary

    la $a0, numit
    
    addi $t0, $0, 0 #brojac za iteracije


