.section .data
.globl a
a: .byte 25
.globl b
b: .byte -2
.globl c
c: .byte -10
.globl d
d: .hword 40000
.globl e
e: .hword 40000
.globl x
x: .word 3400
.globl y
y: .word 2800

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
la $t1, f
lbu $t0, $(t0)
addiu $t1, $t0, 190

la $t0, b
la $t1, g
lb $t0, ($t0)
addiu $t1, $t0, -12

la $t0, c
la $t1, h
lbu $t0, ($t0)
addiu $t1, $t0, 15

la $t0, d
la $t1, i
lhu $t0, ($t0)
ori $t2, $0, 45000
subu $t1, $t0, $t2

la $t0, e
la $t1, j
lhu $t0, ($t0)
ori $t2, $0, 45000
subu $t1, $t0, $t2

la $t0, x
la $t1, y
la $t2, z
lw $t0, ($t0)
lw $t1, ($t1)
addu $t2, $t0, $t1

addiu $v0, $0, 0
jr $ra
