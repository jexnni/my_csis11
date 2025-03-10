# Week 6 - Beginning LC-3 Assembly
## Instructions

1. **Copy and paste this content into a new file in Week 6 in your student folder.**
2. Follow the assignment by writing code or pasting images from the simulator into **your file**.
3. All supplied programs will be in the *code* folder for that specific week 

## 6a - Learn how to use the tools

### Objectives
1. Learn how to integrate git and Github into your homework
2. Learn how to edit simple LC-3 assembly programs
3. Learn how to use the LC-3 simulator

### Assignment

#### shift_left_match.asm

1. Copy the file from the instructor/week_6 to your week_6 folder
1. Make changes such that VALUE is xB0B0 and MATCH is x1600
2. Run in the simulator and provide a screenshot showing the result when the program has **successfully** finished. 
![](../../../images/hw6/hw6_1.PNG)

#### shift_left_n.asm

1. Copy the file from the instructor/week_6 to your week_6 folder
2. Make changes such that the COUNT is #10 (decimal 10)
3. What are the numbers shown in the console?

4. What is the **first** character and why isn't it decimal 10?

```lc3

; remove this comment and paste your code here

```


#### addnums.asm
1. Copy the file from the instructor/week_6 to your week_6 folder
2. Change the file such that the **final sum is x0085 (the original sum is 55)**
2. Run in the simulator and provide a screenshot showing the result when the program has finished. 
![](../../../changethistoimagename.png)

#### addnums.asm -> subnums.asm
1. Copy the file from the instructor/week_6 to your week_6 folder
2. Change the file such that the values are **subtracted**, instead of added
2. Paste the complete code here, in between the code fences
```lc3

; remove this comment and paste your code here

```
 
## 6b - Explore how to use data

### Objectives
1. Learn how to specify data in assembly
2. Learn how to use data in coding
3. Learn the limits of data locations

### Assignment

For each exercise, please do the following:
- Write complete, working LC-3 assembly code
- Include comments explaining your approach
- Test your code in the LC-3 simulator
- Document how they handled memory constraints and register usage
- **Provide your code developed, in code fences, after each assignment.**

1. **Variable Declaration and Access**
   Write LC-3 assembly code to:
   - Declare a variable named ```COUNT``` with initial value 5
   - Increment it by 1
   - Store the result back in ```COUNT```

```lc3

; remove this comment and paste your code here

```

2. **Case Sensitivity Practice**
   Determine if these labels refer to the same variable:
   ```assembly
   TOTAL   .FILL   #10
   total   .FILL   #20
   Total   .FILL   #30
   ```
   Explain your answer.

```lc3

; remove this comment and paste your code here

```

3. **Pointer Usage**
   Write code to:
   - Create a pointer variable ```PTR``` that points to a value
   - Use LDI to load the value it points to into R1
   - Use STI to store a new value through the pointer

```lc3

; remove this comment and paste your code here

```

## Simple Math Calculator

### Part 1 - Add and Subtract

1. Create a new folder in your student folder called SMC.
2. Add a file called add_sub.asm
3. Write the code which will add and subtract 2 numbers. Be sure to label your variables so they are easy to reference.
4. Use a ASCII "+" to determine if you add and an ASCII "-", for subtraction, think of it from a "conditional" perspective.

```lc3

; remove this comment and paste your code here

```
