.MODEL SMALL
.STACK 100H
.DATA

  
.CODE
MAIN PROC
    
    MOV CX,0
    MOV BL,30H
    
  START:
  
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    CMP CL,'A'
    JGE L1
    
    CMP AL,0DH
    JE L3  
    CMP AL,'?'
    JE L3 
    
    
    LOOP START
    
    L1:
    CMP CL,'Z'
    JLE L2
    
    L2:
    INC CX
    INC BL
    JMP START
    
    L3:
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    
  EXIT:
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN