float x1 = 100;
float y1 = 100;
float x2 = 200;
float y2 = 400;
PImage linkImage; 
PImage tesoroImage;
float distanciaTesoro = 50;
float tamanoImagen = 70; // Tamaño de la imagen de Link y del tesoro

void setup() {
  size(800, 600);
  linkImage = loadImage("link.png");
  tesoroImage = loadImage("treasurechest.png");
  linkImage.resize((int)tamanoImagen, (int)tamanoImagen);
  tesoroImage.resize((int)tamanoImagen, (int)tamanoImagen);
}

void draw() {
  background(#FFB6C1);
  float coordenadaX = x2 - x1;
  float coordenadaY = y2 - y1;
  float distancia = sqrt(pow(coordenadaX, 2) + pow(coordenadaY, 2));
  String textoDistancia = "La distancia es igual a: " + distancia;
  println(textoDistancia);
  
  if (distancia <= distanciaTesoro) {
    println("¡POWER UP!!!");
  }
 
  image(tesoroImage, x2, y2);
  image(linkImage, x1, y1);
 
  String coordenadas = "X1: " + mouseX + ", Y1: " + mouseY;
  fill(#FF69B4);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(coordenadas, width, 0);
}

void mousePressed() {
  // Verificar si el clic del mouse está dentro de la imagen de Link
  if (mouseX > x1 && mouseX < x1 + tamanoImagen && mouseY > y1 && mouseY < y1 + tamanoImagen) {
    x1 = mouseX - tamanoImagen / 2; // Centrar la imagen de Link en el cursor del mouse
    y1 = mouseY - tamanoImagen / 2;
  }
}
