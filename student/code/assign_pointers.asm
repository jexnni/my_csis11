; assign_pointers
; Demonstrates the use of pointers in LC-3 assembly language
; Use a pointer to store the address of a variable
; then use the pointer to access the value of the variable
; and store it in another variable.
; Finally, it uses the pointer to store a new value in the original variable.
; The program uses the following variables:
; a: a variable to store a value
; p_a: a pointer to store the address of a
; b: a second variable to store a value

    .ORIG x3000
    ; p_a = &a;
    LEA R0, a       ; get the address of the variable
    ST  R0, p_a     ; store it in the pointer variable

    ; b = *a;
    LDI R0, p_a     ; get the value at the address stored in p_a
    ST  R0, b       ; store it in b

    ; *p_a = b;
    LD  R0, b       ; load the value of b
    ADD R0, R0, #3  ; add 3 to it
    STI R0, p_a     ; store it at the address stored in p_a
    HALT

a   .FILL x1111     ; fill with a known number
p_a  .BLKW 1
b   .FILL x2222     ; fill with a known number
    .END