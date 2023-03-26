/*
乱数
  random() 0-1
  random(n) 0-n
  random(n, m) n-m
*/

var x, y, r;

function setup() {
  createCanvas(480, 240);
  noStroke(); // 境界線はなし
  background('skyblue');
}

// 画面上の任意の場所に任意の大きさと透明度の円が描画される
function draw() {
  x = random(width);
  y = random(height);
  if (random() > 0.9) {
    r = random(50, 80);
  } else {
    r = random(10, 30);
  }
  fill(255, 255, 255, random(30, 250));
  ellipse(x, y, r, r);
}
