PImage img;

void setup() {
  size(800, 600);
  img = loadImage("cactus.jpg");
}

void draw() {
  background(0);
  //tint(127);        // brightness
  tint(0, 127, 255);  // rgb
  image(img, 0, 0);
  noTint();
  image(img, width/2, 0);
  
  save("tint-cactus.png");
}
