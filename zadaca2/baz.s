.section .text
.globl baz
baz:

# f1 u f12
# p1 u a1
# f2 u a2
# n u a3

addiu $t0, $0, 0
mtc1 $t0, $f4
cvt.d.w $f4, $f4

lwc1 $f6, 0($a1)
lwc1 $f7, 4($a1)

c.eq.d $f6, $f4
bc1t return1

mtc1 $a2, $f8
add.s $f10, $f12, $f8

mtc1 $a3, $f16
cvt.s.w $f16, $f16

c.lt.s $f10, $f16
bc1f if2

return1:
  mul.s $f0, $f8, $f16
  add.s $f0, $f0, $f12
  cvt.d.s $f0, $f0

  jr $ra

if2:
  c.eq.d $f6, $f4
  bc1t return

  cvt.d.s $f8, $f12

  mtc1 $a2, $f10
  cvt.d.s $f10, $f10

  mtc1 $a3, $f16
  cvt.d.w $f16, $f16

  mul.d $f0, $f10, $f16
  sub.d $f0, $f8, $f0

  div.d $f0, $f0, $f6
  
  jr $ra

return:
  cvt.d.s $f8, $f12
  mul.d $f0, $f8, $f6

  mtc1 $a3, $f10
  cvt.d.w $f10, $f10

  add.d $f0, $f0, $f10

  mtc1 $a2, $f16
  cvt.d.s $f16, $f16

  add.d $f0, $f0, $f16

  jr $ra





