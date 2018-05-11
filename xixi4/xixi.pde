class Human {


  float x;
  float y;

  PVector vel;
  PVector acc;
  PVector loc;

  PImage img;

  Human(float px, float py) {
    x=px;
    y=py;

    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    loc = new PVector(x, y);


    img = loadImage("hahaha.png");
  }


  void display() {
    fill(255, 233, 200);
    //ellipse(loc.x, loc.y, 100, 100);
    image(img, loc.x, loc.y);
  }

  void update() {
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
  }

  void applyForce (PVector f) {
    acc.add(f);
    acc.mult(0.5);
  }


  void checkEdges() {
    if (loc.x <0) {
      loc.x = width;
    } else if (loc.x > width) {
      loc.x = 0;
    }
    if (loc.y <0){
      loc.y = height;
    } else if (loc.y > height) {
      loc.y = 0;
    }
  }
}