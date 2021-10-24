/* Prueba Objetos / Clase */
//declaracion de un espacio en memoria para construir una instancia de la clase enemigo
Cuca cuca1;
Cuca cuca2;
Cuca cuca3;


void setup(){
 size(400,400); 
 cuca1 = new Cuca();
 cuca2 = new Cuca();
 cuca3 = new Cuca();
}

void draw(){
 background(234,35,23); 
 cuca1.mover();
  cuca2.mover();
  cuca3.mover();
  cuca1.dibujar();
  cuca2.dibujar();
  cuca3.dibujar();
}
