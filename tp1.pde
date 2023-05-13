
PImage Image1;
PImage Imagen2;
PImage Imagen3;


int variableEntera;
int resultado;

float variableFlotante;

float velocidad;
float posicionInicialEnX;
float posicionDelTextEnX;
float posicionDelTextEnX3;

int posX = 320;
int posY = -50;
int tiempoEntreImagenes = 10000; // Cambiar cada 2 segundos (2000 milisegundos)
int tiempoActual = 0;
int transparencia = 0;
boolean mostrarPrimeraImagen = true;
boolean mostrarSegundaImagen = false;
boolean mostrarTerceraImagen = false;
String variabledetexto1;
String variabledetexto2;
String variabledetexto3;
String variabledetexto4;
String resultadoDeTexto;
PFont miFuente;
color colorDefondo;


void setup() {


  size(640, 480);
  background(colorDefondo);
  colorDefondo = color(#FFFFFF);
  textAlign(CENTER);
  variableEntera = 70;


  variableFlotante = 70;

  resultado = 1;
  posicionInicialEnX = width;
  posicionDelTextEnX = posicionInicialEnX;
  posicionDelTextEnX3 = width/2;
  fill(100);
  textSize(10);
  variabledetexto1 = "Los pinceles son herramientas esenciales en diferentes formas de arte,\n desde la pintura de paredes hasta la pintura al óleo, \n acuarela o acrílico. En la actualidad, se pueden encontrar pinceles de diferentes materiales \n como pelo natural o sintético, \n y en diferentes formas y tamaños para satisfacer las necesidades de cada artista.";
  resultadoDeTexto = resultado + variabledetexto1;
\
  variabledetexto2 = "Además de ser utilizados en la pintura de paredes,\n  los pinceles son herramientas indispensables en otras formas de arte \n como la pintura al óleo,\n acuarela, acrílico, etc.";
  variabledetexto3 = " En resumen, \n los pinceles son herramientas esenciales en la mayoría de las formas de arte \n que involucran la aplicación de pintura,\n  ya que permiten a los artistas controlar la cantidad y la forma en que se aplica la pintura, \n así como la creación de una variedad de efectos y texturas en la superficie de la obra.";
  variabledetexto4 = "Reiniciar";


  velocidad = 0.9;
  miFuente = loadFont("fuentes/Arial-Black-48.vlw");

  Image1 = loadImage("Imagen1.jpg");
  Imagen2 = loadImage("Imagen2.jpg" );
  Imagen3 = loadImage("Imagen3.jpg" );
}

void draw() {

  
  fill(0);
  // Si no estamos mostrando la segunda imagen
  if (!mostrarSegundaImagen && !mostrarTerceraImagen) {
    // Si ha pasado suficiente tiempo, cambiamos de imagen
    if (millis() >= tiempoActual + tiempoEntreImagenes) {
      tiempoActual = millis(); // Actualizamos el tiempo actual
      mostrarPrimeraImagen = true;
      mostrarSegundaImagen = true; // Cambiamos a mostrar la segunda imagen
      
    } else {
      image(Image1, 0, 0); // Dibujamos la primera imagen
      rect(245,75,150,5);
      textSize(30);
      fill(#FFFFFF);
      text("Pinceles",320,70);
      posicionDelTextEnX = posicionDelTextEnX - velocidad;
      textFont(miFuente);
      fill(#FFFFFF);
      textSize(15);
      text(variabledetexto1, posicionDelTextEnX, height/3);
    }
  } else if (mostrarSegundaImagen && !mostrarTerceraImagen) {
    image(Imagen2, 0, 0); // Dibujamos la segunda imagen
    posY += 1;
    
    textFont(miFuente);
    fill(#FFFFFF);
    textSize(15);
    text(variabledetexto2, posX, posY);

    if (millis() >= tiempoActual + tiempoEntreImagenes) {
      tiempoActual = millis(); // Actualizamos el tiempo actual
      mostrarTerceraImagen = true; // Cambiamos a mostrar la tercera imagen
    }
  } else {


    image(Imagen3, 0, 0); // Dibujamos la tercera imagen

    fill(#FFFFFF);
    rect(480, 420, 110, 40);
    fill(0);
    textSize(20);
    text(variabledetexto4, 537, 450);



    fill(255);
    textFont(miFuente);
    fill(0, 0, 0, transparencia);
    textSize(13);
    text(variabledetexto3, posicionDelTextEnX3, height/3);
    transparencia = (transparencia + 1);
  }
}

void mousePressed() {
  if (mouseX > 480 && mouseX < 590 && mouseY > 420 && mouseY < 460) {
    println("Botón presionado");
    variableEntera = 70;
    resultado = 1;
    variableFlotante = 70;
    velocidad = 0.9;
    posicionInicialEnX = width;
    posicionDelTextEnX = posicionInicialEnX;
    posicionDelTextEnX3 = width/2;
    tiempoEntreImagenes = 10000;
    tiempoActual = millis();
    transparencia = 0;
    variabledetexto1 = "Los pinceles son herramientas esenciales en diferentes formas de arte,\n desde la pintura de paredes hasta la pintura al óleo, \n acuarela o acrílico. En la actualidad, se pueden encontrar pinceles de diferentes materiales \n como pelo natural o sintético, \n y en diferentes formas y tamaños para satisfacer las necesidades de cada artista.";
    resultadoDeTexto = resultado + variabledetexto1;
    posX = 320;
    posY = -50;
    posY += 1;
    variabledetexto2 = "Además de ser utilizados en la pintura de paredes,\n  los pinceles son herramientas indispensables en otras formas de arte \n como la pintura al óleo,\n acuarela, acrílico, etc.";
    variabledetexto3 = " En resumen, \n los pinceles son herramientas esenciales en la mayoría de las formas de arte \n que involucran la aplicación de pintura,\n  ya que permiten a los artistas controlar la cantidad y la forma en que se aplica la pintura, \n así como la creación de una variedad de efectos y texturas en la superficie de la obra.";
    variabledetexto4 = "Reiniciar";
    mostrarPrimeraImagen = true;
    mostrarSegundaImagen = false;
    mostrarTerceraImagen = false;
  }
}
