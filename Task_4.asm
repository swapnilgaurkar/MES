ORG 0000H

CLR A                 
ORL A, #0F0H          
ANL A, #0E0H          
ORL A, #09H          

MOV R0, A       

CLR A                
ORL A, #08H          

MOV B, A             
MOV A, R0            

END
