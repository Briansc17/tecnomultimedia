class Gato {
  constructor() {
    this.x = 50;
    this.y = height / 2;
    this.radio = 20;
    this.velocidad = 3;
    this.vidas = 3; // Número inicial de vidas
  }

  mover() {
    if (keyIsDown(UP_ARROW) && this.y > this.radio) {
      this.y -= this.velocidad;
    }
    if (keyIsDown(DOWN_ARROW) && this.y < height - this.radio) {
      this.y += this.velocidad;
    }
  }

  mostrar() {
    fill(255, 0, 0); // Rojo
    ellipse(this.x, this.y, this.radio * 2);
  }

  perderVida() {
    this.vidas--;
  }
}
