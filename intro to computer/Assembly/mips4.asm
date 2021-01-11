	.data
a: .word 3
b: .word 2
c: .word 5
x: .word 4
y: .word 0
	.text
#calculate y = ax^2 + bx + c

#First calculate ax
lw  $t1, x          # t1 = x
lw  $t2, a          # t2 = a
mul $t2, $t1, $t2   # t2 = ax

#Then add b by to it
lw  $t3, b    	    # t3=b
add $t2, $t2, $t3   # t2=ax+b

#Next, multiply by x
mul $t2, $t2, $t1   # t2= (ax+b)x

#add c to it
lw  $t1, c          #t1 = c
add $t2, $t2, $t1

#store the value to y
sw $t2, y	    # y = ax^2 + bx + c 





