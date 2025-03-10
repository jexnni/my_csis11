; simple_assignment

        .ORIG x3000 ; program starts at address x3000
        ; b = a
        LD R0, a ; load from memory to a register
        ST R0, b ; store from register to memory

        LD R0, aa       ; load from memory to a register
        ADD R0, R0, #1 ; increment value
        ST R0, bb       ; store from register to memory

DONE    HALT        ; halt program
a       .FILL x7fff ; test
b       .FILL 0     ; create variable DEST
aa      .FILL x00ff ; test
bb      .FILL 0     ; create variable DEST
        .END        ; end of program
