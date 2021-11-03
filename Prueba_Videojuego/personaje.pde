class Jugador {
  //Propiedades
  float x, y, alto, ancho;
  float desp=-5;

  //Constructor 
  Jugador() {
    x=width/2;
    y=700;
    alto = 40;
    ancho = 40;
    rectMode(CENTER);
  }

  void dibujar () {
    fill(255);
    rect(x, y, ancho, alto);

    if (keyPressed) {
      if (keyCode==LEFT) {
        x+=desp;
      } else if (keyCode==RIGHT) {
        x-=desp;
      }
      x=constrain(x,0,width);
    }
  }
}
