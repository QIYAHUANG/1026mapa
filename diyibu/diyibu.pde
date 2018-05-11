//student name
//date
//sketch title
//brief desctiption

PImage img;


void setup() {
  size(800,600);
  background(225,0,0);
  img = loadImage("hahaha.png");
}


void draw() {
  fill(24,mouseX,mouseY);
  //cicrle at x 400 y 300 width 100 height 100
  ellipse(mouseX,mouseY,100,100);
  //draw image of variable name img at x 0 and y 0
  image(img,0,0);
  
}

void keyPressed(){
  
}