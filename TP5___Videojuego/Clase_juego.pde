class Juego {
  //propiedades del juego
  Fondo fondo;
  Enemigo2[] enemigo;
  int cantEnemigos;
  Jugador jugador1;
  int puntos = 0;
  int puntosParaGanar = 50;
  

  //constructor juego
  Juego() {
    fondo = new Fondo();
    cantEnemigos =5;
    enemigo =new Enemigo2[cantEnemigos];
    for (int i=0; i<cantEnemigos; i++) {
      enemigo[i]=new Enemigo2();
    }
    jugador1 = new Jugador();
  }


  //
  void dibujarjuego() {
    fondo.dibujarfondo();
    for (int i=0; i<cantEnemigos; i++) {
      if (mover()) {
        puntos++;
        if (puntos>puntosParaGanar) {
          estado=1;
        }
      }
      enemigo[i].draw_();
      fondo.dibujarHeladera();

      //colision
      if ( enemigo[i].colision(jugador1.x, jugador1.y, jugador1.ancho, jugador1.alto) ) {
        estado = 2;
      }
    }

    jugador1.dibujar();
  }
}
