
function setup() {
  createCanvas(480, 340);
  frameRate(1);
  background(230, 215, 190, 70);
}

function draw() {

  x = random(width);
  y = random(height);
  w = random(0, 20);

  line(x, y, x+2*w, y);
  line(x+w, y-w, x+w, y+w);

}
