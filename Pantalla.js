class Pantalla {
  constructor(imagen, texto) {
    this.imagen = imagen;
    this.texto = texto;
    this.botones = [];
    this.textos = [];
  }

  agregarBoton(boton) {
    this.botones.push(boton);
  }

  agregarTexto(texto, x, y) {
    this.textos.push({ texto, x, y });
  }

  mostrar() {
  background(0);
  image(this.imagen, 0, 0, width, height);

  fill(255);
  textAlign(CENTER, CENTER);


  if (this.texto === "El Gato con Botas") {
    textSize(40);  
    text(this.texto, width / 2, 50);  
  } else {
    textSize(13);  
    text(this.texto, width / 2, 30);  
  }

  for (let boton of this.botones) {
    boton.mostrar();
  }

  for (let textoInfo of this.textos) {
    text(textoInfo.texto, textoInfo.x, textoInfo.y);
  }
}
  clicEnBoton() {
    for (let boton of this.botones) {
      if (boton.clicEnBoton()) {
        return boton.pantallaDestino;
      }
    }
    return -1;
  }
}
