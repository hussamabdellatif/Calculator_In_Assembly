#Demo (comment)
#Filename: Load Immediate



  .data
  first: .asciiz "input first num:"
  second: .asciiz "input second num:"
  third: .asciiz "input operation (1~4, 1:+,2:-,3:x,4:/)"



  .text

main2:
          li $v0, 4
          la $a0, first
          syscall

          li $v0, 5
          syscall

          #this is the first value
          move $s0, $v0

          li $v0, 4
          la $a0, second
          syscall

          li $v0,5
          syscall

          #second value
          move $s1, $v0

          li $v0, 4
          la $a0, third
          syscall

          li $v0, 5
          syscall

          move $s2, $v0

          li $t0, 1
          li $t1, 2
          li $t2, 3
          li $t3, 4
          li $t4, 5

          beq $s2, $t0, add1
          beq $s2, $t1, subtract1
          beq $s2, $t2, multiply1
          beq $s2, $t3, divide1
          beq $s2, $t4, exit1

    add1:
    add $a0, $s0, $s1
    li $v0, 1
    syscall
    j main2

    subtract1:
    sub $a0, $s0, $s1
    li $v0, 1
    syscall
    j main2

    multiply1:
    mul $a0, $s0, $s1
    li $v0, 1
    syscall
    j main2

    divide1:
    div $a0, $s0, $s1
    li $v0, 1
    syscall
    j main2




    exit1:

        #exit program
          li  $v0, 10
          syscall
