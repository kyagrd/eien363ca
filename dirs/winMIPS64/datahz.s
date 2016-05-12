# data hazard example on page 284 using MIPS64
#
.data
arr: .word 1 .word 2 .word 3 .word 99 .word 98
#
.text
main:
daddi $t0, $r0, arr ### la $t0, arr
nop
nop
nop
nop
lw $t1, 0($t0)
lw $t2, 4($t0)
dadd $t3, $t1, $t2 ### add $t3, $t1, $t2
sw $t3, 12($t0)
lw $t4, 8($t0)
dadd $t5, $t1, $t4 ### add $t5, $t1, $t4
sw $t5, 16($t0)
halt
