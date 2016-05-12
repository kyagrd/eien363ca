# Cotrol hazard that can be alleviated by "Dynamic Branch Prediction" on
# page 306 of our textbook. Assuming that all registers t1 and t2 are
# initalized as zero, beq always succeeds to take a branch, and, j as well.
# Both needs to pay buffer initializaion overhead for their branching history,
# but the pipile will be filled without stalls afterwards.
#
.data
#
.text
main:
	dadd $t4, $t5, $t6
	bne $t1, $t2, label
	or $t7, $s1, $s2
label:
	dsub $t4, $t5, $t6
	dsub $t4, $t5, $t6
	dsub $t4, $t5, $t6
	j main
	halt
