Timer startTimer;


void setup(){
  size(600,600);
  startTimer = new Timer(10);
}

void draw(){
  background(200);
  startTimer.countUp();
  fill(0);
  text(startTimer.getTime(),20,20);
  
}