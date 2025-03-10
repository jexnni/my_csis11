;- Include comments explaining your approach
;- Test your code in the LC-3 simulator
;- Document how they handled memory constraints and register usage
;- **Provide your code developed, in code fences, after each assignment.**

;  **Variable Declaration and Access**
;   Write LC-3 assembly code to:
;   - Declare a variable named ```COUNT``` with initial value 5
;   - Increment it by 1
;   - Store the result back in ```COUNT```

;```    ```


        .ORIG x3000     ; start program
        LD R1, COUNT    ; load count into R1
        ADD R1, R1, #1  ; increment by 1
        ST R1, COUNT    ; store back into count

EXIT    HALT            ; stop the program
COUNT   .FILL #5     ; Used for showing count in ASCII
        .END            ; end of source code
