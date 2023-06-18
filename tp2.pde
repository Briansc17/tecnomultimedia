PImage img;
color lineaColor;
int x, y, ancho, alto;
int cantidadLineas = 12;
int ancholinea = 7;
float angulo = 1;

void setup() {
  background(#FFFFFF);
  img = loadImage("Op art.png");
  size(800, 400);
  lineaColor = color(255);

  x = 500;
  y = 70;
  ancho = 230;
  alto = 230;
}

void draw() {
  background(#FFFFFF);
  image(img, 40, 40);
  fill(0);
  rect(450, 35, 320, 297);

  for (int i = 50; i < 334; i += 15) {
    fill(0);
    noStroke();
    cuadrado(x, y, ancho, alto);

    for (int j = 0; j < cantidadLineas; j++) {
      float x1 = map(j, 0, cantidadLineas, 510, 734);

      strokeWeight(ancholinea);
      stroke(lineaColor);

      float offset = map(sin(radians(angulo + j * 10)), -1, 1, -15, 15);
      line(x1 + offset, 80, x1 + offset, 293);
    }

    strokeWeight(ancholinea);
    stroke(lineaColor);
    line(460, i, 760, i);
  }

  angulo += 1; // Velocidad de rotación de las líneas
}

void cuadrado(int x, int y, int ancho, int alto) {
  fill(0);
  rect(x, y, ancho, alto);
}

void mousePressed() {
  cantidadLineas += 5;
  if (cantidadLineas > 20) {
    cantidadLineas = 5;
  }

  if (lineaColor == color(255)) {
    lineaColor = color(0);
  } else {
    lineaColor = color(255);
  }

  ancholinea = int(random(3, 10));
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  }
}

void reiniciar() {
  cantidadLineas = 12;
  lineaColor = color(255);
  ancholinea = 7;
  angulo = 0;
}
