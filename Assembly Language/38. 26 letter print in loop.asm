.MODEL SMALL
.STACK 100H

.DATA

   
.CODE
MAIN PROC
    
    MOV CX,26
    
    MOV AH,2
    MOV DL,'A'
    
    L1:
    
    INT 21H
    INC DL
    
    LOOP L1
       
    EXIT:
       MOV AH,4CH
       INT 21H       
    MAIN ENDP
END MAIN
