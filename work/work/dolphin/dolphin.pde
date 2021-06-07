size(500, 500);
background(255);
strokeWeight(3);
smooth();

int x = 250;
int y = 250;
int r = 75;


stroke(#1A1A1A);
ellipse(x, y, 2*r, 2*r);
//arc(x, y, 2*r, 2*r, -HALF_PI, PI, OPEN);
//arc(x-r/2, y-r/2, sqrt(2)*r, sqrt(2)*r, -QUARTER_PI, HALF_PI+QUARTER_PI, OPEN);

save("dolphin.jpg");
