.section .rodata
.globl niz
niz: .hword 12, 3, -9, 1200, -2400, 490, 800, -23, 5, 22

.section .data 
.globl suma
suma: .word 0

.section .bss
.globl najmanji
najmanji: .hword 


.section .text
.globl main
main:

la $t0, niz
la $t1, najmanji
lh $t0, 0($t0) 
sh $t0, $t1   # najmanji=niz[0];


