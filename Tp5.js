//link: https://youtu.be/rQ6saE1gNQw

let jugador;
let monedas = [];
let perros = [];
let juegoTerminado = false;
let tiempoTranscurrido = 0;
let velocidadMonedas = 2;
let velocidadPerros = 2;
let contadorMonedasRecogidas = 0;
let juegoIniciado = false;
let imagenInicio;
let imagenJuego;
let imagenFinalizacion;
let imagenGanaste;

let tiempoTotal = 120; // 3 minutos en segundos
let tiempoRestante = tiempoTotal;
let objetivoMonedas = 20;

// Variables para las imágenes
let gatoImagen;
let perroImagen;
let monedaImagen;

function preload() {
  imagenInicio = loadImage("data/imagen1.png");
  imagenJuego = loadImage("data/imagen2.png");
  imagenFinalizacion = loadImage("data/imagen3.png");
  imagenGanaste = loadImage("data/imagen4.png");

  // Carga las imágenes del gato, perro y moneda
  gatoImagen = loadImage("data/gato.png");
  perroImagen = loadImage("data/perro.png");
  monedaImagen = loadImage("data/moneda.png");
}

function setup() {
  createCanvas(800, 600);
  frameRate(60);
  noLoop();
  pantallaInicio();
}

function draw() {
  if (juegoIniciado) {
    background(220);

    if (tiempoRestante <= 0) {
      juegoTerminado = true;
    }

    if (juegoTerminado) {
      if (jugador.monedasRecogidas >= objetivoMonedas) {
        // Has ganado
        image(imagenGanaste, 0, 0);
      } else {
        image(imagenFinalizacion, 0, 0);
      }
    } else {
      image(imagenJuego, 0, 0);

      // Dibuja el gato con la imagen
      image(gatoImagen, jugador.x, jugador.y, 64, 64);

       jugador.mover();
      // Restar tiempo del cronómetro
      if (tiempoRestante > 0) {
        tiempoRestante = tiempoTotal - int(tiempoTranscurrido / 60);
      }

      // Dibuja el cronómetro
      textSize(20);
      fill(0);
      text(`Tiempo restante: ${tiempoRestante} segundos`, 20, 20);
      text(`Vidas: ${jugador.vidas}`, 20, 50);
      text(`Monedas recogidas: ${jugador.monedasRecogidas}`, 20, 80);

      // Lógica para crear y mostrar monedas
      if (frameCount % 100 === 0) {
        let moneda = new Moneda(velocidadMonedas);
        monedas.push(moneda);
      }

      for (let moneda of monedas) {
        // Dibuja la moneda con la imagen
        image(monedaImagen, moneda.x, moneda.y, 32, 32);
        moneda.mover();
      }

      // Verifica si se alcanzó el objetivo de monedas
      if (jugador.monedasRecogidas >= objetivoMonedas) {
        juegoTerminado = true;
      }

      // Lógica para crear perros
      if (frameCount % 200 === 0) {
        let cantidadPerros = floor(random(1, 7));
        for (let i = 0; i < cantidadPerros; i++) {
          let perro = new Perro(width, random(height));
          perros.push(perro);
        }
      }

      for (let perro of perros) {
        // Dibuja el perro con la imagen
        image(perroImagen, perro.x, perro.y, 64, 64);
        perro.mover(velocidadPerros);
      }

      // Colisión con los perros
      for (let i = perros.length - 1; i >= 0; i--) {
        perros[i].mover();
        perros[i].mostrar();
        if (dist(jugador.x, jugador.y, perros[i].x, perros[i].y) < 64) {
          jugador.vidas--;
          perros.splice(i, 1);
          if (jugador.vidas <= 0) {
            juegoTerminado = true;
          }
        }
      }

      tiempoTranscurrido++;
    }
  }
}

function keyPressed() {
  if (!juegoIniciado && key === ' ') {
    reiniciarJuego();
    juegoIniciado = true;
  } else if (juegoIniciado && key === ' ' && juegoTerminado) {
    reiniciarJuego();
  }
}

function reiniciarJuego() {
  jugador = new Gato();
  monedas = [];
  perros = [];
  juegoTerminado = false;
  jugador.vidas = 3;
  jugador.monedasRecogidas = 0;
  tiempoTranscurrido = 0;
  tiempoRestante = tiempoTotal;
  loop();
}

function pantallaInicio() {
  image(imagenInicio, 0, 0);
}
