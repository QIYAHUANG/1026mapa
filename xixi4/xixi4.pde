Human player1;

void setup(){
  size(800,800);
  background(0);
  player1 = new Human(width/2, height/2);
  
  
  imageMode(CENTER);
  
}

void draw(){
  background(0);
  
  player1.update();
  player1.checkEdges();
  //player1.applyForce(new PVector(0,0.1)); //add gravity
  player1.display();
}



void keyPressed(){
  
  switch(keyCode){
    
    case (UP) :
    player1.applyForce(new PVector(0,-3));
    break;
    
   
    case(DOWN) :
     player1.applyForce(new PVector(0,3));
    break;
    
    case(LEFT) :
     player1.applyForce(new PVector(-3,0));
     break;
     
     case(RIGHT) :
     player1.applyForce(new PVector(3,0));
     break;
  }
  
  
  
}