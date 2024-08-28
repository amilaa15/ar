.section .data
.globl str
str: .byte 'a', 'm', 'i', 'l', 'a', '\0'

.globl result
result: .byte #ako bude 1 palindrom je ako bude 0 nije


.section .text
.globl main
main:
    la $t0, str #ucitaj u t0 adresu od str
    lb $t1, 0($t0) #ucitaj vrijednost od t0 u t1
    addi $t2, $0, '\0' #korisit cu za uporedjivanje sa \0
    la $t3, str #bit ce posljednji clan niza
    j loop
    endofstr:
        addi $t3, $t3, 1 #brojac, tj inkrement
        loop:
            lb $t4, 1($t3) #prvom iteracijom dobijamo drugi elemnt od str
                            #daljim iteracijama dobijamo svaki sljedeci
    bne $t3, $t0, endofstr  

    addi $t5, $0, 0 #izlazna vrijednost, ostat ce nula ako nije palindrom

    palindrom: #petlja
        lb $t6 0($t0)
        lb $t7 0($t3)
        bne $t6, $t7, store
        addi $t0, $t0, 1 #predji na sljedeci clan
        addi $t3, $t3, -1 #predji na prethodni clan
    ble $t0, $t3, palindrom

    addi $t5, $0, 1 #izlazna vrijednost je 1 jer je kroz petlju pokazano da je palindorom

    addi $t8, $0, 1 #palindrom je

    store:
        la $t1, result
        sw $t5, 0($t1)








