float lineaY;
float elipseOffset;
float velocidad;

void setup() {
  size(400, 400);
  lineaY = 0;
  elipseOffset = 40;
  velocidad = 1;
}

void draw() {
  background(#FFB6C1);
  stroke(#FF69B4);
  line(0, lineaY, width, lineaY);
  noStroke();
  fill(#FFFACD);
  ellipse(width/2, lineaY + elipseOffset, 80, 80);
  lineaY += velocidad;

  // Invertir dirección y posición de la elipse cuando la línea alcanza los extremos
  if (lineaY > height || lineaY < 0) {
    velocidad *= -1;
    elipseOffset *= -1; // Cambia la posición de la elipse hacia arriba o abajo
  }
}
