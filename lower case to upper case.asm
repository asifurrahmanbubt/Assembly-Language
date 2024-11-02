.MODEL SMALL
.STACK 100H
.DATA
A DB 'LOWER CASE TO UPPER CASE $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,2
    SUB BL,32
    MOV DL,BL
    INT 21H
    MAIN ENDP
END MAIN