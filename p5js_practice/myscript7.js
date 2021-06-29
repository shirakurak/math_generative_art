/*
キー入力
keyIsPressed

特定のキーを押下した場合、なんらかの処理を行いたい
keyTyped()：特殊キーを無視
keyPressed()：大文字小文字を区別しない

key：通常キー
keyCode：特殊キー ALT ENTER TAB
*/

var r = 50;

function setup() {
  createCanvas(480, 240);
}

function draw() {
  noStroke();
  background('skyblue');

  // なんらかのキーが押されている間、Trueを返す
  if (keyIsPressed === true) {
    fill('pink');
  } else {
    fill('white');
  }

  ellipse(mouseX, mouseY, r, r);
}

// キーが押下されたときの処理
function keyTyped() {
  // uキーが押下されたとき
  if (key === 'u') {
    // 半径が10ずつ増える
    r += 10;
  }
  // ブラウザによりクリック時のデフォルトの動作がある場合、無効化
  return false;
}

function keyPressed() {
  // ↑が押下されたとき
  if (keyCode === UP_ARROW) {
    // 半径が10ずつ増える
    r += 10;
  }
  // ブラウザによりクリック時のデフォルトの動作がある場合、無効化
  return false;
}
