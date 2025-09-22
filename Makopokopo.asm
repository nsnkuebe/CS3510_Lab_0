 .data
 litres: .asciz "Total litres: "
 quantity: .asciz "\nFull Makokopo (20L): "
 reminder: .asciz "\nRemaining litres: "
 prompt: .asciz "Enter number of grain in litres: "

 .text

 _start:
	la a0, prompt
	li a7, 4
	ecall
	
	li a7 , 5
	ecall
	
	mv t0, a0
    
    	li   t1, 20
    	div  t2, t0, t1      
    	rem  t3, t0, t1     

    
    	la   a0, litres
    	li   a7, 4           
    	ecall

   	mv   a0, t0
   	li   a7, 1           
    	ecall

    
    	la   a0, quantity
    	li   a7, 4
    	ecall

    	mv   a0, t2
    	li   a7, 1
    	ecall

    	la   a0, reminder
    	li   a7, 4
    	ecall

    	mv   a0, t3
    	li   a7, 1
    	ecall

    	li   a7, 10
    	ecall


     
    
    
