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
        
              MOV BL, 53    ;5
              MOV BH, 55    ;7 
              XCHG BH,BL
              
              MOV AH, 2
              MOV DL, BL
              INT 21H
              
              MOV AH, 2
		      MOV DL, 0AH
		      INT 21H
		      MOV DL, 0DH
		      INT 21H
		      
		      MOV AH, 2
              MOV DL, BH
              INT 21H
	                    


      
    MOV AH, 4CH
    INT 21H 

    MAIN ENDP
END MAIN
        