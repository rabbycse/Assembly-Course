.MODEL SMALL
.STACK 100H
.DATA
   
.CODE
MAIN PROC
    
    XOR AX,AX
    MOV CX,16
    MOV BX,1001101100110000b
    
    TOP:
    ROL BX,1
    JNC NEXT
    INC AX
    
    NEXT:
    LOOP TOP
    MOV DX,AX
    ADD DX,30H
    MOV AH,2
    INT 21H 
                    
    
    MOV AH,4CH
    INT 21H    
  MAIN ENDP
END MAIN