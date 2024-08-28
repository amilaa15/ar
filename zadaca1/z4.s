.section .data
.globl niz
niz: .hword 1, 19, 350, 740, 1522 #98

.globl size
size: .word 5

.globl result
result .word 0


.section .text
.globl main
main:
    la $t0, niz  #u t0 ucitaj adresu niza
    la $t8, size
    lw $t8, 0($t8)
    sll $t9, $t8, 1 #mnozim size sa 2, da bih dobila dimenzije steka
    add $t9, $t9, $t0 #kraj niza

loop:
    lh $t1, 0($t0)  #ucitaj vrijednost t0 u t1
    lh $t2, 2($t0)  #ucitaj drugi clan niza
    ble $t2, $t1, not_sorted
    addi $t0, $t0, 2
    bne $t0, $t9, loop

andi $t3, $t8, 1  #modul 2, ako vraca 1 (T) neparan

beq $t3, $0, medijan_parnog
srl $t4, $t8, 1 #dijelimo size na pola pa dobijamko srednji element niza
sll $t5, $t4, 1 #offset od adrese na steku od srednjeg clana
add $t6, $t5, $t0 #adresa srednjeg elementa
lh $t6, 0($t6) #vrijednost srednjeg elementa
la $t7, result
sh $t6, 0($t7) #spremila srednje element u result
jr $ra

medijan_parnog:
    srl $t4, $t8, 1 #dijelimo size na pola pa dobijamo size/2
    sll $t5, $t4, 1 #offset od adrese na steku od srednjeg clana
    add $t6, $t5, $t0 #adresa srednjeg elementa
    lh
    # loadat vrijednost iz t6 u neki nakon toga u t4 oduzet 1 i ponovit sve isti ya dobijeni
    # sabrat ta dva broja pa podijeliti sa dva pa sscuvati na result










    






