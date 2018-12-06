.MODEL SMALL
.STACK 100H

.DATA 

     M1 DB "Enter the 1st number:$"
     M2 DB 10,13,"Enter the 2nd number:$"
     
     M3 DB 10,13,10,13,"Mul is:$"


.CODE
MAIN PROC
    
         MOV AX,@DATA
         MOV DS,AX
         
         LEA DX,M1
         MOV AH,9
         INT 21H
         
         MOV AH,1
         INT 21H
         SUB AL,48
         MOV BL,AL
         
         LEA DX,M2
         MOV AH,9
         INT 21H
         
         MOV AH,1
         INT 21H
         SUB AL,48
         MOV CL,AL
         
         MUL BL
         
         AAM
         
         ADD AH,48
         ADD AL,48
         
         MOV BX,AX
         
         LEA DX,M3
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
