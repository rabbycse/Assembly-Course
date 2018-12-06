.MODEL SMALL
.STACK 100H

.DATA

  A DB '***********',10,13,'$'
  B DB '****$'
  
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    MOV DL,'?'
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CL,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    LEA DX,A
    MOV AH,9
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,BH
    INT 21H
    MOV DL,CL
    INT 21H
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    LEA DX,A
    MOV AH,9
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    
    MOV AH,2
    MOV DL,07
    INT 21H
    
    MAIN ENDP
END MAIN
    
    