.data
	msg: .asciiz "Digite um número: "
	par: .asciiz "O número é par."
	impar: .asciiz "O número é ímpar."
.text
	# Imprime a mensagem
	li $v0, 4
	la $a0, msg
	syscall
	
	# Lê o número
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 # Possui o resto da divisão do valor lido, por 2
	
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