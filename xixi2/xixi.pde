class Human {


  float x;
  float y;
  
  PVector vel;
  PVector acc;
  PVector loc;
  
  Human(float px, float py) {
    x=px;
    y=py;
    
    vel = new PVector(0,0);
    acc = new PVector(0,0);
    loc = new PVector(x,y);
    
    
  }


  void display() {
    fill(255, 233, 200);
    ellipse(loc.x, loc.y, 100, 100);
  }

  void update() {
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
    }
    
    void applyForce (PVector f){
      acc.add(f);
      acc.mult(0.5);
      
    }

}