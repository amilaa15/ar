.section .data
.globl a
a: .byte  5
.globl b
b: .byte  7

.section .bss
.globl c
c: .byte

.section .text
.globl main
main:

; la $t2, a
; lbu $t2, ($t2)
; la $t3, b
; lbu $t3, ($t3)
;
; addiu $t1, $0, 1 #ovdje mi je 1 za poredjenja
;
; slt $t4, $t2, $t3
; beq $t4, $t1, manje
;
; addu $t0, $0, $t3
; j izlaz
;
; manje:
; addu $t0, $0, $t2
;
; izlaz:
; addu $t2, $t2, $t3
; sll $t2, 1
; la $t5, c
; sb $t2, ($t5)
;
; addiu $v0, $0, 0
; jr $ra




la $t2, a
lbu $t2, ($t2)
la $t3, b
lbu $t3, ($t3)

slt $t4, $t2, $t3
beq $t4, $0, nijemanje

addu $t0, $0, $t2
j izlaz

nijemanje:
addu $t0, $0, $t3

izlaz:
addu $t2, $t2, $t3
sll $t2, 1
la $t5, c
sb $t2, ($t5)

addiu $v0, $0, 0
jr $ra
