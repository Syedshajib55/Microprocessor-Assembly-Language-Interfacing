.MODEL SMALL
.STACK 100H
.DATA
 PROMPT_1 DB 'Enter a Lowercase letter : $'
 PROMPT_2 DB 0AH,0DH,'Upper case : $'
 CHAR DB '?''$'
.CODE
 MAIN PROC
     MOV AX , @DATA
     MOV DS , AX
     
     MOV AH , 9
     LEA DX , PROMPT_1
     INT 21H 
     
     MOV AH , 1 ;INPUT
     INT 21H  
     
     SUB AL , 20H
     MOV CHAR , AL
     
     MOV AH , 9
     LEA DX , PROMPT_2
     INT 21H 
     
     MOV AH , 2
     MOV DL ,CHAR
     INT 21H 
     
     MOV AH , 4CH
     INT 21H
 MAIN ENDP
END MAIN
