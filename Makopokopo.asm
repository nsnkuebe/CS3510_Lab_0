 .data
 litres: .asciz "Total litres: " # string litres = "Total litres: ";
 quantity: .asciz "\nFull Makokopo (20L): " # string quantity = "\nFull Makokopo (20L): ";
 reminder: .asciz "\nRemaining litres: " # string reminder = "\nRemaining litres: ";
 prompt: .asciz "Enter number of grain in litres: " # string prompt = "Enter number of grain in litres: ";

 .text

 _start: 
	la a0, prompt # cout << prompt;
	li a7, 4
	ecall
	
	li a7 , 5 # int total_litres;
	ecall 
	
	mv t0, a0
    
    	li   t1, 20 # cin >> total_litres;
    	div  t2, t0, t1 # int full_makokopo = total_litres / 20;
    	rem  t3, t0, t1 # int remaining_litres = total_litres % 20;

    
    	la   a0, litres # cout << litres << total_litres;
    	li   a7, 4           
    	ecall

   		mv   a0, t0 
   		li   a7, 1           
    	ecall

    
    	la   a0, quantity # cout << quantity << full_makokopo;
    	li   a7, 4
    	ecall

    	mv   a0, t2
    	li   a7, 1
    	ecall

    	la   a0, reminder # cout << reminder << remaining_litres << endl;
    	li   a7, 4
    	ecall

    	mv   a0, t3
    	li   a7, 1
    	ecall

    	li   a7, 10 # return 0;
    	ecall


     
    
    
