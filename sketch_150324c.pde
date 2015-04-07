import processing.serial.*;
Serial myPort;  
int val;    

void setup() 
{
  background(0);
 //String portName = Serial.list()[0]; //com3, same as arduino
 //print(portName);
 myPort = new Serial(this, "/dev/tty.usbmodem1411", 9600);
}

void draw()
{
 if ( myPort.available() > 0)  // If data is available,
 {  
   val = myPort.read();         // read it and store it in val
   println(val);
   fill(val, val*3, val*2);
   rect(10, 10, 50, 50);
 }
}
