int locationX;
int direction;

void setup() {
  size(300, 300);
  frameRate(30);
  fill(204, 204, 204);
  noStroke();

  locationX = 0;
  direction = -1;
}

void draw() {
  background(0);
  ellipse(locationX, height/2, 600, 600);
  
  locationX = locationX + 10 * direction;
  
  if (locationX < 0 || locationX > width) {
    direction = direction * -1;
  }
}
