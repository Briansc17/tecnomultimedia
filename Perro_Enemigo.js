class Perro {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.radio = 15;
    this.velocidad = 2;
  }

  mover() {
    this.x -= this.velocidad;
  }

  mostrar() {
    fill(0, 0, 255); // Azul
    ellipse(this.x, this.y, this.radio * 2);
  }

  colision(gato) {
    if (dist(this.x, this.y, gato.x, gato.y) < this.radio + gato.radio) {
      return true;
    }
    return false;
  }
}
