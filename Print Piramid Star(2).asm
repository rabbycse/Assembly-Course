ORG 100H
.MODEL SMALL
.STACK 100H

.DATA

    SPACE DW 1 
    STAR DW 9  

.CODE
MAIN PROC
    
    MOV CX,5
    
    OUTER:             
    MOV BX,CX          ;*********
    MOV CX,SPACE       ; *******
                       ;  *****
    K:                 ;   ***
    MOV DL,32          ;    *
    MOV AH,2
    INT 21H
    
    LOOP K
    
    INC SPACE
    MOV CX,STAR
    
    L:
    MOV DL,'*'
    MOV AH,2
    INT 21H
    
    LOOP L
    
    DEC STAR
    DEC STAR
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CX,BX
    
    LOOP OUTER
    RET
    
END MAIN