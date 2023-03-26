int cnt = 0;

void setup() {
  size(400, 400);
}

void draw() {
  //triangle(0, height, height/2, height-height/2*sqrt(3), width, height);
}

void mouseClicked() {
  //triangle(0, height, height/2, height-height/2*sqrt(3), width, height);
  makeTriangle(0, height, height/2, height-height/2*sqrt(3), width, height);
  cnt++;
  
  float x1 = (0 + height/2)/2;
  float y1 = (height + height-height/2*sqrt(3))/2;
  float x2 = (0 + width) /2 ;
  float y2 = (height * height) /2;
  float x3 = (height/2 + width)/2;
  float y3 = (height-height/2*sqrt(3) + height)/2;
  
  if (cnt > 1) {
    makeTriangle(x1, y1, x2, y2, x3, y3);
  }
}



void makeTriangle(float x1, float y1, float x2, float y2, float x3, float y3) {
  triangle(x1, y1, x2, y2, x3, y3);
}
