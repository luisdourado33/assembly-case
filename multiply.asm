.data
	precoCaixa: .asciiz "Digite o preco da caixa: "
	qtde: .asciiz "Quantidade de caixas: "
	
	valorFinal: .asciiz "Total a pagar: \n"
	baixo: .asciiz "\nValor (baixo aproximado): R$ "
	alto: .asciiz "\nValor (alto aproximado): R$"

.text
	.globl main

main:
	li $v0, 4
	la $a0, precoCaixa
	syscall
	
	li $v0, 6
	syscall
	
	move $a0, $f0
	syscall
	
	li $v0, 2
	la $a0, precoCaixa
	syscall

End_Prog:
	li $v0, 10
	syscall