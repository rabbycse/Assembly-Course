.MODEL SMALL
.STACK 100H

.DATA 

     MSG1 DB "Enter the 1st number:$"
     MSG2 DB 10,13,"Enter the 2nd number:$"
     
     MSG3 DB 10,13,10,13,"Divison is:$"


.CODE
MAIN PROC
    
         MOV AX,@DATA
         MOV DS,AX
         
         LEA DX,MSG1
         MOV AH,9
         INT 21H
    
         MOV AX,0
         MOV BX,0
         MOV CX,0
         MOV DX,0
    
         MOV AH,1
         INT 21H
         SUB AL,48
         MOV CL,AL
    
         LEA DX,MSG2
         MOV AH,9
         INT 21H
    
         MOV AH,1
         INT 21H
         SUB AL,48
         MOV BL,AL
         
         
         CMP AL,0
         CMP CL,BL
          
         MOV AX,CX
         
         DIV BL 
          
         MOV CX,AX
         ADD CL,48
        
         MOV AH,2
         MOV DL,10
         INT 21H
         MOV DL,13
         INT 21H
     
         LEA DX,MSG3
         MOV AH,9
         INT 21H
    
         MOV AH,2
         MOV DL,CL
         INT 21H
         MOV BL,CL
         
         MOV AH,4CH
         INT 21H
      MAIN ENDP
END MAIN
