

size(500, 500);
background(255);
strokeWeight(3);
smooth();

int x = 250;
int y = 150;
int r = 100;

stroke(255, 0, 0);
arc(x, y, 2*r, 2*r, HALF_PI, 2*PI, OPEN);
arc(x+r/2, y+r/2, sqrt(2)*r, sqrt(2)*r, HALF_PI+QUARTER_PI, 3*PI/2+QUARTER_PI, OPEN);


stroke(0, 0, 255);
arc(x, y+2*r, 2*r, 2*r, -HALF_PI, PI, OPEN);
arc(x-r/2, y+(3*r)/2, sqrt(2)*r, sqrt(2)*r, -QUARTER_PI, HALF_PI+QUARTER_PI, OPEN);

save("hanamoji_S.jpg");
