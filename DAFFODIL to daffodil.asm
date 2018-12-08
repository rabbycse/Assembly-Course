.MODEL SMALL
.STACK 100H
.DATA

   A DB 50 
   
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA SI,A
    MOV AH,1
    
    START:
    INT 21H
    MOV BL,AL
    
    CMP AL,0DH
    JE DISPLAY
    
    XOR AL,20H
    MOV [SI],AL
    INC SI
    
    JMP START
    
    DISPLAY:
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
     
    MOV AL,'$'
    MOV [SI],AL
    
    LEA DX,A
    MOV AH,9
    INT 21H
    
 
    MOV AH,4CH
    INT 21H    
  MAIN ENDP
END MAIN