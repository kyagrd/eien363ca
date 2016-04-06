# hw2.s
#
# 이름:
# 학번:
#
# 과제2:
# binomial coefficent (n개에서 k개를 순서없이 선택하는 경우의 수) 
# 수업시간에 다룬 factorial.s 와 마찬가지 방식으로 재귀함수로 구현
#
# C로 작성된 binomial coefficent 재귀함수 예제
#
# int choose(int n, int k) {
#   if (n < k) return 0;
#   if (k < 1) return 1; // k==0
#   return choose(n -1 , k - 1) + choose(n - 1, k);
# }
# int main(void) {
#   int num = fact(10,5);
#   printf("%d\n", n);
#   return 0;
# }

        .data
endl:	.asciiz "\n"

        .text
        .globl main

choose:
	####################################################
	# 여기에 choose 함수 작성
	# 함수 인자가 2개이므로 a0, a1을 활용
	# 리턴값은 v0에 저장
	# 재귀 함수 호출이 한번이 아니라 두번 일어남에 유의
	####################################################
	jr $ra

main:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	li $a0, 10
	li $a1, 5
	jal choose
	move $t0, $v0 # save result in t0

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

