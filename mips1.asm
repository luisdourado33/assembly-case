.data
	# �rea para dados na mem�ria principal
	msg: .asciiz "Hello World!" # Mensagem a ser exibida ao usu�rio
.text
	# �rea para instru��es do programa
	li $v0, 4 # Instru��o para impress�o de String
	la $a0, msg # Indica o endere�o em que est� a mensagem
	syscall # Fa�a! Imprima!