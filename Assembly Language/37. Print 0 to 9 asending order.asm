.MODEL SMALL
.STACK 100H
.DATA
 
.CODE
MAIN PROC

     MOV CX, 10                   

     MOV AH,2                      
     MOV DL,'0'                   

     START:                       
       INT 21H                   

       INC DL                     
       DEC CX 
                           
       JNZ START                   

     MOV AH, 4CH                  
     INT 21H
   MAIN ENDP
 END MAIN