class Juego {
  //propiedades del juego
  Fondo fondo;
  Enemigo2[] enemigo;
  int cantEnemigos;
  Jugador jugador1;

  PImage Inicio;
  PImage Win;
  PImage GameOver;




  //constructor juego
  Juego() {

    Inicio = loadImage ("pantallainicio.png");
    Win = loadImage ("pantallaganaste.png");
    GameOver = loadImage ("pantallaperdiste.png");

    fondo = new Fondo();
    cantEnemigos =8;
    enemigo =new Enemigo2[cantEnemigos];
    for (int e=0; e<cantEnemigos; e++) {
      enemigo[e]=new Enemigo2();
    }
    jugador1 = new Jugador();
  }


  //
  void dibujarjuego() {
    fondo.dibujarfondo();
    for (int i=0; i<cantEnemigos; i++) {

      enemigo[i].draw_();
      fondo.dibujarHeladera();
      pushStyle();
      rectMode ( CENTER );
      pushStyle();
      fill ( 0 );
      textAlign ( CENTER, CENTER );
      textSize ( 20 );
      text ("Tiempo: "+ tiempo, 80, 50);
      popStyle();
      //colision
      if ( enemigo[i].colision(jugador1.x, jugador1.y, jugador1.ancho, jugador1.alto) ) {
        estado="14";
      }
    }
    jugador1.dibujar();
    if ( estado.equals("12")) {
      image (Inicio, 0, 0);
      rectMode ( CENTER );
      rect ( width/2, height/2-100, 100, 50 );
      pushStyle();
      fill ( 0 );
      textAlign ( CENTER, CENTER );
      textSize ( 20 );
      text ( "Iniciar", width/2, height/2-100 );
      popStyle();
    } else if ( estado.equals("13") ) {
      image (Win, 0, 0);
      rectMode ( CENTER );
      rect ( 300, 550, 100, 50 );
      pushStyle();
      fill ( 0 );
      textAlign ( CENTER, CENTER );
      textSize ( 20 );
      text ( "Volver", 300, 550 );
      popStyle();
    } else if (estado.equals("14")) {
      image (GameOver, 0, 0);
      rectMode ( CENTER );
      rect ( 300, 550, 100, 50 );
      pushStyle();
      fill ( 0 );
      textAlign ( CENTER, CENTER );
      textSize ( 20 );
      text ( "Volver", 300, 550 );
      popStyle();
    }
  }
}
