INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 200H 

.DATA

.CODE 
    ;CODE SEGMENT
    ;MAIN + OTHER FUNCTIONS

    MAIN PROC
                
         ;PRINT = PRINT  A STRING WITHOUT NEW LINE
         ;PRINTN = PRINT A STRING WITH NEW LINE
         
         PRINTN "HELLO WORLD" 
         
         PRINT "BYE WORLD"
         
    MOV AH, 4CH
    INT 21H 

    MAIN ENDP
END MAIN
        