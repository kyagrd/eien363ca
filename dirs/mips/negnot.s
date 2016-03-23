# negnot.s
        .data
endl:	.asciiz "\n"

        .text
        .globl main
main:
	li $t1, 153
	neg $t2, $t1 # t2 is a negation of t1 as an integer value
	not $t3, $t1 # t3 is a bitwise negation of t1
	add $t0, $t1, $t3

	# print integer value in t0
	li $v0, 1       # syscall 1 (print_int)
	move $a0, $t0   # argument: integer 
 	syscall         # print the integer 

	# print a newline charactor
	li $v0, 4       # syscall 4 (print_string)
	la $a0, endl    # argument: string
	syscall         # print the string
        
  	jr $ra          # retrun to caller

