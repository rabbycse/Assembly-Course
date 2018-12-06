.MODEL SMALL
.STACK 100H
.DATA

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
    MOV BL,AL   
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL   
      
    ADD BL,CL  
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
     
    MOV AH,2
    SUB BL,48  
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN
    
    