; shift_left_match:
; Demonstrates:
; how to shift a word to the left
; how to output a counter value
; how to loop until a value matches a condition
 
; Usage:
; Use x0A0A for VALUE, and xA0A0 for MATCH
; Result in R1 must match value in R2 (xA0A0)
; Only works for 1-9 shifts, due to ASCII conversion

; Registers:
; R0 - ASCII COUNT value, required for OUT
; R1 - VALUE to shift
; R2 - MATCHing value
; R4 - Scratch register
; Memory:  S
; x3000 - start of program
; x3009 - VALUE, number to shift
; x300A - MATCH, value for comparison
; x300B - COUNT, in ASCII to show number of shifts

        .ORIG x3000     ; 
        LD R1, VALUE    ; load the value to shift into R1
        LD R2, MATCH    ; load value to match in to R2
        NOT R2, R2      ; convert to 2's complement by inverting
        ADD R2, R2, #1  ; then add 1
        LD R0, COUNT    ; load the ASCII increment into R0
        ADD R4, R1, R2  ; compare to VALUE
        OUT             ; output the 0th COUNT
        BRz EXIT        ; exit if VALUE is already MATCH

SHIFT   ADD R1, R1, R1  ; shift the value left
        ADD R0, R0, #1  ; increment ASCII COUNT
        OUT             ; output the COUNT
        ADD R4, R1, R2  ; compare to VALUE
        BRnp SHIFT       ; continue until MATCH is true

EXIT    HALT            ; stop the program
VALUE   .FILL x0A0A     ; value to shift
MATCH   .FILL xA0A0     ; desired match for VALUE
COUNT   .FILL x0030     ; Used for showing count in ASCII
        .END            ; end of source code
