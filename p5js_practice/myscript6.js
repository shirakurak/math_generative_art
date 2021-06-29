/*
mouse
mouseX, mouseY：マウス座標を取得できる
mouseIsPressed：マウスの状態を検出する
mousePressed()：マウスがクリックしたときの処理を書く
*/

var r = 50;

function setup() {
  createCanvas(480, 240);
}

function draw() {
  noStroke();
  background('skyblue');

  // マウスの状態を見て押されている間、Trueを返す
  if (mouseIsPressed === true) {
    fill('pink');
  } else {
    fill('white');
  }

  ellipse(mouseX, mouseY, r, r);
}

// クリックしたときの処理
function mousePressed() {
  // 半径が10ずつ増える
  r += 10;
  // ブラウザによりクリック時のデフォルトの動作がある場合、無効化
  return false;
}
