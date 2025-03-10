; shift_left_n - 
; Demonstrates:
; how to shift a word to the left
; how to convert a number to ASCII and output it
; how to loop until a value is not positive (n)

; Usage:
; Use x0A0A for VALUE, and #3 for COUNT
; Result in R1 will be xA0A0
; Only works for 1-9 shifts, due to ASCII conversion

; Registers:
; R1 - VALUE to shift
; R2 - COUNT
; R3 - ASCII conversion value
; Memory:
; x3000 - start of program
; x3009 - VALUE, number to shift
; x300A - COUNT, n shifts
; x300B - ASCII, increment to convert number to ASCII

        .ORIG x3000     ; 
        LD R1, VALUE    ; load the value to shift into R1
        LD R2, COUNT    ; load counter value in to R2
        LD R3, ASCII    ; load the ASCII increment into R3

SHIFT   ADD R1, R1, R1  ; shift the value left
        ADD R0, R2, R3  ; convert COUNT to ASCII
        OUT             ; output the COUNT ASCII value
        ADD R2, R2, #-1 ; decrement COUNT
        BRp SHIFT       ; continue until counter goes to 0

        HALT            ; stop the program
VALUE   .FILL x0A0A     ; value to shift
COUNT   .FILL #10        ; number of shifts (n, n-1, n-2, ... 1)
ASCII   .FILL x0030     ; increment for making a number, ASCII
        .END            ; end of source code
