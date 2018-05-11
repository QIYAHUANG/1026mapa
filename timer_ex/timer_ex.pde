int time;
String timeString = "0";
int initialTime;
int interval = 1000;
int totalTime = 100000;
color c = color (255);;


void setup()
{
  size(300, 300);
  
  background(255);
  fill(0);
  initialTime = millis();
}

void draw()
{
  background(c);
  
  if (millis() - initialTime > interval)
  {
    time = int(millis()/1000);
    timeString = nf(time, 3);
    initialTime = millis();
     
  }

  text(timeString + " sec", width/1.3, height/7);
   
     
   }