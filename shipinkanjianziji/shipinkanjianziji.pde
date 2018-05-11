import processing.video.*;

Capture vid;

void setup() {
  size(800,600);
  background(225,0,0);
  
  vid = new Capture (this,640,480,30);
  vid.start();//sratr teh camera
}




void draw(){
  
  vid.read();
  image(vid,0,0);
  
  
  
}


void keyPressed(){
  
}