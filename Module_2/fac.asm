.data
     num: .space 4
     promt: .asciiz "Enter Number to get factorialled: "
     
.text
     main:
        li $v0, 4
        la $a0, prompt
        syscall
        
        li $v0, 5
        syscall 
        
        addi $t0, $zero, 1  #loop counter
        addi $t1, $zero, 1  #result
        while:
            bgt $t0, $v0, exit
            mul $v0, 
            j while
        exit:
