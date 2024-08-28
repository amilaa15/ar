.section .data
str: .asciiz "foo(%d, %d)=%hd\n"

.section .text
.globl main
main:
addiu $sp, $sp, -64
sw $ra, 60($sp)

addi $t2, $0, 2 #i=1 zbog for petlje

addi $t6, $t6, 6
sw $t6, 56($sp)

#addi $t3, $0, 3 #j=3

addi $t7, $t7, 7 
sw $t7, 52($sp)


for1:
    #addiu $t2, $t2, 1  
    slt $t0, $t2, $t6
    beq $t0, $0, end 
    addi $t3, $0, 3 #j=3
                    #ovo pisemo u for1 petlji da bi se inkrementiralo automatski
    addiu $t2, $t2, 1  

    for2:
        slt $t4, $t3, $t7
        beq $t4, $0, for1

        addi $a0, $t2, 0
        addi $a1, $t3, 0

        sw $t2, 48($sp)
        sw $t3, 44($sp)

        jal foo

        #ovdje su argumenti printf funkcije
        la $a0, str
        addiu $a1, $t2, 0
        addiu $a2, $t3, 0
        addiu $a3, $v0, 0 #povratna vrijednost foo

        jal printf

        lw $t3, 44($sp)
        lw $t2, 48($sp)
        lw $t7, 52($sp)
        lw $t6, 56($sp)

        addi $t3, $t3, 1

        j for2

    end:
    sw $ra, 60($sp)
    addiu $sp, $sp, 64

    jr $ra



foo:
    slti $t0, $a0, 2 #a<2
    beq $t0, $0, elseif
    addiu $v0, $0, 0;
    jr $ra

    elseif:
        slti $t1, $a1, 3 #b<3
        beq $t1, $t0, ifsecond
        addiu $v0, $0, 1
        jr $ra

    ifsecond:
        addiu $sp, $sp, -64
        sw $ra, 60($sp)

        sh $a0, 58($sp)
        sh $a1, 56($sp)

        slt $t2, $a0, $a1 #a<b
        beq $t2, $0, elsesecond

        addiu $a0, $a0, -1
        addiu $a1, $a1, -3

        jal foo

        lh $a0, 58($sp)
        lh $a1, 56($sp)

        addu $v0, $v0, $a0

        lw $ra, 60($sp)
        addiu $sp, $sp, 64

        jr $ra

        elsesecond:
            addiu $a0, $a0, -2
            addiu $a1, $a1, -1

            jal foo

            lh $a0, 58($sp)
            lh $a1, 56($sp)

            addu $v0, $v0, $a0
            subu $v0, $v0, $a1

            lw $ra, 60($sp)
            addiu $sp, $sp, 64

            jr $ra











    
