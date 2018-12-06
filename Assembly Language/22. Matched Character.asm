.MODEL SMALL
.STACK 100H

.DATA 

     M1 DB "given the input:$"
     M2 DB 10,13,"The input is matched.$"
     M3 DB 10,13,"Sorry...next time.$"


.CODE
MAIN PROC
    
         MOV AX,@DATA
         MOV DS,AX
         
         LEA DX,M1
         MOV AH,9
         INT 21H
         
         MOV AH,1
         INT 21H
         
         CMP AL,'y'
         JE DISPLAY
         
         CMP AL,'Y'
         JE DISPLAY
         
         LEA DX,M3
         MOV AH,9
         INT 21H
         
         JMP EXIT
         
     DISPLAY:
          LEA DX,M2
          MOV AH,9
          INT 21H      
          
     EXIT:
         MOV AH,4CH
         INT 21H
      MAIN ENDP
END MAIN
