.MODEL SMALL
.STACK 100H
.DATA

   MSG1 DB 'Enter a number:$'
   
   MSG2 DB 10,13,'The number is ODD$' 
   MSG3 DB 10,13,'The number is EVEN$'
   

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    CMP AL,1
    JE ODD
    
    CMP AL,3
    JE ODD   
    
    CMP AL,5
    JE ODD
    
    CMP AL,7
    JE ODD
    
    CMP AL,9
    JE ODD
    
    CMP AL,2
    JE EVEN
    
    CMP AL,4
    JE EVEN
    
    CMP AL,6
    JE EVEN
    
    CMP AL,8
    JE EVEN
    
    JMP EXIT
    
ODD:
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
EVEN:
    LEA DX,MSG3
    MOV AH,9
    INT 21H    
    
EXIT:
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN
     