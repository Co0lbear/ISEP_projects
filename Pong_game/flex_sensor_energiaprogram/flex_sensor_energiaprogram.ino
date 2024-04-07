/*
  AnalogReadSerial
  Reads an analog input on pin A3, prints the result to the serial monitor.
  Attach the center pin of a potentiometer to pin A3, and the outside pins to ~3V and ground.
  
  Hardware Required:
  * MSP-EXP430G2 LaunchPad
  * 10-kilohm Potentiometer
  * hook-up wire

  This example code is in the public domain.
*/
int flexs = 25;
int data = 0;

// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600); // msp430g2231 must use 4800
  pinMode(flexs, INPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input on analog pin A3:
  data = analogRead(flexs);
  float flex_voltage = (data * 3.3)/4095.0;

  Serial.println(10*flex_voltage); //Serial.println("v");  
  //Serial.println(sensorValue); 
  delay(100); // delay in between reads for stability
}
