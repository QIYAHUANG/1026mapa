import processing.serial.*;

Serial myPort; // cteate object from Serial class
 
 //float inValue = 0;
 
float sensor1 = 0;
float sensor2 = 0;

void setup(){
  size(800,600);
  background(0);
  printArray(Serial.list()); // prints all connected serial devices
  String portName = Serial.list()[1]; //whatever the number is
  myPort = new Serial(this, portName,9600); //set the serial rate 
  // don't generate a serialEvent () unless you get a new line character
  myPort.bufferUntil(','); //enables to split the data via a comma
}

void draw () {
  background(0);
  
  fill(255,0,0);
  ellipse(width*0.3, height/2, sensor1, sensor1);
  
  fill(0,0,255);
  ellipse(width*0.3, height/2, sensor2, sensor2);
  
}


void serialEvent (Serial myPort) {
  // get the ASCII string:
  //String inString = myPort.readStringUntil('\n');
  String inString = myPort.readStringUntil(',');
  String items[] = split(inString, ':');
  
  //if (inString ! = null ) {
   //String label = trim(inString);
   //inValue = float(inString);
   //println(inValue);
   if (items.length > 1) {
     String lable = trim(items[0]);
     String val = split(items[1], ',')[0];
   
    if (label.equals("S1")); {
      println ("looks like sensor 1 was  "+val);
      sensor1 = float(val);
    }
    
    if (label.equals("S2"));
    println ("looks like sensor 3 was   "+val);
    sensor2 = float(val);
  }
}