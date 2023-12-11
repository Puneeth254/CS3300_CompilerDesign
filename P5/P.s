	.text
	.globl main
main:
	sw $fp, 0($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 392
	li $s0, 0
	li $s1, 2
	li $s2, 4
	li $s3, 6
	li $s4, 8
	li $s5, 10
	li $s6, 12
	li $s7, 14
	li $t0, 16
	li $t1, 18
	li $t2, 20
	li $t3, 22
	li $t4, 24
	li $t5, 26
	li $t6, 28
	li $t7, 30
	li $t8, 32
	li $v0, 34
	sw $v0, -340($fp)
	li $v0, 36
	sw $v0, -8($fp)
	li $v0, 38
	sw $v0, -12($fp)
	li $v0, 40
	sw $v0, -16($fp)
	li $v0, 42
	sw $v0, -20($fp)
	li $v0, 44
	sw $v0, -24($fp)
	li $v0, 46
	sw $v0, -28($fp)
	li $v0, 48
	sw $v0, -32($fp)
	li $v0, 50
	sw $v0, -36($fp)
	li $v0, 52
	sw $v0, -40($fp)
	li $v0, 54
	sw $v0, -44($fp)
	li $v0, 56
	sw $v0, -48($fp)
	li $v0, 58
	sw $v0, -52($fp)
	li $v0, 60
	sw $v0, -56($fp)
	li $v0, 62
	sw $v0, -60($fp)
	li $v0, 64
	sw $v0, -64($fp)
	li $v0, 66
	sw $v0, -68($fp)
	li $v0, 68
	sw $v0, -72($fp)
	li $v0, 70
	sw $v0, -76($fp)
	li $v0, 72
	sw $v0, -80($fp)
	li $v0, 74
	sw $v0, -84($fp)
	li $v0, 76
	sw $v0, -88($fp)
	li $v0, 78
	sw $v0, -92($fp)
	li $v0, 80
	sw $v0, -96($fp)
	li $v0, 82
	sw $v0, -100($fp)
	li $v0, 84
	sw $v0, -104($fp)
	li $v0, 86
	sw $v0, -108($fp)
	li $v0, 88
	sw $v0, -112($fp)
	li $v0, 90
	sw $v0, -116($fp)
	li $v0, 92
	sw $v0, -120($fp)
	li $v0, 94
	sw $v0, -124($fp)
	li $v0, 96
	sw $v0, -128($fp)
	li $v0, 98
	sw $v0, -132($fp)
	li $v0, 100
	sw $v0, -136($fp)
	li $v0, 102
	sw $v0, -140($fp)
	li $v0, 104
	sw $v0, -144($fp)
	li $v0, 106
	sw $v0, -148($fp)
	li $v0, 108
	sw $v0, -152($fp)
	li $v0, 110
	sw $v0, -156($fp)
	li $v0, 112
	sw $v0, -160($fp)
	li $v0, 114
	sw $v0, -164($fp)
	li $v0, 116
	sw $v0, -168($fp)
	li $v0, 118
	sw $v0, -172($fp)
	li $v0, 120
	sw $v0, -176($fp)
	li $v0, 122
	sw $v0, -180($fp)
	li $v0, 124
	sw $v0, -184($fp)
	li $v0, 126
	sw $v0, -188($fp)
	li $v0, 128
	sw $v0, -192($fp)
	li $v0, 130
	sw $v0, -196($fp)
	li $v0, 132
	sw $v0, -200($fp)
	li $v0, 134
	sw $v0, -204($fp)
	li $v0, 136
	sw $v0, -208($fp)
	li $v0, 138
	sw $v0, -212($fp)
	li $v0, 140
	sw $v0, -216($fp)
	li $v0, 142
	sw $v0, -220($fp)
	li $v0, 144
	sw $v0, -224($fp)
	li $v0, 146
	sw $v0, -228($fp)
	li $v0, 148
	sw $v0, -232($fp)
	li $v0, 150
	sw $v0, -236($fp)
	li $v0, 152
	sw $v0, -240($fp)
	li $v0, 154
	sw $v0, -244($fp)
	li $v0, 156
	sw $v0, -248($fp)
	li $v0, 158
	sw $v0, -252($fp)
	li $v0, 160
	sw $v0, -256($fp)
	li $v0, 162
	sw $v0, -260($fp)
	li $v0, 164
	sw $v0, -264($fp)
	li $v0, 166
	sw $v0, -268($fp)
	li $v0, 168
	sw $v0, -272($fp)
	li $v0, 170
	sw $v0, -276($fp)
	li $v0, 172
	sw $v0, -280($fp)
	li $v0, 174
	sw $v0, -284($fp)
	li $v0, 176
	sw $v0, -288($fp)
	li $v0, 178
	sw $v0, -292($fp)
	li $v0, 180
	sw $v0, -296($fp)
	li $v0, 182
	sw $v0, -300($fp)
	li $v0, 184
	sw $v0, -304($fp)
	li $v0, 186
	sw $v0, -308($fp)
	li $v0, 188
	sw $v0, -312($fp)
	li $v0, 190
	sw $v0, -316($fp)
	li $v0, 192
	sw $v0, -320($fp)
	li $v0, 194
	sw $v0, -324($fp)
	li $v0, 196
	sw $v0, -328($fp)
	li $v0, 198
	sw $v0, -332($fp)
	li $v0, 200
	sw $v0, -336($fp)
	la $t9, Test
	lw $v0, -36($fp)
	move $a0, $v0
	lw $v0, -40($fp)
	move $a1, $v0
	lw $v0, -44($fp)
	move $a2, $v0
	lw $v0, -48($fp)
	move $a3, $v0
	lw $v0, -52($fp)
	sw $v0, -8($sp)
	lw $v0, -56($fp)
	sw $v0, -12($sp)
	lw $v0, -60($fp)
	sw $v0, -16($sp)
	lw $v0, -64($fp)
	sw $v0, -20($sp)
	lw $v0, -68($fp)
	sw $v0, -24($sp)
	lw $v0, -72($fp)
	sw $v0, -28($sp)
	lw $v0, -76($fp)
	sw $v0, -32($sp)
	lw $v0, -80($fp)
	sw $v0, -36($sp)
	lw $v0, -84($fp)
	sw $v0, -40($sp)
	lw $v0, -88($fp)
	sw $v0, -44($sp)
	lw $v0, -92($fp)
	sw $v0, -48($sp)
	lw $v0, -96($fp)
	sw $v0, -52($sp)
	lw $v0, -100($fp)
	sw $v0, -56($sp)
	lw $v0, -104($fp)
	sw $v0, -60($sp)
	lw $v0, -108($fp)
	sw $v0, -64($sp)
	lw $v0, -112($fp)
	sw $v0, -68($sp)
	sw $t0, -352($fp)
	sw $t1, -356($fp)
	sw $t2, -360($fp)
	sw $t3, -364($fp)
	sw $t4, -368($fp)
	sw $t5, -372($fp)
	sw $t6, -376($fp)
	sw $t7, -380($fp)
	sw $t8, -384($fp)
	sw $t9, -388($fp)
	jalr $t9
	lw $t9, -388($fp)
	lw $t8, -384($fp)
	lw $t7, -380($fp)
	lw $t6, -376($fp)
	lw $t5, -372($fp)
	lw $t4, -368($fp)
	lw $t3, -364($fp)
	lw $t2, -360($fp)
	lw $t1, -356($fp)
	lw $t0, -352($fp)
	move $t9, $v0
	li $v0, 204
	sw $v0, -344($fp)
	li $v0, 206
	sw $v0, -348($fp)
	move $a0, $s0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s1
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s2
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s3
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s4
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s5
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s6
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s7
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t1
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t2
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t3
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t4
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t5
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t6
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t7
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t8
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -340($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -8($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -12($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -16($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -20($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -24($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -28($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -32($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -36($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -40($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -44($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -48($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -52($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -56($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -60($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -64($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -68($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -72($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -76($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -80($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -84($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -88($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -92($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -96($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -100($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -104($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -108($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -112($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -116($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -120($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -124($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -128($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -132($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -136($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -140($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -144($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -148($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -152($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -156($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -160($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -164($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -168($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -172($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -176($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -180($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -184($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -188($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -192($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -196($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -200($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -204($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -208($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -212($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -216($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -220($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -224($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -228($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -232($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -236($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -240($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -244($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -248($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -252($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -256($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -260($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -264($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -268($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -272($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -276($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -280($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -284($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -288($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -292($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -296($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -300($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -304($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -308($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -312($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -316($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -320($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -324($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -328($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -332($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -336($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t9
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -344($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -348($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	addu $sp, $sp, 392
	jr $ra

	.text
	.globl Test
Test:
	sw $fp, 0($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 436
	sw $s0, -404($fp)
	sw $s1, -408($fp)
	sw $s2, -412($fp)
	sw $s3, -416($fp)
	sw $s4, -420($fp)
	sw $s5, -424($fp)
	sw $s6, -428($fp)
	sw $s7, -432($fp)
	move $v0, $a0
	sw $v0, -72($fp)
	move $s0, $a1
	move $s1, $a2
	move $s2, $a3
	lw $v0, -8($fp)
	move $s3, $v0
	lw $v0, -12($fp)
	move $s4, $v0
	lw $v0, -16($fp)
	move $s5, $v0
	lw $v0, -20($fp)
	move $s6, $v0
	lw $v0, -24($fp)
	move $s7, $v0
	lw $v0, -28($fp)
	move $t0, $v0
	lw $v0, -32($fp)
	move $t1, $v0
	lw $v0, -36($fp)
	move $t2, $v0
	lw $v0, -40($fp)
	move $t3, $v0
	lw $v0, -44($fp)
	move $t4, $v0
	lw $v0, -48($fp)
	move $t5, $v0
	lw $v0, -52($fp)
	move $t6, $v0
	lw $v0, -56($fp)
	move $t7, $v0
	lw $v0, -60($fp)
	move $t8, $v0
	lw $v0, -64($fp)
	move $t9, $v0
	lw $v0, -68($fp)
	move $v0, $v0
	sw $v0, -80($fp)
	li $v0, 40
	sw $v0, -76($fp)
	li $v0, 42
	sw $v0, -84($fp)
	li $v0, 44
	sw $v0, -88($fp)
	li $v0, 46
	sw $v0, -92($fp)
	li $v0, 48
	sw $v0, -96($fp)
	li $v0, 50
	sw $v0, -100($fp)
	li $v0, 52
	sw $v0, -104($fp)
	li $v0, 54
	sw $v0, -108($fp)
	li $v0, 56
	sw $v0, -112($fp)
	li $v0, 58
	sw $v0, -116($fp)
	li $v0, 60
	sw $v0, -120($fp)
	li $v0, 62
	sw $v0, -124($fp)
	li $v0, 64
	sw $v0, -128($fp)
	li $v0, 66
	sw $v0, -132($fp)
	li $v0, 68
	sw $v0, -136($fp)
	li $v0, 70
	sw $v0, -140($fp)
	li $v0, 72
	sw $v0, -144($fp)
	li $v0, 74
	sw $v0, -148($fp)
	li $v0, 76
	sw $v0, -152($fp)
	li $v0, 78
	sw $v0, -156($fp)
	li $v0, 80
	sw $v0, -160($fp)
	li $v0, 82
	sw $v0, -164($fp)
	li $v0, 84
	sw $v0, -168($fp)
	li $v0, 86
	sw $v0, -172($fp)
	li $v0, 88
	sw $v0, -176($fp)
	li $v0, 90
	sw $v0, -180($fp)
	li $v0, 92
	sw $v0, -184($fp)
	li $v0, 94
	sw $v0, -188($fp)
	li $v0, 96
	sw $v0, -192($fp)
	li $v0, 98
	sw $v0, -196($fp)
	li $v0, 100
	sw $v0, -200($fp)
	li $v0, 102
	sw $v0, -204($fp)
	li $v0, 104
	sw $v0, -208($fp)
	li $v0, 106
	sw $v0, -212($fp)
	li $v0, 108
	sw $v0, -216($fp)
	li $v0, 110
	sw $v0, -220($fp)
	li $v0, 112
	sw $v0, -224($fp)
	li $v0, 114
	sw $v0, -228($fp)
	li $v0, 116
	sw $v0, -232($fp)
	li $v0, 118
	sw $v0, -236($fp)
	li $v0, 120
	sw $v0, -240($fp)
	li $v0, 122
	sw $v0, -244($fp)
	li $v0, 124
	sw $v0, -248($fp)
	li $v0, 126
	sw $v0, -252($fp)
	li $v0, 128
	sw $v0, -256($fp)
	li $v0, 130
	sw $v0, -260($fp)
	li $v0, 132
	sw $v0, -264($fp)
	li $v0, 134
	sw $v0, -268($fp)
	li $v0, 136
	sw $v0, -272($fp)
	li $v0, 138
	sw $v0, -276($fp)
	li $v0, 140
	sw $v0, -280($fp)
	li $v0, 142
	sw $v0, -284($fp)
	li $v0, 144
	sw $v0, -288($fp)
	li $v0, 146
	sw $v0, -292($fp)
	li $v0, 148
	sw $v0, -296($fp)
	li $v0, 150
	sw $v0, -300($fp)
	li $v0, 152
	sw $v0, -304($fp)
	li $v0, 154
	sw $v0, -308($fp)
	li $v0, 156
	sw $v0, -312($fp)
	li $v0, 158
	sw $v0, -316($fp)
	li $v0, 160
	sw $v0, -320($fp)
	li $v0, 162
	sw $v0, -324($fp)
	li $v0, 164
	sw $v0, -328($fp)
	li $v0, 166
	sw $v0, -332($fp)
	li $v0, 168
	sw $v0, -336($fp)
	li $v0, 170
	sw $v0, -340($fp)
	li $v0, 172
	sw $v0, -344($fp)
	li $v0, 174
	sw $v0, -348($fp)
	li $v0, 176
	sw $v0, -352($fp)
	li $v0, 178
	sw $v0, -356($fp)
	li $v0, 180
	sw $v0, -360($fp)
	li $v0, 182
	sw $v0, -364($fp)
	li $v0, 184
	sw $v0, -368($fp)
	li $v0, 186
	sw $v0, -372($fp)
	li $v0, 188
	sw $v0, -376($fp)
	li $v0, 190
	sw $v0, -380($fp)
	li $v0, 192
	sw $v0, -384($fp)
	li $v0, 194
	sw $v0, -388($fp)
	li $v0, 196
	sw $v0, -392($fp)
	li $v0, 198
	sw $v0, -396($fp)
	li $v0, 200
	sw $v0, -400($fp)
	lw $v0, -72($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s1
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s2
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s3
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s4
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s5
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s6
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $s7
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t1
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t2
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t3
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t4
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t5
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t6
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t7
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t8
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	move $a0, $t9
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -80($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -76($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -84($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -88($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -92($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -96($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -100($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -104($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -108($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -112($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -116($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -120($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -124($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -128($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -132($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -136($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -140($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -144($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -148($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -152($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -156($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -160($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -164($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -168($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -172($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -176($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -180($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -184($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -188($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -192($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -196($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -200($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -204($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -208($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -212($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -216($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -220($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -224($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -228($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -232($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -236($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -240($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -244($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -248($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -252($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -256($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -260($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -264($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -268($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -272($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -276($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -280($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -284($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -288($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -292($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -296($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -300($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -304($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -308($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -312($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -316($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -320($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -324($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -328($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -332($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -336($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -340($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -344($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -348($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -352($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -356($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -360($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -364($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -368($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -372($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -376($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -380($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -384($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -388($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -392($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -396($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -400($fp)
	move $a0, $v0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	lw $v0, -72($fp)
	move $v0, $v0
	lw $s7, -432($fp)
	lw $s6, -428($fp)
	lw $s5, -424($fp)
	lw $s4, -420($fp)
	lw $s3, -416($fp)
	lw $s2, -412($fp)
	lw $s1, -408($fp)
	lw $s0, -404($fp)
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	addu $sp, $sp, 436
	jr $ra

	.data
	.align 0
newline:	.asciiz "\n"

