ORG 100H
.MODEL SMALL
.STACK 100H

.DATA

    SPACE DW 11 
    STAR DW 1
    
    SPACE1 DW 5 
    STAR1 DW 13  

.CODE
MAIN PROC
    
    MOV CX,7
    
    OUTER:
    MOV BX,CX
    MOV CX,SPACE
    
    K:
    MOV DL,32
    MOV AH,2
    INT 21H
    
    LOOP K
    
    DEC SPACE
    MOV CX,STAR
    
    L:
    MOV DL,'*'
    MOV AH,2
    INT 21H
    
    LOOP L
    
    INC STAR
    INC STAR
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CX,BX
    
    LOOP OUTER 
    
    
    MOV CX,7
    
    OUTER1:
    MOV BX,CX
    MOV CX,SPACE1
    
    K1:
    MOV DL,32
    MOV AH,2
    INT 21H
    
    LOOP K1
    
    inc SPACE1
    MOV CX,STAR1
    
    L1:
    MOV DL,'*'
    MOV AH,2
    INT 21H
    
    LOOP L1
    
    dec STAR1
    dec STAR1
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CX,BX
    
    LOOP OUTER1
    RET
    
END MAIN