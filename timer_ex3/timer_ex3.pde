int m;

void setup()
{
  size(100,100);
}

void draw()
{
  background(255);
  fill(0);
  m=millis()/1000;
  
  text(m,10,10);
  
}