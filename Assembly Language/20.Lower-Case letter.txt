.MODEL SMALL
.STACK 100H
.DATA

   MSG1 DB 'Enter the input:$'
   
   MSG2 DB 10,13,"is Lower case $"   
   MSG3 DB 10,13,"is not Lower case $"
   
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'a'
    JNGE END_IF
    
    CMP AL,'z'
    JNLE END_IF
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    JMP EXIT
    
 END_IF:
    
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
   
    
EXIT:
    MOV AH,4CH
    INT 21H    
  MAIN ENDP
END MAIN