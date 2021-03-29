.data
	msgPreco: .asciiz "Digite o valor da caixa: "
	msgQtde: .asciiz "Quantidade de caixas: "
	
	preco: .float 0.0
	qtde: .float 0.0
	valorFinal: .float 0.0
.text
	li $v0, 4		# Carrega o código que lê String
	la $a0, msgPreco	# Imprime msgPreco
	syscall
	
	li $v0, 6		# Carrega o codigo que lê Float
	syscall
	
	s.s $f0, preco		# Aloca o valor lido na variavel preco
	
	li $v0, 4		# Carrega o codigo que lê String
	la $a0, msgQtde		# Imprime msgQtde
	syscall
	
	li $v0, 6		# Carrega o código que lê Float
	syscall
	
	s.s $f0, qtde		# Aloca o valor lido na variavel qtde
	la $a0, preco		# Carrega o valor de preco em a0
	l.s $f1, 0($a0)		# Define f1 com o valor de a0 (preco)
	
	la $a0, qtde		# Aloca o valor de qtde em a0
	l.s $f2, 0($a0)		# Define f2 com o valor de a0 (qtde)
	
	mul.s $f1, $f1, $f2	# Realiza a multiplicacao de pontos flutuantes $f1 = $f1 + $f2
	s.s $f1, valorFinal	# Aloca o valor da multiplicacao em f1
	
	li $v0, 2		# Carrega o codigo que le float
	l.s $f12, valorFinal	# Imprime float (valorFinal)
	syscall
	
