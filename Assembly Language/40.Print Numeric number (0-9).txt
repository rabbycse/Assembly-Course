.MODEL SMALL
.STACK 100H
.DATA

  MSG1 DB 10,13,"Numeric$"
  MSG2 DB 10,13,"Not Numeric$"
   
.CODE
MAIN PROC 
       
        MOV AX,@DATA
        MOV DS,AX
   
        MOV AH,1
        INT 21H 
   
        CMP AL,'0'
        JNG DISPLAY
        
        CMP AL,'9'
        JNL DISPLAY
        
        LEA DX,MSG1
        MOV AH,9
        INT 21H 
   
    
        JMP EXIT
    
DISPLAY:
       
        LEA DX,MSG2
        MOV AH,9
        INT 21H
    
             
    
EXIT:
    MOV AH,4CH
    INT 21H    
  MAIN ENDP
END MAIN