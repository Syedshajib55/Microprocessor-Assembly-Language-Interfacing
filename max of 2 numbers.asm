data segment
    num1 db 5       ; First number (can be changed)
    num2 db 2       ; Second number (can be changed)
    max_num db ?     ; Variable to store the maximum
data ends

code segment
assume cs:code, ds:data
start:
    ; Initialize data segment
    mov ax, data
    mov ds, ax

    ; Load the two numbers
    mov al, num1      ; Load first number into AL
    mov bl, num2      ; Load second number into BL

    ; Compare the numbers
    cmp al, bl
    jge is_max_al     ;jge (jump if greater or equal) If AL >= BL, AL is the maximum

    mov max_num, bl   ; Else, BL is the maximum
    jmp print_max     ; Jump to print the result

is_max_al:
    mov max_num, al   ; Store AL as the maximum

print_max:
    ; Load the maximum value
    mov al, max_num   ; Load max number into AL

    ; Convert number to ASCII
    add al, '0'       ; Add ASCII offset to convert to a printable character

    ; Print the character
    mov dl, al        ; Move ASCII character to DL
    mov ah, 02h       ; DOS function to display character
    int 21h           ; Call DOS interrupt

    ; Halt the program
    hlt
code ends
end start
