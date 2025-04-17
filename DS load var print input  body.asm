.MODEL SMALL ;model for code size
.STACK 200H
.DATA
    ;var declaration 
    ;EQU means equates, jeita string k var er moddhe rakhbe
    NUM DB 'd' 
    NUM2 DB 2
    ;NUM DB ?
    CHAR DB "MY NAME IS EMU8086"  
    MSG DB 'HELLO ASM $'
.CODE
    ;Code segment
    ;main + other functions
    MAIN PROC ;procedure

	      ;Instruction destination , Source
        
              MOV AX, @DATA ;@datar jonno datagula load hoye jabe
              MOV DS, AX  
              ; above 2 lines for initialize Data segment
              ;amra system theke jei space nisilam 
              ;oita mane stack memory ta k 
              ;system k back kore dewar jonno 
              
              ;printing variables 
              MOV AH, 2   ;2 FOR PRINT, 1FOR TAKING INPUT, 9 for print A msg  
              MOV DL, NUM  ; DL a ja thake oitai print kore
              INT 21H  
              
                ;new line
                MOV AH, 2
        	    MOV DL, 0AH
        		INT 21H
        		MOV DL, 0DH
        		INT 21H

	          ;printing String 
              MOV AH, 9   
              LEA DX,MSG ;String_Var_Name (LEA=load effective add)  
              INT 21H

		;Taking input
		MOV AH, 1
		INT 21H
		;input is stored in AL reg so MOV Al to DL to see the input

		
    ;Below 2 lines works for return 0                  
    MOV AH, 4CH
    INT 21H   ;INT means interrupt           
    MAIN ENDP

END MAIN         ; return 0