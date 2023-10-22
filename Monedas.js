class Moneda {
  constructor() {
    this.x = width; // Comienzan desde el lado derecho de la pantalla
    this.y = random(height); // Posición vertical aleatoria
    this.radio = 16; // Radio de la moneda
    this.velocidadX = random(2, 6); // Velocidad horizontal aleatoria
    this.recogida = false; // Indica si la moneda ha sido recogida
  }

  mover() {
    this.x -= this.velocidadX;

    // Verifica si la moneda ha llegado al jugador
    if (!this.recogida && dist(this.x, this.y, jugador.x, jugador.y) < this.radio + jugador.radio) {
      this.recogida = true;
      // Incrementa un contador de monedas recogidas
      jugador.monedasRecogidas++;

      // Elimina la moneda del array cuando es recogida
      let index = monedas.indexOf(this);
      if (index !== -1) {
        monedas.splice(index, 1);
      }
    }
  }

  mostrar() {
    if (!this.recogida) {
      // Dibuja la moneda solo si no ha sido recogida
      fill(255, 255, 0); // Amarillo
      ellipse(this.x, this.y, this.radio * 2);
    }
  }
}
