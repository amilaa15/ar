.section .data
.globl a
a: .byte 5
.globl b
b: .byte 7

.section .bss
.globl c
c: .byte


.section .text
.globl main
main:

la $t1, a
lbu $t1, ($t1)
la $t2, b
lbu $t2, ($t2)

slt $t3, $t1, $t2
beq $t3, $0, else

bne $t1, $t2, else

addu $t0, $0, $t1
j izlaz

else:
addu $t0, $0, $t2

izlaz:
la $t0, c
addu $t0, $t1, $t2
sll $t0, $t0, 1

addiu $v0, $0, 0
jr $ra




