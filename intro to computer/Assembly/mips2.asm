    .data
 d1: .word 25
 d2: .word 18
 d3: .word 0
 
     .text
 main:# d3=d1+d2
 	lw $t1, d1       # $t1 = d1
 	lw $t2, d2       # $t2 = d2
 	add $t3,$t2,$t1  #$t3=$t1+$t2
 	sw $t3,d3        # d3=$t3
