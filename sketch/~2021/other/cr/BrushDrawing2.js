var img;

var balls = [];

var radiusLow = 10;
var radiusHigh = 20;
var rangeLow = 0.5;
var rangeHigh = 1;

function preload() {
  img = loadImage("pearl_1.jpg");
}

function setup() {
  createCanvas(img.width, img.height);
  background(255);
  textAlign(CENTER);
}
