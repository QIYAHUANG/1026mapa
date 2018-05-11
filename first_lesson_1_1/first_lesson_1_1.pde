//student name
//date
//sketch title
//brief desctiption

PImage img;
PImage bg;

void setup() {
  size(800,600);
  background(0,27,217);
  img=loadImage("hahaha.png");
  bg=loadImage("background.jpg");
  imageMode(CENTER);
}


void draw() {
  background(bg);
  
  //filter(INVERT);
  
  tint(mouseX,mouseY,50);
 image(img,mouseX,mouseY,50,120);
 
  
}

void keyPressed(){
  saveFrame("filename-tt.jpg");
  background(0,27,217);
}