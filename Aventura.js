class Aventura {
  constructor() {
    this.imagenes = [];
    this.cargarImagenes();
    this.pantallas = [];
    this.iniciarPantallas();
    this.pantallaActual = 0;
  }

  cargarImagenes() {
    this.imagenes = [];
for (let i = 0; i < 14; i++) {
  this.imagenes.push(loadImage(`data/imagenes/${i}.png`));
}
  }

  iniciarPantallas() {
    // Pantalla 0
    let pantalla0 = new Pantalla(this.imagenes[0], "El Gato con Botas");
    pantalla0.agregarBoton(new Boton(100, 500, 150, 30, "Iniciar", 1));
    pantalla0.agregarBoton(new Boton(350, 500, 150, 30, "Creditos", 13));
    this.pantallas.push(pantalla0);

    // Pantalla 1
    let pantalla1 = new Pantalla(this.imagenes[1], "Un molinero murió y dejó a sus tres hijos un molino, un asno y un gato. El mayor obtuvo el molino, el segundo el asno y el más joven heredó al gato.");
    this.pantallas.push(pantalla1);

    // Pantalla 2
    let pantalla2 = new Pantalla(this.imagenes[2], "El pequeño gato, tras heredar una modesta fortuna, se enfrenta a dos opciones: ¿Buscar a sus hermanos y dueño (Opción A) o aventurarse al palacio de un noble adinerado (Opción B)?");
    pantalla2.agregarBoton(new Boton(100, 470, 150, 50, "OPCION A", 3));
    pantalla2.agregarBoton(new Boton(400, 470, 150, 50, "OPCION B", 7));
    this.pantallas.push(pantalla2);

    // Pantalla 3
    let pantalla3 = new Pantalla(this.imagenes[3], "El gato, después de su trágico destino en la misión del rey, finalmente se reencuentra con su antiguo dueño. Le revela que el rey no era su verdadero dueño, sino él.");
    this.pantallas.push(pantalla3);

    // Pantalla 4
    let pantalla4 = new Pantalla(this.imagenes[4], "El gato, con dos opciones ante él, se enfrenta a una decisión crucial. ¿Decide quedarse con su antiguo dueño (Opción A) o opta por no confiar e intenta regresar a la vida de solitario pero feliz (Opción B)?");
    pantalla4.agregarBoton(new Boton(100, 470, 150, 50, "OPCION A", 5));
    pantalla4.agregarBoton(new Boton(400, 470, 150, 50, "OPCION B", 11));
    this.pantallas.push(pantalla4);

    // Pantalla 5
    let pantalla5 = new Pantalla(this.imagenes[5], "El gato, tras sopesar sus opciones, decide optar por la confianza y quedarse con su antiguo dueño. Siente que la conexión con su compañero humano es especial y valiosa.");
    this.pantallas.push(pantalla5);

    // Pantalla 6
    let pantalla6 = new Pantalla(this.imagenes[6], "Elige el amor y la seguridad que ofrece su dueño, sabiendo que juntos pueden construir una vida llena de cariño y afecto.");
    pantalla6.agregarBoton(new Boton(400, 470, 150, 50, "Reiniciar", 0));
    this.pantallas.push(pantalla6);

    // Pantalla 7
    let pantalla7 = new Pantalla(this.imagenes[7], "El gato, tras heredar una modesta fortuna, se aventuró al palacio del rey. Intrigado por su astucia, el gato le preguntó cómo había aparecido el");
    this.pantallas.push(pantalla7);

    // Pantalla 8
    let pantalla8 = new Pantalla(this.imagenes[8], "El gato descubre que el rey es su verdadero dueño y debe tomar una decisión. ¿Quedarse con el rey en el palacio, disfrutando de una vida llena de comodidades y prestigio (Opción B) o seguir buscando a su antiguo dueño para descubrir sus verdaderas raíces y conectar con su familia original (Opción A)?");
    pantalla8.agregarBoton(new Boton(100, 470, 150, 50, "OPCION A", 3));
    pantalla8.agregarBoton(new Boton(400, 470, 150, 50, "OPCION B", 9));
    this.pantallas.push(pantalla8);

    // Pantalla 9
    let pantalla9 = new Pantalla(this.imagenes[9], "El rey, confiando en la astucia y habilidades del gato, lo envía en una importante misión para buscar comida y recursos para el reino. El gato, leal y comprometido con su deber parte con determinación y valentía.");
    this.pantallas.push(pantalla9);

    // Pantalla 10
    let pantalla10 = new Pantalla(this.imagenes[10], "Sin embargo, durante el arduo transcurso de la búsqueda, el gato se enfrenta a inesperados peligros y adversidades. A pesar de sus esfuerzos y valentía, lamentablemente, pierde la vida en medio de la travesía.");
    pantalla10.agregarBoton(new Boton(400, 470, 150, 50, "Reiniciar", 0));
    this.pantallas.push(pantalla10);

    // Pantalla 11
    let pantalla11 = new Pantalla(this.imagenes[11], "El gato, tras reflexionar sobre sus opciones, toma una decisión audaz. Decide alejarse del castillo y de su antiguo dueño para embarcarse en una vida de libertad y aventura.");
    this.pantallas.push(pantalla11);

    // Pantalla 12
    let pantalla12 = new Pantalla(this.imagenes[12], "Con una sonrisa en su rostro y la satisfacción de haber tomado las riendas de su destino, se convierte en un cazador experto, explorando los bosques y persiguiendo presas con habilidad y destreza.");
    pantalla12.agregarBoton(new Boton(400, 470, 150, 50, "Reiniciar", 0));
    this.pantallas.push(pantalla12);

    // Pantalla 13
    let pantalla13 = new Pantalla(this.imagenes[13], "CREDITOS");
    pantalla13.agregarTexto("Nombres y Apellidos", 180, 180);
    pantalla13.agregarTexto("Lejagos", 180, 300);
    pantalla13.agregarTexto("Brian Sciarrillo y Isaias Saldivar", 500, 180);
    pantalla13.agregarTexto("94033/4,", 500, 300);
    this.pantallas.push(pantalla13);
  }

  mostrar() {
    this.pantallas[this.pantallaActual].mostrar();
  }

  keyPresionada() {
  if (keyCode === RIGHT_ARROW) {
    let pantallaDestino = this.pantallas[this.pantallaActual].clicEnBoton();
    if (pantallaDestino !== -1) {
      this.pantallaActual = pantallaDestino;
    } else {
      this.pantallaActual++; // Avanzar a la siguiente pantalla
    }
  } else if (keyCode === LEFT_ARROW) {
    this.pantallaActual = 0; // Retroceder a la pantalla inicial
  }
}

  mousePresionado() {
    let pantallaDestino = this.pantallas[this.pantallaActual].clicEnBoton();
    if (pantallaDestino !== -1) {
      this.pantallaActual = pantallaDestino;
    }
  }
}
