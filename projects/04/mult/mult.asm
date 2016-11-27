// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

    @R0           // Get the first operand from R0
    D=M           // Place it in D
    @i            // Go to the memory location for i
    M=D           // Set i to the value we got from R0
    @R2           // Go to the memory location for product
    M=0           // Zero out the memory
(LOOP)
    @i            // Go back to loop counter address
    D=M           // Store it in D
    @END          // Get the address of the END label
    D;JEQ         // Jump there if the loop counter reached 0
    @R1           // Get value in R1
    D=M           // Store it in D
    @R2           // Go to the address of product
    M=D+M         // Add existing product with R1
    @i
    M=M-1         // Decrement loop counter
    @LOOP
    0;JMP         // Go back to top of loop
(END)
    @END
    0;JMP
