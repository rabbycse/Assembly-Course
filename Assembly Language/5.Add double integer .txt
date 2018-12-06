.MODEL SMALL
.STACK 100H
.DATA

 A DB 0
 B DB 0

  MSG1 DB "Enter the 1st number: $"
  MSG2 DB 10,13,"Enter the 2nd number: $" 
  
  MSG3 DB 10,13,10,13,"Sum is =  $"

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV A,AL   
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV B,AL   
    
    ADD AL,A
    MOV AH,0
    
    AAA 
    
    MOV BX,AX
    
    ADD BH,48
    ADD BL,48  
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
   
    
    MOV AH,2  
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN
    
    