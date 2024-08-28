.section .text
.globl bar
bar:

# f1 u f12
# f2 u f14
# d1 u a2 i a3
mtc1 $a2, $f6
mtc1 $a3, $f7

c.lt.s $f12, $f14
bc1f else

addiu $t0, $0, 2
mtc1 $t0, $f8
cvt.s.w $f8, $f8

ceil.w.s $f10, $f12
cvt.s.w $f10, $f10

mul.s $f0, $f8, $f10

round.w.s $f10, $f14
cvt.s.w $f10, $f10

sub.s $f0, $f0, $f10

trunc.w.d $f10, $f6
cvt.d.w $f10, $f10
cvt.d.s $f0, $f0

add.d $f0, $f0, $f10
cvt.s.d $f0, $f0

jr $ra

else:
  c.eq.s $f12, $f14
  bc1f end

  ceil.w.s $f8, $f12
  cvt.s.w $f8, $f8

  floor.w.s $f10, $f14
  cvt.s.w $f10, $f10

  sub.s $f0, $f8, $f10

  trunc.w.d $f8, $f6
  cvt.s.w $f8, $f8

  add.s $f0, $f0, $f8

  jr $ra

end:
  cvt.s.d $f0, $f6
   
  jr $ra




