.MODEL SMALL
.STACK 100H 

.DATA
    ;VAR DECLARATION
    NUM DB 48
    MSG DB 'HELLO ASM $'

.CODE 
    ;CODE SEGMENT
    ;MAIN + OTHER FUNCTIONS
    MAIN PROC  
        
              MOV AX, @DATA
              MOV DS, AX    
              
              
              ;printing variables 
              
              MOV AH, 2     ;2 FOR PRINT  
              MOV DL, NUM
              INT 21H  
              
              ;NEW LINE
              MOV AH, 2
              MOV DL, 0AH
              INT 21H
              MOV DL, 0DH 
              INT 21H 
              
              MOV AH, 2     ;2 FOR PRINT  
              MOV DL, NUM
              INT 21H
              
       
    
    MAIN ENDP
END MAIN
        