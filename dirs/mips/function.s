# function.s
#
# 함수 호출 예제
#
# int addd(int x, int y) { return x+y; }
# int twice(int x) { return addd(x,x); }
# int main(void) {
#   int n = twice(8);
#   printf("%d\n", n);
#   return 0;
# }

        .data
endl:	.asciiz "\n"

        .text
        .globl main

addd:
	add $v0, $a0, $a1
	jr $ra

twice:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	move $a1, $a0
	jal addd
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

main:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	li $a0, 8
	jal twice
	move $t0, $v0

	# print integer value in t0
	li $v0, 1       # syscall 1 (print_int)
	move $a0, $t0   # argument: integer 
 	syscall         # print the integer 

	# print a newline charactor
	li $v0, 4       # syscall 4 (print_string)
	la $a0, endl    # argument: string
	syscall         # print the string

	lw $ra, 0($sp)
	addi $sp, $sp, 4
  	jr $ra          # retrun to caller

