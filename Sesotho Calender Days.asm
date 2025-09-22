 .data

 mon: .asciz "Mantaha" # string mon = "Mantaha";
 tue: .asciz "Labobeli" # string tue = "Labobeli";
 wed: .asciz "Laboraro" # string wed = "Laboraro";
 thu: .asciz "Labone" # string thu = "Labone";
 fri: .asciz "Labohlano" # string fri = "Labohlano";
 sat: .asciz "Moqebelo" # string sat = "Moqebelo";
 sun: .asciz "Sontaha" # string sun = "Sontaha";
 prompt: .asciz "Enter day of the week: " # string prompt = "Enter day of the week: ";

 .text

 _start:
    la a0, prompt # cout << prompt;
    li a7, 4
    ecall
    
    li a7, 5 # cin >> day_number;
    ecall
    
    mv t0, a0
    
    li t1, 1
    beq t0, t1, one
    
    li t1, 2
    beq t0, t1, two
   
    li t1, 3
    beq t0, t1 , three
   
    li t1, 4
    beq t0, t1 , four
    
    li t1, 5
    beq t0, t1 , five
    
    li t1, 6
    beq t0 , t1 , six
    
    li t1 ,7
    beq t0 , t1 , seven
    j exit
 
    one:
        la a1 , mon
        li a2, 8
        j print
    two:
        la a1 , tue
        li a2, 9
        j print
    three:
        la a1 , wed
        li a2, 9
        j print
    four:
        la a1 , thu
        li a2, 7
        j print
    five:
        la a1 , fri
        li a2, 11
        j print
    six:
        la a1 , sat
        li a2, 9
        j print
    seven:
        la a1 , sun
        li a2, 8
        j print
    print:
    	li a0, 1       
    	li a7, 64      
    	ecall
    	j exit
    exit:
        li a7,10
        ecall
    

 
  

     
    
    
