.section .text
.globl mymax
mymax:

# start u f12
# nums u a2
# size u a3

addiu $t0, $0, 0
for:
  slt $t1, $t0, $a3
  beq $t1, $0, endfor

  sll $t2, $t0, 3
  addu $t3, $a2, $t2

  lwc1 $f4, 0($t3)
  lwc1 $f5, 4($t3)

  #mov.d $f6, $f12

  c.lt.d $f12, $f4
  bc1f endif

  mov.d $f12, $f4

  endif:
    addiu $t0, $t0, 1
    j for

  endfor:
    mov.d $f0, $f12

    jr $ra





