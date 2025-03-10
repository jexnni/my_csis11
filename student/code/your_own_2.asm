;- Include comments explaining your approach
;- Test your code in the LC-3 simulator
;- Document how they handled memory constraints and register usage
;- **Provide your code developed, in code fences, after each assignment.**

;  TOTAL   .FILL   #10
; total   .FILL   #20
; Total   .FILL   #30

;```    ```



        .ORIG x3000     ; start program
        LD R1, TOTAL    ; load count into R1
        LD R2, total    ; load count into R2        
        LD R3, Total    ; load count into R3
                        ; the registers all correspond to their .FILL
                        

EXIT    HALT            ; stop the program
TOTAL   .FILL   #10
total   .FILL   #20
Total   .FILL   #30     
        .END            ; end of source code