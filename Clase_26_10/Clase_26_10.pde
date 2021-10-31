
Juego juego;
Cuca cuca1;
Cuca cuca2;
Cuca cuca3;

void setup(){
  size(600,600);
  cuca1 = new Cuca();
 cuca2 = new Cuca();
 cuca3 = new Cuca();
  juego = new Juego();
}

void draw(){
  juego.dibujarjuego();
  cuca1.mover();
  cuca2.mover();
  cuca3.mover();
  cuca1.dibujar();
  cuca2.dibujar();
  cuca3.dibujar();
  
}
