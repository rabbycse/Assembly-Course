ORG 100H
.MODEL SMALL
.STACK 100H

.DATA
    SPACE DW 11 
    STAR DW 1  

.CODE
MAIN PROC
    
    MOV CX,7
    
    START:
    MOV BX,CX
    MOV CX,SPACE
    
    L1:
    MOV DL,32
    MOV AH,2
    INT 21H
    
    LOOP L1
    
    DEC SPACE
    MOV CX,STAR
    
    L2:
    MOV DL,'*'
    MOV AH,2
    INT 21H
    
    LOOP L2
    
    INC STAR
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CX,BX
    
    LOOP START
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN