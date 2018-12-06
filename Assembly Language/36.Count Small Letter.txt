.MODEL SMALL
.STACK 100H
.DATA

  M1 DB 'Enter your sentence:$'
  M2 DB 10,13,'The number of small letter:$'
  
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    MOV BL,0
    
TOP:
    MOV AH,1
    INT 21H
    
    CMP AL,0DH
    JE DISPLAY
    
    CMP AL,'a'
    JL END_
    CMP AL,'z'
    JG END_
    
    INC BL
    
END_:

    JMP TOP
    
DISPLAY:

    LEA DX,M2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    ADD DL,30H
    INT 21H
    
EXIT:
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN
    
    