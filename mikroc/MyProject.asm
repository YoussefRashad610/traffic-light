
_main:

;MyProject.c,6 :: 		void main() {
;MyProject.c,7 :: 		ADCON1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;MyProject.c,8 :: 		trisb = 0b00000000;
	CLRF       TRISB+0
;MyProject.c,9 :: 		trisc = 0b00000000;
	CLRF       TRISC+0
;MyProject.c,10 :: 		trisd = 0b00000000;
	CLRF       TRISD+0
;MyProject.c,11 :: 		trisa = 0b11111111;
	MOVLW      255
	MOVWF      TRISA+0
;MyProject.c,12 :: 		for(;;){
L_main0:
;MyProject.c,13 :: 		if (porta.b1 == 1)
	BTFSS      PORTA+0, 1
	GOTO       L_main3
;MyProject.c,15 :: 		portd = 0b11111111;
	MOVLW      255
	MOVWF      PORTD+0
;MyProject.c,16 :: 		i = 3;
	MOVLW      3
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;MyProject.c,17 :: 		for (i; i >= 0; i--)
L_main4:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      0
	SUBWF      _i+0, 0
L__main33:
	BTFSS      STATUS+0, 0
	GOTO       L_main5
;MyProject.c,19 :: 		count = 9;
	MOVLW      9
	MOVWF      _count+0
	MOVLW      0
	MOVWF      _count+1
;MyProject.c,20 :: 		for (count; count >= 0; count--)
L_main7:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      0
	SUBWF      _count+0, 0
L__main34:
	BTFSS      STATUS+0, 0
	GOTO       L_main8
;MyProject.c,22 :: 		if (porta.b1 == 0)
	BTFSC      PORTA+0, 1
	GOTO       L_main10
;MyProject.c,24 :: 		portb = 0;
	CLRF       PORTB+0
;MyProject.c,25 :: 		count2 = 3;
	MOVLW      3
	MOVWF      _count2+0
	MOVLW      0
	MOVWF      _count2+1
;MyProject.c,26 :: 		count3 = 3;
	MOVLW      3
	MOVWF      _count3+0
	MOVLW      0
	MOVWF      _count3+1
;MyProject.c,27 :: 		break;
	GOTO       L_main8
;MyProject.c,28 :: 		}
L_main10:
;MyProject.c,29 :: 		if ( (arr[i] + count) == 57)
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       _count+0, 0
	ADDWF      INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _count+1, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVLW      57
	XORWF      R1+0, 0
L__main35:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;MyProject.c,31 :: 		continue;
	GOTO       L_main9
;MyProject.c,32 :: 		}
L_main11:
;MyProject.c,33 :: 		if ((arr[i] + count) > 53)
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       _count+0, 0
	ADDWF      INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _count+1, 0
	MOVWF      R1+1
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVF       R1+0, 0
	SUBLW      53
L__main36:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;MyProject.c,35 :: 		portc = 0b00010001;
	MOVLW      17
	MOVWF      PORTC+0
;MyProject.c,36 :: 		}
	GOTO       L_main13
L_main12:
;MyProject.c,37 :: 		else if ((arr[i] + count) == 52)
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       _count+0, 0
	ADDWF      INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _count+1, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      52
	XORWF      R1+0, 0
L__main37:
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;MyProject.c,39 :: 		portc = 0b00100001;
	MOVLW      33
	MOVWF      PORTC+0
;MyProject.c,40 :: 		}
	GOTO       L_main15
L_main14:
;MyProject.c,41 :: 		else if ((arr[i] + count) == 35)
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       _count+0, 0
	ADDWF      INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _count+1, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      35
	XORWF      R1+0, 0
L__main38:
	BTFSS      STATUS+0, 2
	GOTO       L_main16
;MyProject.c,43 :: 		portc = 0b00001010;
	MOVLW      10
	MOVWF      PORTC+0
;MyProject.c,44 :: 		}
	GOTO       L_main17
L_main16:
;MyProject.c,45 :: 		else if ((arr[i] + count) == 32)
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       _count+0, 0
	ADDWF      INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _count+1, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      32
	XORWF      R1+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main18
;MyProject.c,47 :: 		portc = 0b00001100;
	MOVLW      12
	MOVWF      PORTC+0
;MyProject.c,48 :: 		}
L_main18:
L_main17:
L_main15:
L_main13:
;MyProject.c,49 :: 		portb = arr[i] + count;
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       _count+0, 0
	ADDWF      INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,50 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;MyProject.c,51 :: 		}
L_main9:
;MyProject.c,20 :: 		for (count; count >= 0; count--)
	MOVLW      1
	SUBWF      _count+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count+1, 1
;MyProject.c,51 :: 		}
	GOTO       L_main7
L_main8:
;MyProject.c,17 :: 		for (i; i >= 0; i--)
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,52 :: 		}
	GOTO       L_main4
L_main5:
;MyProject.c,53 :: 		}
	GOTO       L_main20
L_main3:
;MyProject.c,56 :: 		if (porta.b0 == 0)
	BTFSC      PORTA+0, 0
	GOTO       L_main21
;MyProject.c,58 :: 		portd = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;MyProject.c,59 :: 		for (count2; count2 >= 0; count2--)
L_main22:
	MOVLW      128
	XORWF      _count2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      0
	SUBWF      _count2+0, 0
L__main40:
	BTFSS      STATUS+0, 0
	GOTO       L_main23
;MyProject.c,61 :: 		portc = 0b00001010;
	MOVLW      10
	MOVWF      PORTC+0
;MyProject.c,62 :: 		portb = count2;
	MOVF       _count2+0, 0
	MOVWF      PORTB+0
;MyProject.c,63 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
;MyProject.c,59 :: 		for (count2; count2 >= 0; count2--)
	MOVLW      1
	SUBWF      _count2+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count2+1, 1
;MyProject.c,64 :: 		}
	GOTO       L_main22
L_main23:
;MyProject.c,65 :: 		portc = 0b00001100;
	MOVLW      12
	MOVWF      PORTC+0
;MyProject.c,66 :: 		count3 = 3;
	MOVLW      3
	MOVWF      _count3+0
	MOVLW      0
	MOVWF      _count3+1
;MyProject.c,67 :: 		}
	GOTO       L_main26
L_main21:
;MyProject.c,68 :: 		else if (porta.b0 == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main27
;MyProject.c,70 :: 		portd = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;MyProject.c,71 :: 		for (count3; count3 >= 0; count3--)
L_main28:
	MOVLW      128
	XORWF      _count3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      0
	SUBWF      _count3+0, 0
L__main41:
	BTFSS      STATUS+0, 0
	GOTO       L_main29
;MyProject.c,73 :: 		portc = 0b00010001;
	MOVLW      17
	MOVWF      PORTC+0
;MyProject.c,74 :: 		portb = count3;
	MOVF       _count3+0, 0
	MOVWF      PORTB+0
;MyProject.c,75 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
	NOP
;MyProject.c,71 :: 		for (count3; count3 >= 0; count3--)
	MOVLW      1
	SUBWF      _count3+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count3+1, 1
;MyProject.c,76 :: 		}
	GOTO       L_main28
L_main29:
;MyProject.c,77 :: 		portc = 0b00100001;
	MOVLW      33
	MOVWF      PORTC+0
;MyProject.c,78 :: 		count2 = 3;
	MOVLW      3
	MOVWF      _count2+0
	MOVLW      0
	MOVWF      _count2+1
;MyProject.c,79 :: 		}
L_main27:
L_main26:
;MyProject.c,80 :: 		}
L_main20:
;MyProject.c,81 :: 		}
	GOTO       L_main0
;MyProject.c,83 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
