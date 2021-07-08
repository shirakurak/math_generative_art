
function setup() {
  createCanvas(480, 340);
  // frameRate(2);
  background(230, 215, 190, 70);
}

function draw() {

  // 原点をウィンドウの中心に
  translate(width/2, height/2);

  // 円上の任意の点を取得する
  r = random(height/2);
  angle = random(360);
  x0 = r * cos(radians(angle));
  y0 = r * sin(radians(angle));

  // 取得した点を中心とした正方形上の任意の点を取得する
  l = random(30);
  j = random(30);
  k = random(30);
  x = x0 - l/2 + j;
  y = y0 - l/2 + k;

  // 要修正
  w = random(30);
  h = random(30);
  line(x, y, x+w, y);
  line(x, y, x, y+h);
}
