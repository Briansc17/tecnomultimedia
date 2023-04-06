PImage P;

void setup () {

  size(800, 400);
  background(#FCFCFC);
  P = loadImage("image.png");
}
void draw() {

  image(P, 0, 0);
  stroke(#0B3652);
  fill(#F5DB7C);
  rect(325, 23, 119, 150, 10); 
  fill (#98C3CE);
  rect(310, 125, 150, 50, 10); 
  fill(#0B3652);
  rect(335, 145, 100, 5, 10);
  fill(#98C3CE);
  strokeWeight(5);
  rect(360, 170, 50, 150, 10); 
  stroke(#0B3652);
  fill(#98C3CE);
  
  beginShape();
  vertex(341, 26);
  vertex(342, 75);
  vertex(356, 72);
  vertex(353, 49);
  vertex(369, 50);
  vertex(369, 61);
  vertex(385, 62);
  vertex(390, 48);
  vertex(405, 46);
  vertex(406, 80);
  vertex(429, 81);
  vertex(428, 24);
  endShape();

  beginShape();
  vertex(413, 176);
  vertex(448, 176);
  vertex(413, 207);
  endShape();

  beginShape();
  vertex(360, 207);
  vertex(327, 177);
  vertex(358, 177);


  endShape();
}
void mousePressed() {
  println("vertex("+mouseX+","+mouseY+");");
}
