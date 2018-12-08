ORG 100H
.MODEL SMALL
.STACK 100H

.DATA

    SPACE DW 1 
    STAR DW 9  
    

.CODE
MAIN PROC
    
    MOV CX,3
    MOV BX,11
    
    STARR:
    
    MOV AH,2
    MOV DL,'*'          ; **********
    INT 21H             ; **********
    DEC BX              ; **********
                        
    CMP BX,0            
    JE L1          
    
    JMP STARR
    
    L1:
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV BX,11
    
    LOOP STARR 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
    MOV CX,5
    
    PIRAMID:
    MOV BX,CX          ;*********
    MOV CX,SPACE       ; *******
                       ;  *****
    L2:                ;   ***
    MOV DL,32          ;    *
    MOV AH,2
    INT 21H
    
    LOOP L2
    
    INC SPACE
    MOV CX,STAR
    
    L3:
    MOV DL,'*'
    MOV AH,2
    INT 21H
    
    LOOP L3
    
    DEC STAR
    DEC STAR
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CX,BX
    
    LOOP PIRAMID
    
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP    
END MAIN