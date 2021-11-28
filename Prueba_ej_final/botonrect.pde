
class Boton {
  float x, y,ancho, alto;
  String texto;

  Boton (String texto_, float x_, float y_) {
    texto = texto_;
    x = x_;
    y = y_;
   ancho = x_;
   alto = y_;
  }


  void actualizar() {
  }

  boolean click (float x_, float y_) {
    if (
      mouseX < x_+ancho
      && mouseX > x_
      && mouseY < y_+alto
      && mouseY > y_
      ) {
      //hay colision
      return true;
    } else {
      return false;
    }
    //evaluar colision como en videojuego
  }
}
