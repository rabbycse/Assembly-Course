.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Enter the two number: $"
MSG2 DB 10,13,"Small number is $" 

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
     INT 21H 
     MOV CL,AL
    
     CMP BL,CL
     JLE L1
     
    L1:
     JLE L2
     
     LEA DX,MSG2
     MOV AH,9
     INT 21H 
     
     MOV AH,2
     MOV DL,CL
     INT 21H
     
     JMP EXIT
     
    L2:
    
     LEA DX,MSG2
     MOV AH,9
     INT 21H
    
     MOV AH,2
     MOV DL,BL
     INT 21H 
      
     JMP EXIT
     
     
    EXIT:
     
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN