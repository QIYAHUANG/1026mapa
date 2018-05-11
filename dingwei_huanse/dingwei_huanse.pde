PImage img;


void setup() {
  size(483, 600);
  background(225, 0, 0);
  img = loadImage("hahaha.png");
}


void draw() {

loadPixels();

  for (int x =0; x < img.width; x ++) {
    for (int y = 0; y < img.height; y ++) {

      int location= x + y * img.width;// special maths to get pixel locaiton

      float r = red(img.pixels[location]);
      float g = green(img.pixels[location]);
      float b = blue (img.pixels[location]);

      //colour algorithm

      r = r *3;
      

      //put the ammended colour back
      color c = color(r, g, b);
      pixels [location] = c;
    }
  }

updatePixels();
}

void keyPressed() {
}