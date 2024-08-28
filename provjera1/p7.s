
#  a     a    a    a      d    2    b    6
# 1010 1010 1010 1010 | 1101 0010 1011 0110 --->t0
# |    |                 |                |        

# maska:
# 0010 0010 1010 1010   1001 0010 1011 0110
#   2    2    a    a      9    2    b    6

.section .text
.globl main
main:

lui $t0, 0xaaaa
ori $t0, 0xd2b6

lui $t1, 0x22aa
ori $t1, 0x92b6

and $v0, $t0, $t1

jr $ra


