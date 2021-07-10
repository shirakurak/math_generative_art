
function setup() {
  createCanvas(480, 340);
  frameRate(1);
  background(230, 215, 190, 70);
}

function draw() {

  // 原点をウィンドウの中心に
  translate(width/2, height/2);

  // 円内の任意の点を取得する
  r = random(height/2);
  angle = random(360);
  x0 = r * cos(radians(angle));
  y0 = r * sin(radians(angle));

  // 取得した点を中心とした正方形内の任意の点を取得する
  l = random(30);
  j = random(30);
  k = random(30);
  x = x0 - l/2 + j;
  y = y0 - l/2 + k;

  // 描画
  w = random(15);
  h = random(15);
  strokeWeight(3);
  line(x-w, y, x+w, y);
  line(x, y-h, x, y+h);
}
