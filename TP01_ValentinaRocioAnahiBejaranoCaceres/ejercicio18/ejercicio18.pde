float a = 6;
float b = 1;
float c = 0;  

void setup() {
  size(500, 500);
  noLoop();
  textSize(20);
  fill(#FF69B4);

  calcularRaices(a, b, c);
}

void calcularRaices(float a, float b, float c) {
  if (a == 0) {
    println("No es una ecuación cuadrática");
    return;
  }
  
  float discriminante = b*b - 4*a*c;
  float x1, x2, realPart, imagPart;
  
  if (discriminante >= 0) {
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
    println(discriminante == 0 ? "raíz única: x = " + x1 : "raíces reales y distintas: x1 = " + x1 + ", x2 = " + x2);
  } else {
    realPart = -b / (2*a);
    imagPart = sqrt(-discriminante) / (2*a);
    println("raíces complejas: x1 = " + realPart + "+" + imagPart + "i, x2 = " + realPart + "-" + imagPart + "i");
  }
}

void draw() {
  background(#FFB6C1);
  text("Los resultados se mostraran en la consola :P", 20, 20);
}
