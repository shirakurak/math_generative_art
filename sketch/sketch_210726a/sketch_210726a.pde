PImage img;

void setup() {
  size(1000, 750);
  img = loadImage("cactus.jpg");
  img.filter(BLUR, 10);
}

void draw() {
  background(0);
  image(img, 0, 0);
  save("filterd-cactus.png");
}
