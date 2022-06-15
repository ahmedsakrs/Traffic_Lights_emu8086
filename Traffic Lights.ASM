#start=Traffic_Lights.exe#

name "traffic" 

                       ;FEDC_BA98_7654_3210
again:      mov     ax, 0000_0011_0000_1100b
            out     4, ax
            
	   ;Load the accumulator by the number of minutes

            MOV     AL, 3

REPEAT1:    MOV     CX, 0393H
        	MOV     DX, 8700H
        	MOV     AH, 86H
        	INT     15H
        	DEC     AL
        	JNZ     REPEAT1
            
            
                       ;FEDC_BA98_7654_3210
            mov     ax, 0000_0110_1001_1010b
            out     4, ax
                        
            MOV     CX, 0393H
        	MOV     DX, 8700H
        	MOV     AH, 86H
        	INT     15H
            
            
                       ;FEDC_BA98_7654_3210
            mov     ax, 0000_1000_0110_0001b
            out     4, ax
            
	   ;Load the accumulator by the number of minutes
                        
            mov     Al, 3
            
REPEAT2:    MOV     CX, 0393H
        	MOV     DX, 8700H
        	MOV     AH, 86H
        	INT     15H
        	DEC     AL
        	JNZ     REPEAT2
            
            
                       ;FEDC_BA98_7654_3210
            mov     ax, 0000_0100_1101_0011b
            out     4, ax
            
            MOV     CX, 0393H
        	MOV     DX, 8700H
        	MOV     AH, 86H
        	INT     15H
            
            jmp     again