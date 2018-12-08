.MODEL SMALL
.STACK 100H
.DATA 

   MSG DB 'Hello!Lab Finall.Good by$'

.CODE
MAIN PROC 
    
    MOV AX,@DATA 
    MOV DS,AX 
    
    
    LEA DX,MSG 
    MOV AH,9
    INT 21H

    MOV AH,2
    MOV DL,01
    INT 21H     
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN