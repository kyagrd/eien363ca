# Cotrol hazard that can be elimiated by "Assume Branch Not Taken" described
# on page 306 of our textbook. Assuming that all registers t1 and t2 are
# initalized as zero, beq always fails to take a branch. However, since j
# always takes a branch, j might still incur a stall when experimenting with
# winMIPS64
#
.data
#
.text
main:
	dadd $t4, $t5, $t6
	beq $t1, $t2, label
	or $t7, $s1, $s2
label:
	dsub $t4, $t5, $t6
	dsub $t4, $t5, $t6
	dsub $t4, $t5, $t6
	j main
	halt
