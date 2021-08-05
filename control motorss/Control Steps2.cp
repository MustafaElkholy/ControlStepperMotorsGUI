#line 1 "C:/Users/Mustafa Elkholy/Desktop/control motorss/Control Steps2.c"





unsigned char readBuff[64] absolute 0x500;
unsigned char writeBuff[64] absolute 0x540;

void init(){
TRISD = TRISB=0;
 PORTB = PORTD =0;
HID_Enable(&readbuff, &writebuff);

}

void fullStepACCW(char stepIndex){
switch(stepIndex){
case 0:
 PORTB =0b00000011;
delay_ms( 75 );
break;
case 1:
 PORTB =0b00000110;
delay_ms( 75 );
break;
case 2:
 PORTB =0b00001100;
delay_ms( 75 );
break;
case 3:
 PORTB =0b00001001;
delay_ms( 75 );
break;
}
}

void fullStepACW(char stepIndex){
switch(stepIndex){
case 0:
 PORTB =0b00000011;
delay_ms( 75 );
break;
case 1:
 PORTB =0b00001001;

delay_ms( 75 );
break;
case 2:
 PORTB =0b00001100;
delay_ms( 75 );
break;
case 3:
 PORTB =0b00000110;
delay_ms( 75 );
break;
}
}
void fullStepA(unsigned char multiplier, unsigned char steps, unsigned char direction) {
char i,j;
for(i=0;i<steps;i++){

for(j=0;j<multiplier;j++){
if(direction == 1){
fullStepACW(j%4);

}
else
 fullStepACCW(j%4);


}
delay_ms( 200 );
}



}


void fullStepBCCW(char stepIndex){
switch(stepIndex){
case 0:
 PORTD =0b00000011;
delay_ms( 75 );
break;
case 1:
 PORTD =0b00000110;
delay_ms( 75 );
break;
case 2:
 PORTD =0b00001100;
delay_ms( 75 );
break;
case 3:
 PORTD =0b00001001;
delay_ms( 75 );
break;
}
}

void fullStepBCW(char stepIndex){
switch(stepIndex){
case 0:
 PORTD =0b00000011;
delay_ms( 75 );
break;
case 1:
 PORTD =0b00001001;

delay_ms( 75 );
break;
case 2:
 PORTD =0b00001100;
delay_ms( 75 );
break;
case 3:
 PORTD =0b00000110;
delay_ms( 75 );
break;
}
}
void fullStepB(unsigned char multiplier, unsigned char steps, unsigned char direction) {
char i,j;
for(i=0;i<steps;i++){

for(j=0;j<multiplier;j++){
if(direction == 1){
fullStepBCW(j%4);

}
else
 fullStepBCCW(j%4);


}
delay_ms( 200 );
}


}
void fullStep(unsigned char multiplierM1, unsigned char stepsM1, unsigned char directionM1, unsigned char multiplierM2, unsigned char stepsM2, unsigned char directionM2) {
char i,j,k,v;
for(i=0;i<stepsM1;i++){

for(j=0;j<multiplierM1;j++){
if(directionM1 == 1){
fullStepBCW(j%4);

}
else
 fullStepBCCW(j%4);


}
delay_ms( 200 );
for(i=0;i<stepsM2;i++){
for(v=0;v<multiplierM2;v++){
if(directionM2 == 1){
fullStepBCW(j%4);

}
else
 fullStepBCCW(j%4);


}
}
delay_ms( 200 );

}
}
#line 233 "C:/Users/Mustafa Elkholy/Desktop/control motorss/Control Steps2.c"
unsigned int stepcount(unsigned char multiplier , unsigned char step)
{

return multiplier*step;

}

void interrupt(){
USB_interrupt_Proc();
}

void main() {
init();
while(1){
while(!HID_Read());


fullStepA(readbuff[0] ,readbuff[1], readbuff[2]);
fullStepB(readbuff[3] ,readbuff[4], readbuff[5]);
fullStep(readbuff[0] ,readbuff[1], readbuff[2],readbuff[3] ,readbuff[4], readbuff[5]);








}





}
