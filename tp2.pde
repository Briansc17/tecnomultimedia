/*Video
https://youtu.be/jEhjD9UsYog
*/

PImage img;
color lineaColor;
int x, y, ancho, alto;
int cantidadLineas = 12;
int ancholinea = 7;
float angulo = 1;

void setup() {
  size(800, 400);
  background(255);
  img = loadImage("Op art.png");
  lineaColor = color(255);

  x = 500;
  y = 70;
  ancho = 230;
  alto = 230;
}

void draw() {
  image(img, 40, 40);
  fill(0);
  rect(450, 35, 320, 297);

  dibujarLineas();
  angulo += 1; // Velocidad de rotación de las líneas
}

void dibujarLineas() {
  for (int i = 50; i < 334; i += 15) {
    fill(0);
    noStroke();
    dibujarCuadrado(x, y, ancho, alto);

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
}

void dibujarCuadrado(int x, int y, int ancho, int alto) {
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
  
  int base = 10;
  int altura = 5;
  int areaRectangulo = obtenerAreaRectangulo(base, altura);
  println("El área del rectángulo es: " + areaRectangulo);
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

int obtenerAreaRectangulo(int base, int altura) {
  int area = base * altura;
  return area;
}
