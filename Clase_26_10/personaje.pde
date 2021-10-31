class Jugador {
  //Propiedades
  float alto, ancho;

  //Constructor 
  Jugador() {
    alto = 40;
    ancho = 40;
    rectMode(CENTER);
  }

  void dibujar (){
    fill(255);
    rect(mouseX, mouseY, ancho, alto);
  }
}
