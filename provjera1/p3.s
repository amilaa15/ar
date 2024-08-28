.section .data
.globl a
a: .byte, 25
.globl b
b: .byte, -2
.globl c
c: .byte, -10
.globl d
d: .hword, 40000
.globl e
e: .hword, 40000
.globl x
x: .word, 3400
.globl y
y: .word, 2800

.section .bss
.globl f
f: .word
.globl g
g: .hword
.globl h
h: .hword
.globl i
i: .word
.globl j 
j: .word
.globl z
z: .word

.section .text
.globl main
main:

la $t0, a
lbu $t1, ($t0)
addiu $t1, $t1, 190
la $t0, f
sw $t1, ($t0)

la $t0, b
lb $t1, ($t0)
addiu $t1, $t1, -12
la $t0, g
sh $t1, ($t0)

la $t0, c
lbu $t1, ($t0)
addiu $t1, $t1, 15
la $t0, h
sh $t1, ($t0)

la $t0, d
lhu $t1, ($t0)
ori $t2, $0, 45000
subu $t1, $t1, $t2
la $t0, i
sw $t1, ($t0)

la $t0, e
lhu $t1, ($t0)
ori $t2, $0, 45000
subu $t1, $t1, $t2
la $t0, j
sw $t1, ($t0)

la $t0, x
lw $t1, ($t0)
la $t0, y
lw $t2, ($t0)
addu $t1, $t1, $t2
la $t0, z
sw $t1, ($t0)

addiu $v0, $0, 0
jr $ra




