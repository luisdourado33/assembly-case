.data
	msg: .asciiz "Hello World!"
.text
	li $v0, 4 # Print a String or Char
	la $a0, msg
	syscall