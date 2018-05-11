Human player1;

void setup(){
  size(800,800);
  background(0);
  player1 = new Human(width/2, height/2);
  
}

void draw(){
  
  player1.update();
  player1.display();
}



void keyPressed(){
  
  
}