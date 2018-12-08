.MODEL SMALL
.STACK 100H
.DATA

   MSG DB 'DAFFODIL$'
   
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV SI,OFFSET MSG
    MOV CX,8
    ADD si,7
    
    TOP:
    MOV AX,[SI]
    ADD AX,20H
    MOV DX,AX
    
    MOV AH,2
    INT 21H
    
    DEC SI
    
    LOOP TOP
    
 
    MOV AH,4CH
    INT 21H    
  MAIN ENDP
END MAIN