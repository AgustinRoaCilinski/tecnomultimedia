class Jugador {
  //Propiedades
  float x,y,alto, ancho;

  //Constructor 
  Jugador() {
    alto = 40;
    ancho = 40;
    rectMode(CENTER);
  }

  void dibujar (){
    x=mouseX;
    y=mouseY;
    fill(255);
    rect(x,y, ancho, alto);
  }
}
