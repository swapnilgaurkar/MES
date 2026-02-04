ORG 0000H

MOV A, #05H       
MOV R0, #03H      

ADD A, R0         
ADD A, R0         
ADD A, R0         
INC A             

MOV B, #64H       
MUL AB            

MOV R1, #0AH      
ADD A, R1         

; Final Result:
; B = 05H
; A = E6H    

END
