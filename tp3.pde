//https://youtu.be/gLX4YK5rBTQ LINK VIDEO

PImage[] imagenes;
int cantidad;
int ImagenActual = 0;
boolean iniciarPresionado = false;

void setup() {
  size(600, 600);
  cantidad = 14;
  imagenes = new PImage[cantidad];
  for (int i = 0; i < cantidad; i++) {
    imagenes[i] = loadImage("imagenes/" + i + ".png");
    imagenes[i].resize(width, height);
  }
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);
  image(imagenes[ImagenActual], 0, 0);

  if (ImagenActual == 0) {
    


    if (mouseX > 100 && mouseX < 250 && mouseY > 470 && mouseY < 520) {

      if (mousePressed) {
        // Si el mouse está sobre el botón y se hace clic, se marca como "iniciarPresionado"
        iniciarPresionado = true; 
      } 
      else if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520 && mousePressed){
         ImagenActual = 13;
      }
      
 }
    fill(#FFFFFF);
    rect(100, 470, 150, 50);
    fill(0);
    textSize(30);
    text("Iniciar", 170, 490);
    fill(#FFFFFF);
    rect(400, 470, 150, 50);
    fill(0);
    textSize(30);
    text("Creditos", 470, 490);
    textSize(70);
    fill(255);
    text("El Gato \n con Botas", 380, 130);
    
  } else if (ImagenActual == 1) {
    fill(#FFFFFF);
    rectMode(CENTER);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("Un molinero murió y dejó a sus tres hijos un molino, un asno y un gato.\n El mayor obtuvo el molino, el segundo el asno y el más joven heredó al gato.",300,40);
  } else if (ImagenActual == 2) {

    fill(#FFFFFF);
    rect(400, 470, 150, 50);
    fill(#050100);
    textSize(30);
    text("OPCION B", 400, 470);
    fill(#FFFFFF);
    rect(100, 470, 150, 50);
    fill(0);
    textSize(30);
    text("OPCION A", 100, 470);
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(13);
    text("El pequeño gato, tras heredar una modesta fortuna,\nse enfrenta a dos opciones: \no la A, buscar a sus hermanos y dueño,la B, aventurarse al palacio de un noble adinerado.\n¿Cuál camino elegirás para el gato?", width/2, 45);

    if (mouseX > 100 && mouseX < 250 && mouseY > 470 && mouseY < 520 && mousePressed) {
      ImagenActual = 3;
    } else if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520 && mousePressed) {
      ImagenActual = 7;
    }
  } else if (ImagenActual == 3) {
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(13);
    text("El gato, después de su trágico destino en la misión del rey,\n finalmente se reencuentra con su antiguo dueño. \n Le revela que el rey no era su verdadero dueño, sino él.", width/2,45);
  } else if (ImagenActual == 4) {
    fill(#FFFFFF);
    rect(400, 470, 150, 50);
    fill(#050100);
    textSize(30);
    text("OPCION B", 400, 470);
    fill(#FFFFFF);
    rect(100, 470, 150, 50);
    fill(0);
    textSize(30);
    text("OPCION A", 100, 470);
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(10);
    text("El gato, con dos opciones ante él, se enfrenta a una decisión crucial.\n Opción A: Decide quedarse con su antiguo dueño, \n confiando en el amor y la seguridad que ofrece, lo que lleva a un final feliz y una vida llena de cariño y afecto.\n Opción B: Opta por no confiar, intenta regresar a la vida de solitario pero feliz.\n Con su destino en sus patas, el gato debe tomar una elección que marcará el rumbo de su vida y su felicidad.",width/2,45);

    if (mouseX > 100 && mouseX < 250 && mouseY > 470 && mouseY < 520 && mousePressed) {
      ImagenActual = 5;
    } else if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520 && mousePressed) {
      ImagenActual = 11;
    }
  } else if (ImagenActual == 5) {
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(12);
    text("El gato, tras sopesar sus opciones, decide optar por la confianza y quedarse con su antiguo dueño. \n Siente que la conexión con su compañero humano es especial y valiosa.",width/2,45);
  } else if (ImagenActual == 6) {
    fill(#FFFFFF);
    rect(400, 470, 150, 50);
    fill(#050100);
    textSize(30);
    text("Reiniciar", 400, 470);
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(12);
    text("Elige el amor y la seguridad que ofrece su dueño, sabiendo que juntos pueden construir una vida \n llena de cariño y afecto",width/2,45);
  } else if (ImagenActual == 7) {
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(13);
    text("El gato, tras heredar una modesta fortuna, se aventuró al palacio del rey.\n Intrigado por su astucia, el gato le preguntó cómo había aparecido el", width/2, 45);
    
  } else if (ImagenActual == 8) {
    fill(#FFFFFF);
    rect(400, 470, 150, 50);
    fill(#050100);
    textSize(30);
    text("OPCION B", 400, 470);
    fill(#FFFFFF);
    rect(100, 470, 150, 50);
    fill(0);
    textSize(30);
    text("OPCION A", 100, 470);
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(10);
    text("El gato descubre que el rey es su verdadero dueño y debe tomar una decisión. \n la Opcion B Quedarse con el rey en el palacio, disfrutando de una vida llena de comodidades y prestigio. \n O la Opcion A, Seguir buscando a su antiguo dueño para descubrir sus verdaderas raíces y conectar con su familia original. \n ¿Cuál camino elegirá el gato? La elección está en sus patas.", width/2, 45);
    

    if (mouseX > 100 && mouseX < 250 && mouseY > 470 && mouseY < 520 && mousePressed) {
      ImagenActual = 3;
    } else if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520 && mousePressed) {
      ImagenActual = 9;
    }
  } else if (ImagenActual == 9) {
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(13);
    text("El rey, confiando en la astucia y habilidades del gato, lo envía en una importante misión \n para buscar comida y recursos para el reino. El gato, leal y comprometido con su deber \n parte con determinación y valentía.", width/2, 45);
  
  
    
  } else if (ImagenActual == 10) {
    fill(#FFFFFF);
    rect(400, 470, 150, 50);
    fill(#050100);
    textSize(30);
    text("Reiniciar", 400, 470);
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(11);
    text("Sin embargo, durante el arduo transcurso de la búsqueda, el gato se enfrenta a inesperados peligros \n y adversidades. A pesar de sus esfuerzos y valentía, lamentablemente, pierde la vida \n en medio de la travesía. ",width/2,45);
  } else if (ImagenActual == 11) {
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
     fill(0);
    textAlign(CENTER, CENTER);
    textSize(11);
    text("El gato, tras reflexionar sobre sus opciones, toma una decisión audaz. \n Decide alejarse del castillo y de su antiguo dueño para embarcarse en una vida de libertad y aventura.",width/2,45);
  } else if (ImagenActual == 12) {
    fill(#FFFFFF);
    rect(400, 470, 150, 50);
    fill(#050100);
    textSize(30);
    text("Reiniciar", 400, 470);
    fill(#FFFFFF);
    rect(width/2, 47, 500, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(11);
    text("Con una sonrisa en su rostro y la satisfacción de haber tomado las riendas de su destino, \n se convierte en un cazador experto, explorando los bosques y persiguiendo presas con habilidad y destreza.",width/2,45);
  } else if (ImagenActual == 13) {
    fill(0);
    textSize(70);
    textAlign(CENTER, CENTER);
    text("CREDITOS",300,60);
    textSize(30);
    fill(#FF0000);
    text("Nombre y Apellido",180,180);
    text("Lejago",180,300);
    text("Brian Sciarrillo",500,180);
    text("94033/4",500,300);
    
  }

  if (mousePressed == true) {
    // Si se hizo clic fuera del botón de "Iniciar", reiniciamos el flag iniciarPresionado
    if (mouseX < 100 || mouseX > 250 || mouseY < 470 || mouseY > 520) {
      iniciarPresionado = false;
    }
  }

  // Si el botón de "Iniciar" fue presionado, avanzamos a la siguiente imagen
  if (iniciarPresionado) {
    ImagenActual++; // Avanzamos al siguiente índice de imagen
    if (ImagenActual >= cantidad) {
      ImagenActual = 0; // Si llegamos al final, volvemos al principio
    }
    // Reiniciamos el flag iniciarPresionado
    iniciarPresionado = false;
  }
}

void mousePressed() {
  if (ImagenActual == 2) { // Solo aplicamos la lógica cuando estamos en la pantalla 2
    if (mouseX > 100 && mouseX < 250 && mouseY > 470 && mouseY < 520) {
      ImagenActual = 3; // Transición a la pantalla 3 al hacer clic en "OPCION A"
    } else if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520) {
      ImagenActual = 7; // Transición a la pantalla 7 al hacer clic en "OPCION B"
    }
    if (ImagenActual == 4) { // Solo aplicamos la lógica cuando estamos en la pantalla 2
      if (mouseX > 100 && mouseX < 250 && mouseY > 470 && mouseY < 520) {
        ImagenActual = 5; // Transición a la pantalla 3 al hacer clic en "OPCION A"
      } else if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520) {
        ImagenActual = 11; // Transición a la pantalla 7 al hacer clic en "OPCION B"
      }
    }
    if (ImagenActual == 4) { // Solo aplicamos la lógica cuando estamos en la pantalla 2
      if (mouseX > 100 && mouseX < 250 && mouseY > 470 && mouseY < 520) {
        ImagenActual = 5; // Transición a la pantalla 3 al hacer clic en "OPCION A"
      } else if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520) {
        ImagenActual = 11; // Transición a la pantalla 7 al hacer clic en "OPCION B"
      }
      }
  }
  if (ImagenActual == 12 || ImagenActual == 6 || ImagenActual == 10) {
    // Verificar si se hizo clic en el botón "Reiniciar"
    if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520) {
      // Llamar a la función para reiniciar los valores
      botonreinciar();
      print(mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520);
    }
  }
   if (ImagenActual == 0) {
    // Verificar si se hizo clic en el botón "Iniciar"
    if (mouseX > 100 && mouseX < 250 && mouseY > 470 && mouseY < 520) {
      iniciarPresionado = true;
    } 
    // Verificar si se hizo clic en el botón "Creditos"
    else if (mouseX > 400 && mouseX < 550 && mouseY > 470 && mouseY < 520) {
      ImagenActual = 13; // Transición a la pantalla 13 al hacer clic en "Creditos"
    }
  }
}




void botonreinciar() {
  // Restablecer todos los valores a su estado inicial
  ImagenActual = 1;
  iniciarPresionado = false;
  // Añade cualquier otra variable que necesites reiniciar a su valor inicial aquí
}


void keyPressed() {
  // Cambiar de pantalla con las flechas del teclado
  if (keyCode == RIGHT) {
    // Avanzar una pantalla
    if (ImagenActual == 0 ||ImagenActual == 2 ||ImagenActual == 4 ||ImagenActual == 6 ||ImagenActual == 8 || ImagenActual == 10 || ImagenActual == 12 || ImagenActual == 13) {
      // En las pantallas 6, 10 y 12, no permitimos avanzar más a otras imágenes
      return; // Salimos de la función sin hacer ningún cambio
    }

    ImagenActual++;
    if (ImagenActual >= cantidad) {
      ImagenActual = 0; // Si estamos en la última pantalla, volvemos a la primera
    }
  } else if (keyCode == LEFT) {
    // Retroceder una pantalla
    if (ImagenActual == 0 || ImagenActual == 12) {
      return; // No permitimos retroceder en la primera pantalla ni en la pantalla 12
    }
    ImagenActual--;
    if (ImagenActual < 0) {
      ImagenActual = cantidad - 1; // Si estamos en la primera pantalla, vamos a la última
    }
  }
}
