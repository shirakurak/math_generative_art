/*
#06
ellipseMode(CENTER);
ellipse(cx, cy, w, h);

ellipseMode(RADIUS);
ellipseMode(CORNER);
ellipseMode(CORNERS);

line(x1, y1, x2, y2);

point
arc
triangle

*/

function setup() {
  createCanvas(480, 240);
  background('skyblue');

  // 変数を用いて色を指定
  var c = color('pink');
  // fill(c);

  // 塗りの色を指定しない
  noFill();

  // 線の色
  stroke(c);
  // 線の太さ
  strokeWeight(5);
  // 線をなくす
  noStroke();

  ellipse(width/2, height/2, 200, 100);
}
