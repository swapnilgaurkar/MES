ORG 0000H

    MOV R0, #40H        
    MOV R1, #40H        
    MOV R2, #20H       

SCAN:
    MOV A, @R0         
    CJNE A, #0FFH, VALID
    SJMP NEXT           

VALID:
    MOV @R1, A         
    INC R1              

NEXT:
    INC R0              
    DJNZ R2, SCAN       


    MOV A, #00H

FILL:
    CJNE R1, #60H, CONT
    SJMP DONE

CONT:
    MOV @R1, A
    INC R1
    SJMP FILL

DONE:
    SJMP DONE        

END
