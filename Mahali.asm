 .data

 input: .asciz "Enter number of cattle: " # string input = "Enter number of cattle: ";
 less: .asciz "Not enough for bohali" # string less = "Not enough for bohali";
 enough: .asciz "Small herd" # string enough = "Small herd";
 more: .asciz "Wealthy cattle owner" # string more = "Wealthy cattle owner";

.text
  
 _start:              # cout << input;
	la a0, input
 	li a7, 4
 	ecall
 
 	li a7, 5 # int cattle_count;
 	ecall # cin >> cattle_count;
 
	mv t0, a0
 
 	li t1, 20
 	blt t0, t1, print_less # if (cattle_count < 20)
 	beq t0, t1, print_enough # else if (cattle_count == 20)
 	bgt t0, t1, print_more # else
 
 print_less: # cout << less << endl;
 	la a0, less
 	li a7, 4
 	ecall
 	j exit
 
 print_enough: #  cout << enough << endl;
 	la a0, enough
 	li a7, 4
 	ecall
 	j exit
 	
 print_more: # cout << more << endl;
 	la a0, more
 	li a7, 4
 	ecall
 	j exit
 exit: # return 0;
 	li a7,10
 	ecall
 
 
 
 
