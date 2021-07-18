// sketch2.jsは十字ではないようにしたが、微妙な気がする

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
  j1 = random(30);
  k1 = random(30);
  x1 = x0 - l/2 + j1;
  y1 = y0 - l/2 + k1;

  j2 = random(30);
  k2 = random(30);
  x2 = x0 - l/2 + j2;
  y2 = y0 - l/2 + k2;

  // 描画
  strokeWeight(3);

  w = random(15);
  line(x1-w, y1, x1+w, y1);

  h = random(15);
  line(x2, y2-h, x2, y2+h);
}
