/*
テキスト

textAlign
テキストの左下がx, yとなる
text(s, x, y, w, h)
*/

function setup() {
  createCanvas(480, 240);
  background('skyblue');

  // テキストの左上をx, yとする
  textAlign(LEFT, TOP);
  textSize(32);
  // textFont('Impact');
  textStyle(BOLD);

  fill('pink');
  strokeWeight(5);
  stroke('gray');
  text("hello, world", 100, 100);
  ellipse(100, 100, 10, 10);
}
