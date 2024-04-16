int distancia;
PVector puntoA, puntoB, puntoC, puntoD;

void setup() {
  size(500, 500);
  distancia = 60;
  puntoA = new PVector(0, distancia);
  while (puntoA.y <= height) {
    escalera(puntoA);
    elipse(puntoB);
    puntoA = repeticion(puntoC);
  }
}
void escalera(PVector puntoInicio) {
  stroke(#FFFACD);
  strokeWeight(5);
  puntoB = new PVector(puntoInicio.x + distancia, puntoInicio.y);
  line(puntoInicio.x, puntoInicio.y, puntoB.x, puntoB.y);
  puntoC = new PVector(puntoB.x, puntoB.y + distancia);
  line(puntoB.x, puntoB.y, puntoC.x, puntoC.y);
}
void elipse(PVector punto) {
  stroke(#FC030B);
  strokeWeight(9);
  puntoD = new PVector(punto.x, punto.y - 8);
  point(puntoD.x, puntoD.y);
}

PVector repeticion(PVector punto) {
  return new PVector(punto.x, punto.y);
}
