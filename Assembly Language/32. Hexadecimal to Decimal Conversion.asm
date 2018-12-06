            .MODEL SMALL
.STACK 100H

.DATA

  A DB 'INPUT A HEX DIGIT:$'
  B DB 10,13,'IN DECIMAL: $'
  
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,17D
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,49D
    INT 21H
    MOV DL,BL
    INT 21H
    
    
    
    MAIN ENDP
END MAIN
    
    