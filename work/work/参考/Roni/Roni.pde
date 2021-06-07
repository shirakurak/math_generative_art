// By Roni Kaufman

let particles = [];
let n;
let squiggliness = 1/250;
let count = 150;
let maxSize = 250;
let interval;

function setup() {
  createCanvas(windowWidth, windowHeight);
  colorMode(HSB, 100);
  noStroke();
  
  background(10);
  updateParticles();
  
  //interval = setInterval(updateParticles, 1000);
}

function draw() {
  for (let p of particles) {
    p.draw();
    p.move();
  }
}

function updateParticles() {
  particles = [];
  let r = count;
  n = 8 * count;
  for (let i = 0; i < n; i++) {
    let theta = map(i, 0, n, -PI, PI);
    let x_ = width/2 + r*cos(theta);
    let y_ = height/2 + r*sin(theta);
    let s_ = 1.5;
    let c_ = color(random(15, 16), random(90, 100), random(80, 100), 100);
    particles.push(new Particle(x_, y_, s_, c_));
  }
  count = (count + 5);
  if (count > maxSize) {
    clearInterval(interval);
  }
}

function Particle(x_, y_, s_, c_) {
  this.x = x_;
  this.y = y_;
  this.size = s_;
  this.c = c_;
  
  this.alpha = 100;
  this.dist = 1;
  
  this.move = function() {
    let theta = noise(this.x * squiggliness, this.y * squiggliness)*PI*4;
    let v = p5.Vector.fromAngle(theta, this.dist);
    this.x += v.x;
    this.y += v.y;
    //this.dist *= 0.999;
    this.alpha *= 0.99;
    this.size *= 0.99;
  }
  
  this.draw = function() {
    this.c.setAlpha(this.alpha);
    fill(this.c);
    circle(this.x, this.y, this.size);
    this.c.setAlpha(100);
  }
}
