.MODEL SMALL
.STACK 100H
.DATA
A DB 'INPUT TWO NUMBERS $'
B DB 'LARGEST NUMBER $'
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
    INT 21H
    MOV BH,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    BIGGEST:
    CMP BL,BH
    JG L1
    JMP L2
    
    L1:
    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
    
    L2:
    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    EXIT:
    MAIN ENDP
END MAIN