.data
primeiraMsg: .asciiz "Digite o primeiro valor: "
segundaMsg: .asciiz "Digite o segundo valor: "
terceiraMsg: .asciiz "Digite o terceiro valor: "

.text
 # Imprime a primeira mensagem
 li $v0, 4
 la $a0, primeiraMsg
 syscall

 # Instrucao: Leitura de inteiro
 li $v0, 5
 syscall

 # Aloca o primeiro inteiro em $t0
 move $t0, $v0

 # Imprime a segunda mensagem
 li $v0, 4
 la $a0, segundaMsg
 syscall

 # Instrucao: Leitura de inteiro
 li $v0, 5
 syscall

 # Aloca o segundo inteiro em $t1
 move $t1, $v0

 # Imprime a terceira mensagem
 li $v0, 4
 la $a0, terceiraMsg
 syscall

 # Instrucao: Leitura de inteiro
 li $v0, 5
 syscall

 # Aloca o primeiro inteiro em $t2
 move $t2, $v0

 # Determina o maior valor
 bge $t0, $t1, L0
 bge $t1, $t0, L3


 li, $v0, 10
 syscall

 L0:
   bge $t0, $t2, L2
   bge $t2, $t0, L3

 L2:
   li $v0, 1
   move $a0, $t0
   syscall
   li, $v0, 10
   syscall

 L3:
   bge $t1, $t2, L4
   bge $t2, $t1, L5

 L4:
    li $v0, 1
    move $a0, $t1
    syscall
    li, $v0, 10
    syscall

 L5:
    li $v0, 1
    move $a0, $t2
    syscall
    li, $v0, 10
    syscall


 li, $v0, 10
 syscall