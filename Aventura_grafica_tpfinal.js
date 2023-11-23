let aventura;

function setup() {
  createCanvas(600, 600);
  aventura = new Aventura();
}

function draw() {
  aventura.mostrar();
}

function keyPressed() {
  aventura.keyPresionada();
}

function mousePressed() {
  aventura.mousePresionado();
}
