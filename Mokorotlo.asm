.data
prompt:   .asciz "Enter the height of the Mokorotlo: " # string prompt = "Enter the height of the Mokorotlo: "
star:     .asciz "*" # string star = "*";
space:    .asciz " " # string space = " ";
newline:  .asciz "\n" # string newline = "\n";

.text

_start:
    li a7, 4
    la a0, prompt # cout << prompt;
    ecall

    li a7, 5 # cin >> height;
    ecall
    mv s0, a0       

    li s1, 1        

outer_loop: # for (int row = 1; row <= height; row++)
    bgt s1, s0, end_outer_loop  

    mv t0, s0
    sub t0, t0, s1 
    li t1, 0         

space_loop: # for (int i = 0; i < height - row; i++)
    bge t1, t0, end_space_loop
    li a7, 4
    la a0, space
    ecall
    addi t1, t1, 1
    j space_loop

end_space_loop:
    li t2, 0         

star_loop: # for (int j = 0; j < row; j++)
    bge t2, s1, end_star_loop
    
    li a7, 4
    la a0, star
    ecall
    
    addi t3, s1, -1   
    bge t2, t3, skip_space
    li a7, 4
    la a0, space
    ecall
    
skip_space:
    addi t2, t2, 1
    j star_loop

end_star_loop:
    li a7, 4
    la a0, newline
    ecall

    addi s1, s1, 1   #
    j outer_loop

end_outer_loop:
    li a7, 10
    ecall
