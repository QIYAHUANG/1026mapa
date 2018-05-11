import processing.serial.*;

Serial myPort; // cteate object from Serial class
 
 //float inValue = 0;
 
float sensor1 = 0;
float sensor2 = 0;

void setup(){
  size(800,600);
  background(0);
  printArray(Serial.list()); // prints all connected serial devices
  String portName = Serial.list
  try {
  myPort = new Serial(this, Serial.list()[1],9600); //115200
  println ("connected to -->   "  +portName)
  // don't generate a serialEvent() unless you get a newline character:
  myPort.bufferUntil(','); //enables to split the data via a comma which is set in to
}

void draw () {
  background(0);
  fill(255,0,0);
  ellipse(width*0.3);
}


void serialEvent (Serial myPort) {
  // get the ASCII string:
  String inString = myPort.readStringUntil(',');
  String items[] = split(inString, ':');
  
  if (item.length > 1 ) {
   String label = trim(items [0]);
   String val = split(items [1]);
   
    if (label.equals("S1")); {
      println ("looks like sensor 1 was  "+val);
      sensor1 = float(val);
    }
    
    if (label.equals("S2");
    println ("looks like sensor 3 was   "+val);
    sensor2 = float(val);
  }
}
}