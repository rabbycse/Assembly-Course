.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV BL,AL
    
    MOV CX,BX
    
    MOV AH,2
    MOV DL,'*'
    
STAR:
    INT 21H
    
    LOOP STAR
    
  MAIN ENDP
END MAIN
    