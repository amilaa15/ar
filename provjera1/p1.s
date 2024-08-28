# const int CONST=11;
# int a=5;
# static short b=7;
# char c;
# int d=CONST;
# int niz[1200];

# int main(void){
#   c=b;
#   return(niz[0]);
# }

.section .rodata
.globl CONST
CONST: .word, 11

.section .data
.globl a
a: .word, 5
b: .hword, 7
.globl d
d: .word, 11

.section .bss
.globl c
c: .byte
.globl niz
niz: .size, 1200

.section .text
.globl main
main:
  la $t0, c
  la $t1, b
  lh $t1, ($t1)
  sb $t1, ($t0)

  la $t0, niz
  lw $t0, ($t0)

  addu $v0, $0, $t0
  jr $ra
