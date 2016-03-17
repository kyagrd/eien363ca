# addition.s
#
# MIPS로 하는 덧셈 예제

        .data
endl:	.asciiz "\n"
# var0:	.word	4	# var0 위치에 4 저장 (메모리에 저장한 정수 변수)
# var1:	.word	5	# var1 위치에 4 저장 (메모리에 저장한 정수 변수)

        .text
        .globl main
main:
	addi $t1, $zero 4
	addi $t0, $t1, 5

	# li $t1, 4
	# addi $t0, $t1, 5

	# li $t1, 4
	# li $t2, 5
	# add $t0, $t1, $t2

	# lw $t1, var0
	# lw $t2, var1
	# add $t0, $t1, $t2

	# print integer value in t0
	li $v0, 1       # syscall 1 (print_int)
        move $a0, $t0   # argument: integer 
        syscall         # print the integer 

	# print a newline charactor
	li $v0, 4       # syscall 1 (print_string)
        la $a0, endl    # argument: string
        syscall         # print the string
        
        jr $ra          # retrun to caller

