
//video:https://youtu.be/BUJ_ZsZNGDQ


let posYRaquetaIzquierda;
let posYRaquetaDerecha;
let posXPelota;
let posYPelota;
let velocidadXPelota;
let velocidadYPelota;
let puntajeIzquierda = 0;
let puntajeDerecha = 0;
const anchoRaqueta = 10;
const altoRaqueta = 80;
const diametroPelota = 20;
let velocidadRaquetaIzquierda = 0;
let velocidadRaquetaDerecha = 0;
const aceleracionRaqueta = 7;
let juegoTerminado = false;
let pantallaInicio = true;
let pantallaFinalizacion = false;
let imagen1;
let imagen2;
let imagen3;


function setup() {
  createCanvas(800, 600);
  posYRaquetaIzquierda = height / 2 - altoRaqueta / 2;
  posYRaquetaDerecha = height / 2 - altoRaqueta / 2;
  reiniciarPelota();
  imagen1 = loadImage("data/imagen2.png");
  imagen2 = loadImage("data/imagen1.png");
  imagen3 = loadImage("data/imagen3.png");

}

function draw() {

  background(0);

  if (pantallaInicio) {
    // Pantalla de Inicio
    image(imagen1, 0, 0);



    if (key === 'i' || key === 'I') {
      pantallaInicio = false;
    }
  } else if (!juegoTerminado) {
    // Juego en curso
    image(imagen2, 0, 0);
    dibujarRaqueta(posYRaquetaIzquierda, true);
    dibujarRaqueta(posYRaquetaDerecha, false);
    dibujarPelota();

    moverRaqueta(true); // Izquierda
    moverRaqueta(false); // Derecha

    moverPelota();
    verificarColisiones();

    fill(255);
    textSize(32);
    text(puntajeIzquierda, width / 4, 40);
    text(puntajeDerecha, 3 * width / 4, 40);

    if (puntajeIzquierda >= 10 || puntajeDerecha >= 10) {
      juegoTerminado = true;
      pantallaFinalizacion = true; // Activar pantalla de finalización
    }
  } else if (pantallaFinalizacion) {
    
    image(imagen3, 0, 0);
    if (key === ' ') {
      reiniciarJuego();
    }
  }
}

function keyPressed() {
  if (!pantallaInicio && !juegoTerminado) {
    if (key === 'w') {
      velocidadRaquetaIzquierda = -aceleracionRaqueta; // Mover raqueta izquierda hacia arriba
    }
    if (key === 's') {
      velocidadRaquetaIzquierda = aceleracionRaqueta; // Mover raqueta izquierda hacia abajo
    }
    if (key === 'ArrowUp') {
      velocidadRaquetaDerecha = -aceleracionRaqueta; // Mover raqueta derecha hacia arriba
    }
    if (key === 'ArrowDown') {
      velocidadRaquetaDerecha = aceleracionRaqueta; // Mover raqueta derecha hacia abajo
    }
  } else if (pantallaInicio) {
    if (key === 'i' || key === 'I') {
      pantallaInicio = false;
    }
  } else if (pantallaFinalizacion) {
    if (key === ' ') {
      reiniciarJuego();
    }
  }
}

function reiniciarJuego() {
  puntajeIzquierda = 0;
  puntajeDerecha = 0;
  reiniciarPelota();
  juegoTerminado = false;
  pantallaInicio = true;
  pantallaFinalizacion = false;
}

function keyReleased() {
  if (!pantallaInicio && !juegoTerminado) {
    if (key === 'w' || key === 's') {
      velocidadRaquetaIzquierda = 0; // Detener el movimiento de la raqueta izquierda
    }
    if (key === 'ArrowUp' || key === 'ArrowDown') {
      velocidadRaquetaDerecha = 0; // Detener el movimiento de la raqueta derecha
    }
  }
}

function reiniciarPelota() {
  posXPelota = width / 2;
  posYPelota = height / 2;
  velocidadXPelota = random(5, 4) * (random() > 0.5 ? 1 : -1);
  velocidadYPelota = random(5, 4) * (random() > 0.5 ? 1 : -1);
}

function dibujarRaqueta(y, esIzquierda) {
  fill(255);
  rect(esIzquierda ? 20 : width - 30, y, anchoRaqueta, altoRaqueta);
}

function moverRaqueta(esIzquierda) {
  if (esIzquierda) {
    posYRaquetaIzquierda += velocidadRaquetaIzquierda;
    posYRaquetaIzquierda = constrain(posYRaquetaIzquierda, 0, height - altoRaqueta);
  } else {
    posYRaquetaDerecha += velocidadRaquetaDerecha;
    posYRaquetaDerecha = constrain(posYRaquetaDerecha, 0, height - altoRaqueta);
  }
}

function dibujarPelota() {
  fill(255);
  ellipse(posXPelota, posYPelota, diametroPelota);
}

function moverPelota() {
  posXPelota += velocidadXPelota;
  posYPelota += velocidadYPelota;
}

function verificarColisiones() {
  if (
    (posXPelota - diametroPelota / 2 < 30 + anchoRaqueta &&
    posXPelota - diametroPelota / 2 > 20 &&
    posYPelota > posYRaquetaIzquierda &&
    posYPelota < posYRaquetaIzquierda + altoRaqueta) ||
    (posXPelota + diametroPelota / 2 > width - 30 &&
    posXPelota + diametroPelota / 2 < width - 20 &&
    posYPelota > posYRaquetaDerecha &&
    posYPelota < posYRaquetaDerecha + altoRaqueta)
    ) {
    velocidadXPelota *= -1;
  }

  if (posYPelota - diametroPelota / 2 < 0 || posYPelota + diametroPelota / 2 > height) {
    velocidadYPelota *= -1;
  }

  if (posXPelota - diametroPelota / 2 < 0) {
    puntajeDerecha++;
    reiniciarPelota();
  }

  if (posXPelota + diametroPelota / 2 > width) {
    puntajeIzquierda++;
    reiniciarPelota();
  }
}
