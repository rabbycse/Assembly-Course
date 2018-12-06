.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Enter a number:$"
MSG2 DB 10,13,"The number is EVEN $"
MSG3 DB 10,13,"The number is ODD $" 

.CODE
MAIN PROC
    
     MOV AX,@DATA
     MOV DS,AX
     
     LEA DX,MSG1
     MOV AH,9
     INT 21H
     
     MOV AH,1
     INT 21H
     ;INT 21H
     
     MOV BX,2
     DIV BX  ;BX=BX/2 ;; AX=AX/BX ;; AX=Quotient ;; BX=Remainder
     
     CMP DX,0H
     JE THEN
     JMP ELSE
     
     THEN:
          LEA DX,MSG2
          MOV AH,9
          INT 21H
          JMP EXIT
          
      ELSE:
           LEA DX,MSG3
           MOV AH,9
           INT 21H
     
     
    EXIT:
     
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN