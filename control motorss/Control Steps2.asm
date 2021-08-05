
_init:

;Control Steps2.c,9 :: 		void init(){
;Control Steps2.c,10 :: 		TRISD = TRISB=0;
	CLRF        TRISB+0 
	MOVF        TRISB+0, 0 
	MOVWF       TRISD+0 
;Control Steps2.c,11 :: 		stepperA=stepperB=0;
	CLRF        PORTD+0 
	MOVF        PORTD+0, 0 
	MOVWF       PORTB+0 
;Control Steps2.c,12 :: 		HID_Enable(&readbuff, &writebuff);
	MOVLW       _readBuff+0
	MOVWF       FARG_HID_Enable_readbuff+0 
	MOVLW       hi_addr(_readBuff+0)
	MOVWF       FARG_HID_Enable_readbuff+1 
	MOVLW       _writeBuff+0
	MOVWF       FARG_HID_Enable_writebuff+0 
	MOVLW       hi_addr(_writeBuff+0)
	MOVWF       FARG_HID_Enable_writebuff+1 
	CALL        _HID_Enable+0, 0
;Control Steps2.c,14 :: 		}
L_end_init:
	RETURN      0
; end of _init

_fullStepACCW:

;Control Steps2.c,16 :: 		void fullStepACCW(char stepIndex){
;Control Steps2.c,17 :: 		switch(stepIndex){
	GOTO        L_fullStepACCW0
;Control Steps2.c,18 :: 		case 0:
L_fullStepACCW2:
;Control Steps2.c,19 :: 		stepperA=0b00000011;
	MOVLW       3
	MOVWF       PORTB+0 
;Control Steps2.c,20 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepACCW3:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepACCW3
	DECFSZ      R12, 1, 1
	BRA         L_fullStepACCW3
;Control Steps2.c,21 :: 		break;
	GOTO        L_fullStepACCW1
;Control Steps2.c,22 :: 		case 1:
L_fullStepACCW4:
;Control Steps2.c,23 :: 		stepperA=0b00000110;
	MOVLW       6
	MOVWF       PORTB+0 
;Control Steps2.c,24 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepACCW5:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepACCW5
	DECFSZ      R12, 1, 1
	BRA         L_fullStepACCW5
;Control Steps2.c,25 :: 		break;
	GOTO        L_fullStepACCW1
;Control Steps2.c,26 :: 		case 2:
L_fullStepACCW6:
;Control Steps2.c,27 :: 		stepperA=0b00001100;
	MOVLW       12
	MOVWF       PORTB+0 
;Control Steps2.c,28 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepACCW7:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepACCW7
	DECFSZ      R12, 1, 1
	BRA         L_fullStepACCW7
;Control Steps2.c,29 :: 		break;
	GOTO        L_fullStepACCW1
;Control Steps2.c,30 :: 		case 3:
L_fullStepACCW8:
;Control Steps2.c,31 :: 		stepperA=0b00001001;
	MOVLW       9
	MOVWF       PORTB+0 
;Control Steps2.c,32 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepACCW9:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepACCW9
	DECFSZ      R12, 1, 1
	BRA         L_fullStepACCW9
;Control Steps2.c,33 :: 		break;
	GOTO        L_fullStepACCW1
;Control Steps2.c,34 :: 		}
L_fullStepACCW0:
	MOVF        FARG_fullStepACCW_stepIndex+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepACCW2
	MOVF        FARG_fullStepACCW_stepIndex+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepACCW4
	MOVF        FARG_fullStepACCW_stepIndex+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepACCW6
	MOVF        FARG_fullStepACCW_stepIndex+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepACCW8
L_fullStepACCW1:
;Control Steps2.c,35 :: 		}
L_end_fullStepACCW:
	RETURN      0
; end of _fullStepACCW

_fullStepACW:

;Control Steps2.c,37 :: 		void fullStepACW(char stepIndex){
;Control Steps2.c,38 :: 		switch(stepIndex){
	GOTO        L_fullStepACW10
;Control Steps2.c,39 :: 		case 0:
L_fullStepACW12:
;Control Steps2.c,40 :: 		stepperA=0b00000011;
	MOVLW       3
	MOVWF       PORTB+0 
;Control Steps2.c,41 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepACW13:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepACW13
	DECFSZ      R12, 1, 1
	BRA         L_fullStepACW13
;Control Steps2.c,42 :: 		break;
	GOTO        L_fullStepACW11
;Control Steps2.c,43 :: 		case 1:
L_fullStepACW14:
;Control Steps2.c,44 :: 		stepperA=0b00001001;
	MOVLW       9
	MOVWF       PORTB+0 
;Control Steps2.c,46 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepACW15:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepACW15
	DECFSZ      R12, 1, 1
	BRA         L_fullStepACW15
;Control Steps2.c,47 :: 		break;
	GOTO        L_fullStepACW11
;Control Steps2.c,48 :: 		case 2:
L_fullStepACW16:
;Control Steps2.c,49 :: 		stepperA=0b00001100;
	MOVLW       12
	MOVWF       PORTB+0 
;Control Steps2.c,50 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepACW17:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepACW17
	DECFSZ      R12, 1, 1
	BRA         L_fullStepACW17
;Control Steps2.c,51 :: 		break;
	GOTO        L_fullStepACW11
;Control Steps2.c,52 :: 		case 3:
L_fullStepACW18:
;Control Steps2.c,53 :: 		stepperA=0b00000110;
	MOVLW       6
	MOVWF       PORTB+0 
;Control Steps2.c,54 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepACW19:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepACW19
	DECFSZ      R12, 1, 1
	BRA         L_fullStepACW19
;Control Steps2.c,55 :: 		break;
	GOTO        L_fullStepACW11
;Control Steps2.c,56 :: 		}
L_fullStepACW10:
	MOVF        FARG_fullStepACW_stepIndex+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepACW12
	MOVF        FARG_fullStepACW_stepIndex+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepACW14
	MOVF        FARG_fullStepACW_stepIndex+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepACW16
	MOVF        FARG_fullStepACW_stepIndex+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepACW18
L_fullStepACW11:
;Control Steps2.c,57 :: 		}
L_end_fullStepACW:
	RETURN      0
; end of _fullStepACW

_fullStepA:

;Control Steps2.c,58 :: 		void fullStepA(unsigned char multiplier, unsigned char steps, unsigned char direction)  {
;Control Steps2.c,60 :: 		for(i=0;i<steps;i++){
	CLRF        fullStepA_i_L0+0 
L_fullStepA20:
	MOVF        FARG_fullStepA_steps+0, 0 
	SUBWF       fullStepA_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_fullStepA21
;Control Steps2.c,62 :: 		for(j=0;j<multiplier;j++){
	CLRF        fullStepA_j_L0+0 
L_fullStepA23:
	MOVF        FARG_fullStepA_multiplier+0, 0 
	SUBWF       fullStepA_j_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_fullStepA24
;Control Steps2.c,63 :: 		if(direction == 1){
	MOVF        FARG_fullStepA_direction+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_fullStepA26
;Control Steps2.c,64 :: 		fullStepACW(j%4);
	MOVLW       3
	ANDWF       fullStepA_j_L0+0, 0 
	MOVWF       FARG_fullStepACW_stepIndex+0 
	CALL        _fullStepACW+0, 0
;Control Steps2.c,66 :: 		}
	GOTO        L_fullStepA27
L_fullStepA26:
;Control Steps2.c,68 :: 		fullStepACCW(j%4);
	MOVLW       3
	ANDWF       fullStepA_j_L0+0, 0 
	MOVWF       FARG_fullStepACCW_stepIndex+0 
	CALL        _fullStepACCW+0, 0
L_fullStepA27:
;Control Steps2.c,62 :: 		for(j=0;j<multiplier;j++){
	INCF        fullStepA_j_L0+0, 1 
;Control Steps2.c,71 :: 		}
	GOTO        L_fullStepA23
L_fullStepA24:
;Control Steps2.c,72 :: 		delay_ms(DELAY);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_fullStepA28:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepA28
	DECFSZ      R12, 1, 1
	BRA         L_fullStepA28
	DECFSZ      R11, 1, 1
	BRA         L_fullStepA28
;Control Steps2.c,60 :: 		for(i=0;i<steps;i++){
	INCF        fullStepA_i_L0+0, 1 
;Control Steps2.c,73 :: 		}
	GOTO        L_fullStepA20
L_fullStepA21:
;Control Steps2.c,77 :: 		}
L_end_fullStepA:
	RETURN      0
; end of _fullStepA

_fullStepBCCW:

;Control Steps2.c,80 :: 		void fullStepBCCW(char stepIndex){
;Control Steps2.c,81 :: 		switch(stepIndex){
	GOTO        L_fullStepBCCW29
;Control Steps2.c,82 :: 		case 0:
L_fullStepBCCW31:
;Control Steps2.c,83 :: 		stepperB=0b00000011;
	MOVLW       3
	MOVWF       PORTD+0 
;Control Steps2.c,84 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepBCCW32:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepBCCW32
	DECFSZ      R12, 1, 1
	BRA         L_fullStepBCCW32
;Control Steps2.c,85 :: 		break;
	GOTO        L_fullStepBCCW30
;Control Steps2.c,86 :: 		case 1:
L_fullStepBCCW33:
;Control Steps2.c,87 :: 		stepperB=0b00000110;
	MOVLW       6
	MOVWF       PORTD+0 
;Control Steps2.c,88 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepBCCW34:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepBCCW34
	DECFSZ      R12, 1, 1
	BRA         L_fullStepBCCW34
;Control Steps2.c,89 :: 		break;
	GOTO        L_fullStepBCCW30
;Control Steps2.c,90 :: 		case 2:
L_fullStepBCCW35:
;Control Steps2.c,91 :: 		stepperB=0b00001100;
	MOVLW       12
	MOVWF       PORTD+0 
;Control Steps2.c,92 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepBCCW36:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepBCCW36
	DECFSZ      R12, 1, 1
	BRA         L_fullStepBCCW36
;Control Steps2.c,93 :: 		break;
	GOTO        L_fullStepBCCW30
;Control Steps2.c,94 :: 		case 3:
L_fullStepBCCW37:
;Control Steps2.c,95 :: 		stepperB=0b00001001;
	MOVLW       9
	MOVWF       PORTD+0 
;Control Steps2.c,96 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepBCCW38:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepBCCW38
	DECFSZ      R12, 1, 1
	BRA         L_fullStepBCCW38
;Control Steps2.c,97 :: 		break;
	GOTO        L_fullStepBCCW30
;Control Steps2.c,98 :: 		}
L_fullStepBCCW29:
	MOVF        FARG_fullStepBCCW_stepIndex+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepBCCW31
	MOVF        FARG_fullStepBCCW_stepIndex+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepBCCW33
	MOVF        FARG_fullStepBCCW_stepIndex+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepBCCW35
	MOVF        FARG_fullStepBCCW_stepIndex+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepBCCW37
L_fullStepBCCW30:
;Control Steps2.c,99 :: 		}
L_end_fullStepBCCW:
	RETURN      0
; end of _fullStepBCCW

_fullStepBCW:

;Control Steps2.c,101 :: 		void fullStepBCW(char stepIndex){
;Control Steps2.c,102 :: 		switch(stepIndex){
	GOTO        L_fullStepBCW39
;Control Steps2.c,103 :: 		case 0:
L_fullStepBCW41:
;Control Steps2.c,104 :: 		stepperB=0b00000011;
	MOVLW       3
	MOVWF       PORTD+0 
;Control Steps2.c,105 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepBCW42:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepBCW42
	DECFSZ      R12, 1, 1
	BRA         L_fullStepBCW42
;Control Steps2.c,106 :: 		break;
	GOTO        L_fullStepBCW40
;Control Steps2.c,107 :: 		case 1:
L_fullStepBCW43:
;Control Steps2.c,108 :: 		stepperB=0b00001001;
	MOVLW       9
	MOVWF       PORTD+0 
;Control Steps2.c,110 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepBCW44:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepBCW44
	DECFSZ      R12, 1, 1
	BRA         L_fullStepBCW44
;Control Steps2.c,111 :: 		break;
	GOTO        L_fullStepBCW40
;Control Steps2.c,112 :: 		case 2:
L_fullStepBCW45:
;Control Steps2.c,113 :: 		stepperB=0b00001100;
	MOVLW       12
	MOVWF       PORTD+0 
;Control Steps2.c,114 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepBCW46:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepBCW46
	DECFSZ      R12, 1, 1
	BRA         L_fullStepBCW46
;Control Steps2.c,115 :: 		break;
	GOTO        L_fullStepBCW40
;Control Steps2.c,116 :: 		case 3:
L_fullStepBCW47:
;Control Steps2.c,117 :: 		stepperB=0b00000110;
	MOVLW       6
	MOVWF       PORTD+0 
;Control Steps2.c,118 :: 		delay_ms(MIN_DELAY);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_fullStepBCW48:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepBCW48
	DECFSZ      R12, 1, 1
	BRA         L_fullStepBCW48
;Control Steps2.c,119 :: 		break;
	GOTO        L_fullStepBCW40
;Control Steps2.c,120 :: 		}
L_fullStepBCW39:
	MOVF        FARG_fullStepBCW_stepIndex+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepBCW41
	MOVF        FARG_fullStepBCW_stepIndex+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepBCW43
	MOVF        FARG_fullStepBCW_stepIndex+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepBCW45
	MOVF        FARG_fullStepBCW_stepIndex+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_fullStepBCW47
L_fullStepBCW40:
;Control Steps2.c,121 :: 		}
L_end_fullStepBCW:
	RETURN      0
; end of _fullStepBCW

_fullStepB:

;Control Steps2.c,122 :: 		void fullStepB(unsigned char multiplier, unsigned char steps, unsigned char direction)  {
;Control Steps2.c,124 :: 		for(i=0;i<steps;i++){
	CLRF        fullStepB_i_L0+0 
L_fullStepB49:
	MOVF        FARG_fullStepB_steps+0, 0 
	SUBWF       fullStepB_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_fullStepB50
;Control Steps2.c,126 :: 		for(j=0;j<multiplier;j++){
	CLRF        fullStepB_j_L0+0 
L_fullStepB52:
	MOVF        FARG_fullStepB_multiplier+0, 0 
	SUBWF       fullStepB_j_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_fullStepB53
;Control Steps2.c,127 :: 		if(direction == 1){
	MOVF        FARG_fullStepB_direction+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_fullStepB55
;Control Steps2.c,128 :: 		fullStepBCW(j%4);
	MOVLW       3
	ANDWF       fullStepB_j_L0+0, 0 
	MOVWF       FARG_fullStepBCW_stepIndex+0 
	CALL        _fullStepBCW+0, 0
;Control Steps2.c,130 :: 		}
	GOTO        L_fullStepB56
L_fullStepB55:
;Control Steps2.c,132 :: 		fullStepBCCW(j%4);
	MOVLW       3
	ANDWF       fullStepB_j_L0+0, 0 
	MOVWF       FARG_fullStepBCCW_stepIndex+0 
	CALL        _fullStepBCCW+0, 0
L_fullStepB56:
;Control Steps2.c,126 :: 		for(j=0;j<multiplier;j++){
	INCF        fullStepB_j_L0+0, 1 
;Control Steps2.c,135 :: 		}
	GOTO        L_fullStepB52
L_fullStepB53:
;Control Steps2.c,136 :: 		delay_ms(DELAY);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_fullStepB57:
	DECFSZ      R13, 1, 1
	BRA         L_fullStepB57
	DECFSZ      R12, 1, 1
	BRA         L_fullStepB57
	DECFSZ      R11, 1, 1
	BRA         L_fullStepB57
;Control Steps2.c,124 :: 		for(i=0;i<steps;i++){
	INCF        fullStepB_i_L0+0, 1 
;Control Steps2.c,137 :: 		}
	GOTO        L_fullStepB49
L_fullStepB50:
;Control Steps2.c,140 :: 		}
L_end_fullStepB:
	RETURN      0
; end of _fullStepB

_fullStep:

;Control Steps2.c,141 :: 		void fullStep(unsigned char multiplierM1, unsigned char stepsM1, unsigned char directionM1, unsigned char multiplierM2, unsigned char stepsM2, unsigned char directionM2)  {
;Control Steps2.c,143 :: 		for(i=0;i<stepsM1;i++){
	CLRF        fullStep_i_L0+0 
L_fullStep58:
	MOVF        FARG_fullStep_stepsM1+0, 0 
	SUBWF       fullStep_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_fullStep59
;Control Steps2.c,145 :: 		for(j=0;j<multiplierM1;j++){
	CLRF        fullStep_j_L0+0 
L_fullStep61:
	MOVF        FARG_fullStep_multiplierM1+0, 0 
	SUBWF       fullStep_j_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_fullStep62
;Control Steps2.c,146 :: 		if(directionM1 == 1){
	MOVF        FARG_fullStep_directionM1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_fullStep64
;Control Steps2.c,147 :: 		fullStepBCW(j%4);
	MOVLW       3
	ANDWF       fullStep_j_L0+0, 0 
	MOVWF       FARG_fullStepBCW_stepIndex+0 
	CALL        _fullStepBCW+0, 0
;Control Steps2.c,149 :: 		}
	GOTO        L_fullStep65
L_fullStep64:
;Control Steps2.c,151 :: 		fullStepBCCW(j%4);
	MOVLW       3
	ANDWF       fullStep_j_L0+0, 0 
	MOVWF       FARG_fullStepBCCW_stepIndex+0 
	CALL        _fullStepBCCW+0, 0
L_fullStep65:
;Control Steps2.c,145 :: 		for(j=0;j<multiplierM1;j++){
	INCF        fullStep_j_L0+0, 1 
;Control Steps2.c,154 :: 		}
	GOTO        L_fullStep61
L_fullStep62:
;Control Steps2.c,155 :: 		delay_ms(DELAY);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_fullStep66:
	DECFSZ      R13, 1, 1
	BRA         L_fullStep66
	DECFSZ      R12, 1, 1
	BRA         L_fullStep66
	DECFSZ      R11, 1, 1
	BRA         L_fullStep66
;Control Steps2.c,156 :: 		for(i=0;i<stepsM2;i++){
	CLRF        fullStep_i_L0+0 
L_fullStep67:
	MOVF        FARG_fullStep_stepsM2+0, 0 
	SUBWF       fullStep_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_fullStep68
;Control Steps2.c,157 :: 		for(v=0;v<multiplierM2;v++){
	CLRF        fullStep_v_L0+0 
L_fullStep70:
	MOVF        FARG_fullStep_multiplierM2+0, 0 
	SUBWF       fullStep_v_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_fullStep71
;Control Steps2.c,158 :: 		if(directionM2 == 1){
	MOVF        FARG_fullStep_directionM2+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_fullStep73
;Control Steps2.c,159 :: 		fullStepBCW(j%4);
	MOVLW       3
	ANDWF       fullStep_j_L0+0, 0 
	MOVWF       FARG_fullStepBCW_stepIndex+0 
	CALL        _fullStepBCW+0, 0
;Control Steps2.c,161 :: 		}
	GOTO        L_fullStep74
L_fullStep73:
;Control Steps2.c,163 :: 		fullStepBCCW(j%4);
	MOVLW       3
	ANDWF       fullStep_j_L0+0, 0 
	MOVWF       FARG_fullStepBCCW_stepIndex+0 
	CALL        _fullStepBCCW+0, 0
L_fullStep74:
;Control Steps2.c,157 :: 		for(v=0;v<multiplierM2;v++){
	INCF        fullStep_v_L0+0, 1 
;Control Steps2.c,166 :: 		}
	GOTO        L_fullStep70
L_fullStep71:
;Control Steps2.c,156 :: 		for(i=0;i<stepsM2;i++){
	INCF        fullStep_i_L0+0, 1 
;Control Steps2.c,167 :: 		}
	GOTO        L_fullStep67
L_fullStep68:
;Control Steps2.c,168 :: 		delay_ms(DELAY);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_fullStep75:
	DECFSZ      R13, 1, 1
	BRA         L_fullStep75
	DECFSZ      R12, 1, 1
	BRA         L_fullStep75
	DECFSZ      R11, 1, 1
	BRA         L_fullStep75
;Control Steps2.c,143 :: 		for(i=0;i<stepsM1;i++){
	INCF        fullStep_i_L0+0, 1 
;Control Steps2.c,170 :: 		}
	GOTO        L_fullStep58
L_fullStep59:
;Control Steps2.c,171 :: 		}
L_end_fullStep:
	RETURN      0
; end of _fullStep

_stepcount:

;Control Steps2.c,233 :: 		unsigned int stepcount(unsigned char multiplier , unsigned char step)
;Control Steps2.c,236 :: 		return multiplier*step;
	MOVF        FARG_stepcount_multiplier+0, 0 
	MULWF       FARG_stepcount_step+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        PRODH+0, 0 
	MOVWF       R1 
;Control Steps2.c,238 :: 		}
L_end_stepcount:
	RETURN      0
; end of _stepcount

_interrupt:

;Control Steps2.c,240 :: 		void interrupt(){
;Control Steps2.c,241 :: 		USB_interrupt_Proc();
	CALL        _USB_Interrupt_Proc+0, 0
;Control Steps2.c,242 :: 		}
L_end_interrupt:
L__interrupt90:
	RETFIE      1
; end of _interrupt

_main:

;Control Steps2.c,244 :: 		void main() {
;Control Steps2.c,245 :: 		init();
	CALL        _init+0, 0
;Control Steps2.c,246 :: 		while(1){
L_main76:
;Control Steps2.c,247 :: 		while(!HID_Read());
L_main78:
	CALL        _HID_Read+0, 0
	MOVF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_main79
	GOTO        L_main78
L_main79:
;Control Steps2.c,250 :: 		fullStepA(readbuff[0] ,readbuff[1], readbuff[2]);
	MOVF        1280, 0 
	MOVWF       FARG_fullStepA_multiplier+0 
	MOVF        1281, 0 
	MOVWF       FARG_fullStepA_steps+0 
	MOVF        1282, 0 
	MOVWF       FARG_fullStepA_direction+0 
	CALL        _fullStepA+0, 0
;Control Steps2.c,251 :: 		fullStepB(readbuff[3] ,readbuff[4], readbuff[5]);
	MOVF        1283, 0 
	MOVWF       FARG_fullStepB_multiplier+0 
	MOVF        1284, 0 
	MOVWF       FARG_fullStepB_steps+0 
	MOVF        1285, 0 
	MOVWF       FARG_fullStepB_direction+0 
	CALL        _fullStepB+0, 0
;Control Steps2.c,252 :: 		fullStep(readbuff[0] ,readbuff[1], readbuff[2],readbuff[3] ,readbuff[4], readbuff[5]);
	MOVF        1280, 0 
	MOVWF       FARG_fullStep_multiplierM1+0 
	MOVF        1281, 0 
	MOVWF       FARG_fullStep_stepsM1+0 
	MOVF        1282, 0 
	MOVWF       FARG_fullStep_directionM1+0 
	MOVF        1283, 0 
	MOVWF       FARG_fullStep_multiplierM2+0 
	MOVF        1284, 0 
	MOVWF       FARG_fullStep_stepsM2+0 
	MOVF        1285, 0 
	MOVWF       FARG_fullStep_directionM2+0 
	CALL        _fullStep+0, 0
;Control Steps2.c,261 :: 		}
	GOTO        L_main76
;Control Steps2.c,267 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
