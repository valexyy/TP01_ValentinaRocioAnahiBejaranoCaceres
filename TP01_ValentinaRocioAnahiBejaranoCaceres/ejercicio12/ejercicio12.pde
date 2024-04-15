String texto_consola="Escribi tu nombre: ";
String nombre_ingresado="";
String mensaje_saludo= "";

void setup(){
  size(500,500);
  println(texto_consola);
  
}

void draw(){
  background(#FFB6C1);
  text(mensaje_saludo,100,100);
  textSize(30);
  
}

void keyPressed(){
  nombre_ingresado+= key;
  println(nombre_ingresado);
 mensaje_saludo = "Bienvenida mamamawevo :3" + nombre_ingresado;
 
 if (key == '\n'){
   mensaje_saludo = "Bienvenida lokita, " + nombre_ingresado; 
 }
}
 
  


  
