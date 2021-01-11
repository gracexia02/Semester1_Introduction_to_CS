	.data
a: .word 3
b: .word 2
c: .word 5
x: .word 4
y: .word 0
	.text
#calculate y = ax^2 + bx + c

#First calculate x2, then multiply it by a
lw  $t1, x          # t1 = x
mul $t2, $t1, $t1   # t2 = x^2
lw  $t3, a 	    # t3 = a
mul $t2, $t2, $t3   # t2 = a x^2

#Then multiply b by x and add it
lw  $t3, b    	    # t3=b
mul $t3, $t3, $t1   # t3=bx
add $t3, $t2, $t3   # t3=ax^2+bx

#Next, add c to that value
lw $t2, c	    # t2=c
add $t3, $t3, $t2   # t3=ax^2+bx+c

#store the value to y
sw $t3, y	    # y = ax^2 + bx + c 





