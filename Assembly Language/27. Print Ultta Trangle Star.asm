.MODEL SMALL
.STACK 100H

.DATA 
  

.CODE
MAIN PROC 
                 
    MOV AL,1
    MOV BL,5
    
    L1:
    MOV CX,BX
    
    L2: 
    CMP BL,1
    JL EXIT
    
    MOV AH,2
    MOV DL,'*'
    INT 21H
     
    LOOP L2
    
    DEC BL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LOOP L1
    RET  
    
        
EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN