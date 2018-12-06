.MODEL SMALL
.STACK 100H
.DATA
   
   
.CODE
MAIN PROC
    
    MOV CX,256
    
    MOV AH,2
    MOV DL,0
    
TOP:
    
    INT 21H
    
    MOV BH,DL
    MOV DL,' '  ;Space print
    INT 21H
    MOV DL,BH
    
    INC DL
    LOOP TOP
    
  MAIN ENDP
END MAIN
    