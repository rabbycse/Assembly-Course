.MODEL SMALL
.STACK 100H

.DATA


.CODE
MAIN PROC
    
    MOV BL,30H
    
    WHILE:
          MOV AH,1
          INT 21H
          INC BL
          
          CMP AL,13
          JE EXIT
          JMP WHILE
          
     EXIT:
          
          MOV AH,2
          MOV DL,10
          INT 21H
          MOV DL,13
          INT 21H
          
          SUB BL,31H
          ADD BL,30H
          MOV AH,2
          MOV DL,BL
          INT 21H
     
     MAIN ENDP
END MAIN
