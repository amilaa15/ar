.section .text
.globl foo
foo:

# d1 u f12
# f1 u f14
# f2 u a3

mtc1 $a3, $f4

cvt.d.s $f4, $f4

c.lt.d $f4, $f12
bc1f if2

cvt.d.s $f14, $f14

add.d $f0, $f14, $f4
sub.d $f0, $f0, $f12

addiu $t0, $0, 3
mtc1 $t0, $f6
cvt.d.w $f6, $f6

div.d $f0, $f0, $f6
cvt.w.d $f0, $f0

jr $ra


if2:
  cvt.d.s $f4, $f4

  c.eq.d $f12, $f4
  bc1f if3

  cvt.d.s $f14, $f14

  c.eq.d $f12, $f14
  bc1t if3

  addiu $t0, $0, 0
  mtc1 $t0, $f6
  cvt.d.s $f6, $f6

  c.eq.d $f12, $f6
  bc1t if3

  addiu $t1, $0, 3
  mtc1 $t1, $f8
  cvt.d.w $f8, $f8

  mul.d $f0, $f14, $f8
  div.d $f0, $f0, $f12

  jr $ra

if3:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)

  c.lt.d $f12, $f4
  bc1f return

  cvt.d.s $f14, $f14
  c.eq.d $f14, $f12
  bc1f return

  addiu $t2, $0, 0
  mtc1 $t2, $f8
  cvt.d.w $f8, $f8

  c.eq.d $f14, $f8
  bc1t return

  cvt.d.s $f4, $f4
  sub.d $f10, $f12, $f4

  mfc1 $a0, $f10

  jal myabs

  div.d $f0, $f0, $f14
  cvt.w.d $f0, $f0

  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  
  jr $ra

return:
  cvt.d.s $f4, $f4
  cvt.d.s $f14, $f14

  mul.d $f0, $f4, $f14

  addiu $t3, $0, 12
  mfc1 $t3, $f10
  cvt.d.w $f10, $f10

  sub.d $f0, $f0, $f10

  mul.d $f0, $f0, $f12
  cvt.w.d $f0, $f0

  jr $ra





  





