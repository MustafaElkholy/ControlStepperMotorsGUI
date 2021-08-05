#define stepperA PORTB
#define stepperB PORTD
#define DELAY 200
#define MIN_DELAY 75

unsigned char readBuff[64] absolute 0x500;
unsigned char writeBuff[64] absolute 0x540;

void init(){
TRISD = TRISB=0;
stepperA=stepperB=0;
HID_Enable(&readbuff, &writebuff);

}

void fullStepACCW(char stepIndex){
switch(stepIndex){
case 0:
stepperA=0b00000011;
delay_ms(MIN_DELAY);
break;
case 1:
stepperA=0b00000110;
delay_ms(MIN_DELAY);
break;
case 2:
stepperA=0b00001100;
delay_ms(MIN_DELAY);
break;
case 3:
stepperA=0b00001001;
delay_ms(MIN_DELAY);
break;
}
}

void fullStepACW(char stepIndex){
switch(stepIndex){
case 0:
stepperA=0b00000011;
delay_ms(MIN_DELAY);
break;
case 1:
stepperA=0b00001001;

delay_ms(MIN_DELAY);
break;
case 2:
stepperA=0b00001100;
delay_ms(MIN_DELAY);
break;
case 3:
stepperA=0b00000110;
delay_ms(MIN_DELAY);
break;
}
}
void fullStepA(unsigned char multiplier, unsigned char steps, unsigned char direction)  {
char i,j;
for(i=0;i<steps;i++){
//One Large Step
for(j=0;j<multiplier;j++){
if(direction == 1){
fullStepACW(j%4); 

}
else
 fullStepACCW(j%4);


}
delay_ms(DELAY);
}



}


void fullStepBCCW(char stepIndex){
switch(stepIndex){
case 0:
stepperB=0b00000011;
delay_ms(MIN_DELAY);
break;
case 1:
stepperB=0b00000110;
delay_ms(MIN_DELAY);
break;
case 2:
stepperB=0b00001100;
delay_ms(MIN_DELAY);
break;
case 3:
stepperB=0b00001001;
delay_ms(MIN_DELAY);
break;
}
}

void fullStepBCW(char stepIndex){
switch(stepIndex){
case 0:
stepperB=0b00000011;
delay_ms(MIN_DELAY);
break;
case 1:
stepperB=0b00001001;

delay_ms(MIN_DELAY);
break;
case 2:
stepperB=0b00001100;
delay_ms(MIN_DELAY);
break;
case 3:
stepperB=0b00000110;
delay_ms(MIN_DELAY);
break;
}
}
void fullStepB(unsigned char multiplier, unsigned char steps, unsigned char direction)  {
char i,j;
for(i=0;i<steps;i++){
//One Large Step
for(j=0;j<multiplier;j++){
if(direction == 1){
fullStepBCW(j%4);

}
else
 fullStepBCCW(j%4);


}
delay_ms(DELAY);
}


}
void fullStep(unsigned char multiplierM1, unsigned char stepsM1, unsigned char directionM1, unsigned char multiplierM2, unsigned char stepsM2, unsigned char directionM2)  {
char i,j,k,v;
for(i=0;i<stepsM1;i++){
//One Large Step
for(j=0;j<multiplierM1;j++){
if(directionM1 == 1){
fullStepBCW(j%4);

}
else
 fullStepBCCW(j%4);


}
delay_ms(DELAY);
for(i=0;i<stepsM2;i++){
for(v=0;v<multiplierM2;v++){
if(directionM2 == 1){
fullStepBCW(j%4);

}
else
 fullStepBCCW(j%4);


}
}
delay_ms(DELAY);

}
}













/*

void fullStepB(unsigned int steps){
unsigned int j=steps;
while(j>0){
stepperA=0b00000011;
delay_ms(DELAY);
if(--j==0) break;

stepperA=0b00000110;
delay_ms(DELAY);
if(--j==0) break;

stepperA=0b00001100;
delay_ms(DELAY);
if(--j==0) break;

stepperA=0b00001001;
delay_ms(DELAY);
if(--j==0) break;

}
}

void fullStepA(unsigned int steps){
unsigned int j=steps;
while(j>0){
stepperA=0b00000011;
delay_ms(DELAY);
if(--j==0) break;

stepperA=0b00000110;
delay_ms(DELAY);
if(--j==0) break;

stepperA=0b00001100;
delay_ms(DELAY);
if(--j==0) break;

stepperA=0b00001001;
delay_ms(DELAY);
if(--j==0) break;

}
  */



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
//readbuffer = {stepper no ,multiplier, steps,direction}

fullStepA(readbuff[0] ,readbuff[1], readbuff[2]);
fullStepB(readbuff[3] ,readbuff[4], readbuff[5]);
fullStep(readbuff[0] ,readbuff[1], readbuff[2],readbuff[3] ,readbuff[4], readbuff[5]);





//while(!HID_Write(&writebuff,64));


}





}