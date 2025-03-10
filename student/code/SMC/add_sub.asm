;3. Write the code which will add and subtract 2 numbers. 
;Be sure to label your variables so they are easy to reference.
;4. Use a ASCII "+" to determine if you add and an ASCII "-", for subtraction, 
;think of it from a "conditional" perspective.

        .ORIG x3000     ; start
        LD R0, VALUE1
        LD R1, VALUE2

        LD R2, PLUS
        LD R3, MINUS

        LD R4, SUM
        LD R5, DIFF

;Addition
        ADD R2, R0, R1  ; Add R0 and R1
        ST R4, SUM

;Subtration

        NOT R1, R1      ; take not of R1
        ADD R1, R1, #1  ; two's complement by add +1
        ADD R3, R0, R1  ; Add R0 and two's complement R1
        ST R5, DIFF

        HALT


PLUS    .FILL #43
MINUS   .FILL #45
VALUE1  .FILL #10
VALUE2  .FILL #5
SUM     .FILL x0
DIFF    .FILL x0
        .END