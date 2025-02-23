// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
 // Reset address to the start of the screen
    @SCREEN
    D=A
    @address
    M=D

(FILL) 

    @KBD 
    D=M
    @BLACK
    D;JNE 

(WHITE) 
    D=0
    @SET
    0;JMP

(BLACK)
    D=-1

(SET) 
    @address
    A=M
    M=D   

    @address
    M=M+1 

    @KBD 
    D=A
    @address
    D=D-M
    @RESET
    D;JLE 

    @FILL
    0;JMP 