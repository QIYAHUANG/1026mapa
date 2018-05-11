import processing.video.*;

Capture vid;

void setup() {
  size(800, 600);
  background(225, 0, 0);

  String[] cams = Capture.list();
  printArray(cams);

  vid = new Capture (this, 640, 480, 30);
  vid.start();//sratr teh camera
}




void draw() {

  //image(vid,0,0);
  for (int i =0; i < 100; i++) {
    float rx = random(width);
    float ry = random(height);
    color c =vid.get(int(rx), int(ry));
    fill(c);
    noStroke();
    rect(rx, ry, 10, 10);
  }
}


void keyPressed() {
}



void captureEvent(Capture vid) {
  vid.read();
}