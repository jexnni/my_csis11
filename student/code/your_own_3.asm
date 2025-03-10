; 3. **Pointer Usage**
;   Write code to:
;   - Create a pointer variable ```PTR``` that points to a value
;   - Use LDI to load the value it points to into R1
;   - Use STI to store a new value through the pointer

;```    ```


        .ORIG x3000     ; start
        LD R1, PTR      ; R1 has PTR
        LDI R2, PTR     ; R2 points to where PTR, R1
        ADD R2, R2, #1  ; increment R2
        STI R2, PTR     ; store R2 in PTR

        HALT

PTR     .FILL x3100
VALUE   .FILL #10

        .END