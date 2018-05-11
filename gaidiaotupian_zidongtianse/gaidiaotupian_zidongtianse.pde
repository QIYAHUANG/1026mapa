PImage img;


void setup() {
  size(800,600);
  background(225,0,0);
  img = loadImage("hahaha.png");
}


void draw() {
  //draw image of variable name img at x 0 and y 0
  //image(img,0,0);
  
  float rx = random(width);
  float ry = random(height);
 
  color c =img.get(int(rx),int(ry));
  
  fill(c);
 rect(rx,ry,100,100);
}

void keyPressed(){
  
}