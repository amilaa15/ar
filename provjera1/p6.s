.section .data
.globl number
number: .word 12

.globl result
result: .word 0

.section .text
.globl main
main:

la $t0, number
lw $t0, ($t0)

andi $t1, $t0, 1
xori $t1, $t1, 1

sll $t1, $t0, 4  #x16
sll $t2, $t0, 2  #x6
addu $t3, $t1, $t2  #x20
addu $t3, $t3, $t0
addu $t3, $t3, $t0  #x22

sll $t1, $t0, 2   #x4
sll $t2, $t0, 1   #x2
addu $t3, $t1, $t2
addu $t3, $t2, $t0  #x7

#modul I nacin
andi $t1, $t0, 7

andi $t1, $t0, 31

#modul II nacin
srl $t1, $t0, 8  #12/8=1
sll $t2, $t1, 3   #1x8=8
subu $t3, $t0, $t2  #12-8=4

srl $t1, $t0, 32  #12/32=0
sll $t2, $t1, 5   #0x32=0
subu $t3, $t0, $t2  #32-0=32










