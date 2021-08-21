/*
変形
*/

function setup() {
  createCanvas(480, 240);
  background('skyblue');
  noStroke();

  fill(255, 0, 0, 127);
  rect(0, 0, 100, 100);

  // 今の座標を保存する
  push();
  // x, y方向に10ずらす
  translate(10, 10);
  // 回転(ラジアン)
  rotate(PI/4);
  // 回転(角度)
  rotate(radians(30));
  // 拡大縮小(横に2倍、縦に半分)
  scale(2, 0.5);
  fill(0, 0, 255, 127);
  rect(0, 0, 100, 100);
  // 元に戻す
  pop();
}
