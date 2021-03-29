.data
	valor: .word 7
.text
	li $v0, 1 # Load Integer
	lw $a0, valor
	syscall