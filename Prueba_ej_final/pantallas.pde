


class Pantalla {
  int pantalla;

  Pantalla() {
    pantalla=0;
  }

  void verPantalla() {
    if (pantalla==0) {
      
      text(relato[0], 250, 40);
      fill ( 0 );
      textAlign ( CENTER, CENTER );
      textSize ( 20 );
      
    } else if (pantalla == 1) {
      image(foto[1], 0, 0, width, height);
    }
  }
}
