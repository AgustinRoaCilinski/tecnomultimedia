
class Boton {
  float x, y, ancho, alto;
  String texto;

  Boton (String texto_, float x_, float y_) {
    texto = texto_;

    x = width/2;
    y = 700;
    ancho = 200; 
    alto = 100;
  }


  void actualizar() {
    pushStyle();
    rectMode(CENTER);
    fill(255);
    rect(x, y, ancho, alto);
    popStyle();
  }

  boolean mouseOver () {
    if (mouseX > x - 50 && mouseY > y - 25 && mouseX < x + 50 && mouseY < y + 25) {        
      //hay colision
      return true;
    } else {
      return false;
    }
    //evaluar colision como en videojuego
  }
}
