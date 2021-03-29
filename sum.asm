.text
	li $t0, 75
	li $t1, 25
	
	add $s0, $t0, $t1
	li $v0, 1
	l.s $f12, 
	syscall
	