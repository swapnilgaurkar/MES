ORG 0000H

MOV A, 50H        
MOV R0, A      

MOV A, 51H        
MOV R1, A        

CHECK:
MOV A, R0
JZ A_ZERO       

MOV A, R1
JZ B_ZERO        

DEC R0            
DEC R1           
JNZ CHECK         

; If both zero simultaneously
EQUAL:
MOV 52H, #00H    
SJMP END

A_ZERO:
MOV A, R1
JZ EQUAL       
MOV 52H, #0FFH    
SJMP END

B_ZERO:
MOV 52H, #01H    
END:
END
