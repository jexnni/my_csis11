; add2
; load R3 with non-negative constant, SOURCE
; add 2 to R3
; store result in memory location, DEST 
        .ORIG x3000     ; program starts at address x3000
        LD R1, SOURCE   ; SOURCE is location in memory (constant)
        BRn DONE        ; if number is Negative, exit
        ADD R3, R1, #2  ; Add 2 store into R3
        ST R3, DEST   ; store result into DEST (variable)
DONE    HALT            ;halt program
DEST    .BLKW 1         ; create variable DEST
SOURCE  .FILL #5        ; create constant SOURCE = 5
        .END; end of program
