INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 200H 

.DATA
    NUM DB 'D'
    NUM2 DB 2
    NUM3 DB ?
    CHAR DB "MY NAME IS SHAKIL"
    MSG DB 'HELLO ASM$'

.CODE 
    ;CODE SEGMENT
    ;MAIN + OTHER FUNCTIONS

    MAIN PROC
        
              MOV AX, @DATA ;@datar jonno datagula load hoye jabe
              MOV DS, AX 
              
              PRINT "SYED"
              ;PRINT WORKS IF U INCLUDE 
              ;INCLUDE 'EMU8086.INC'
 
	                    


      
    MOV AH, 4CH
    INT 21H 

    MAIN ENDP
END MAIN
        