//student name
//date
//sketch title
//brief desctiption

float x=0;
float y=0;

float a=0;
float b=0;
float c=0;

void setup() {
  size(800,600);
  background(0,27,217);
}


void draw() {
  
  x=random(0,width);
  y=random(0,width);
  
  a=random(0,255);
  b=random(0,255);
  c=random(0.255);
  
  if (mousePressed){
  fill(a,b,c,85);
  // shape  x,y,width.height
  ellipse(x,y,100,100);
  noStroke();
  }
  
}

void keyPressed(){
  saveFrame("filename-tt.jpg");
  background(0,27,217);
}