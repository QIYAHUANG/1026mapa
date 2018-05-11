int s = 0;
int m = 0;

void setup(){
  size(200,100);
  background(0);
  noStroke();
}

void draw(){
  background(0);
  textAlign(CENTER);
  textSize(30);
  delay(1000);
  if(s<=59) {
    text(m+ ":"+s,width/2,height/2);
    s = s + 1;
  }
  else{
    m = m + 1;
    s = 0;
    text(m+ ":"+s,width/2,height/2);
  }
}