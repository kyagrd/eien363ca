# loop.s
#
# 과제1을 돕기 위한 MIPS 어셈블리로 반복문 프로그래밍하는 예시 프로그램
# 0부터 9까지의 정수 출력

        .data
endl:	.asciiz "\n"

        .text
        .globl main
main:
	li $t0, 0  # 인덱스 변수로 사용할 t0를 0으로 초기화
	li $t9, 10 # 인덱스 최대 허용값보다 하나 더 큰 값 t9에 저장
loop:
	bge $t0, $t9, endloop # t0 >= t9 이면 루프 종료 (조건 점프)

	# print integer value in t0
	li $v0, 1       # syscall 1 (print_int)
	move $a0, $t0   # argument: integer 
 	syscall         # print the integer 

	# print a newline charactor
	li $v0, 4       # syscall 4 (print_string)
	la $a0, endl    # argument: string
	syscall         # print the string

	add $t0, $t0, 1

	j loop # 루프 처음으로 되돌아감 (무조건 점프)

endloop:
        
  	jr $ra          # retrun to caller

