size(500, 300);
smooth();
background(230, 230, 230);

float centX = width/2;
float centY = height/2;

stroke(130, 0, 0);
strokeWeight(4);

line(centX - 70, centY - 70, centX + 70, centY + 70);
line(centX + 70, centY - 70, centX - 70, centY + 70);

stroke(0, 125);
strokeWeight(6);

fill(255, 150);
ellipse(centX, centY, 50, 50);
