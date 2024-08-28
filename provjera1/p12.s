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
bne $t3, $0, manje

addu $t0, $0, $t2
j izlaz

manje:
addu $t0, $0, $t1

izlaz:
#nastavit ce se
