PImage img;
int x = 400;
int y = 400;

void setup() {
  size(700, 550);
  
  img = createImage(x, y, ARGB);
  
  for (int i = 0; i < img.pixels.length; i++) {
    float a = map(i, 0, img.pixels.length, 255, 0);
    img.pixels[i] = color(0, 153, 204, a);
  }

}

void draw() {
  background(0);
  
  translate(width/2, height/2);
  image(img, -x/2, -y/2);
  
  beginShape();
  // 図形の外枠
  vertex(-x/2, -y/2);
  vertex(x/2, -y/2);
  vertex(x/2, y/2);
  vertex(-x/2, y/2);
  beginContour();
  for (int i = 360; 0 < i; i--) {
    vertex(x/2 * cos(radians(i)), y/2 * sin(radians(i)));
  }
  endContour();
  endShape(CLOSE);
}
