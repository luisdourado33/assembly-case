.data
	msg: .asciiz "Digite um n�mero: "
	par: .asciiz "O n�mero � par."
	impar: .asciiz "O n�mero � �mpar."
.text
	# Imprime a mensagem
	li $v0, 4
	la $a0, msg
	syscall
	
	# L� o n�mero
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 # Possui o resto da divis�o do valor lido, por 2
	
	beq $t1, $zero, ehPar 	# Se o resto for igual a zero, o valor eh par
	
	li $v0, 4
	la $a0, impar
	syscall
	
	# Encerra programa
	li $v0, 10
	syscall
	
	ehPar:
		li $v0, 4
		la $a0, par
		syscall