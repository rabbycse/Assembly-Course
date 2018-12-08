org 100h

.MODEL SMALL
.STACK 100H
.DATA

  SPACE DW 5
  STAR DW 1

.CODE
MAIN PROC
    
    MOV CX,7
    
    TOP:
    MOV AH,2
    MOV DL,'*'        ; *******
    INT 21H           ; *     *
                      ; *     *
    LOOP TOP          ; *     *
                      ; *     *
    MOV CX,5          ; *******
    
    L1: 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV BX,CX
    
    MOV AH,2
    MOV DL,'*'
    INT 21H 
    
    MOV CX,SPACE
    
    L2:
    MOV AH,2
    MOV DL,32
    INT 21H
    
    LOOP L2
    
    MOV AH,2
    MOV DL,'*'
    INT 21H
    
    MOV CX,BX
    
    LOOP L1 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV CX,7 
    
    L3:
    MOV AH,2
    MOV DL,'*'
    INT 21H
    
    LOOP L3
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN
    