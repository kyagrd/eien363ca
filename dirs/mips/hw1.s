# hw1.s
#
# 이름:
# 학번:
#
# 과제1:
# 정수 배열(연속된 메모리에 저장된 정수들)의 합을 구하는 프로그램 작성
# 수동 반복이 아니라 jump/branch 연산을 이용해 작성할 것

        .data
endl:	.asciiz "\n"
arr:	.word	1 # arr 은 크기 10인 정수 배열에 해당
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10


        .text
        .globl main
main:
	move $t0, $zero # t0을 0으로 초기화 (합을 저장할 레지스터)
	la $s0, arr     # s0에 arr 주소값 저장

	###########################
	## 수동으로 10번 반복 덧셉
	###########################
	#
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# lw $t1, 4($s0)
	# add $t0, $t0, $t1
	# lw $t1, 8($s0)
	# add $t0, $t0, $t1
	# lw $t1, 12($s0)
	# add $t0, $t0, $t1
	# lw $t1, 16($s0)
	# add $t0, $t0, $t1
	# lw $t1, 20($s0)
	# add $t0, $t0, $t1
	# lw $t1, 24($s0)
	# add $t0, $t0, $t1
	# lw $t1, 28($s0)
	# add $t0, $t0, $t1
	# lw $t1, 32($s0)
	# add $t0, $t0, $t1
	# lw $t1, 36($s0)
	# add $t0, $t0, $t1
	#
	##########################


	############################################################
	## 수동으로 10번 반복 덧셉 (좀더 루프 돌리는 버전에 가깝께)
	############################################################
	#
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	# addi $s0, $s0, 4
	# lw $t1, 0($s0)
	# add $t0, $t0, $t1
	#
	#########################


	#########################
	#
	# 이곳에 jump/branch 연산을 이용해 C의 반복문과 같은 형태로
	# 합을 구하는 프로그램 작성하기 (함산 결과는 t0에 저장)
	#
	#########################


	# print integer value in t0
	li $v0, 1       # syscall 1 (print_int)
	move $a0, $t0   # argument: integer 
 	syscall         # print the integer 

	# print a newline charactor
	li $v0, 4       # syscall 4 (print_string)
	la $a0, endl    # argument: string
	syscall         # print the string
        
  	jr $ra          # retrun to caller

