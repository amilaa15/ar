# uint8_t a = 5;
# uint8_t b = 7;
# int8_t c;

# int main(int argc, char *argv[])
# {
#  int t0;
#  if (a == b) t0 = a;
#  else t0 = b;
#  c = (a + b) * 2;
#  return 0;
# }

.section .data
.globl a
a: .byte, 5
.globl b
b: .byte, 7
.globl c

.section .bss
.globl c
c: .byte

.section .text
.globl main:
main:

la $t1, a
la $t2, b
lbu $t1, ($t1)
lbu $t2, ($t2)

beq $t1, $t2, jednako
addu $t0, $0, $t2
j izlaz

jednako:
addu $t0, $0, $t1

izlaz:
la $t3, c
addu $t4, $t1, $t2
sll $t4, $t4, 1
sb $t4, ($t3)

addiu $v0, $0, 0
jr $ra







