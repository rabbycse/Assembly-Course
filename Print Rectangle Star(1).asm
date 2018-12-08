.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    
    MOV CX,5
    MOV BX,5
    
    START:
    MOV AH,2
    MOV DL,'*'          ; ******
    INT 21H             ; ******
    DEC BX              ; ******
                        ; ******
    CMP BX,0            ; ******
    JE END_          
    
    JMP START
    
    END_:
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV BX,5
    
    LOOP START
    
    MAIN ENDP
END MAIN
    