class Aventura {
  int cantBoton = 20;
  Boton[] boton;
  PImage A;
  PImage B;
  PImage C;
  PImage D;
  PImage E;
  PImage F;
  PImage G;
  PImage H;
  PImage I;
  PImage J;
  PImage K;
  PImage L;

  PImage Inicio;
  PImage Win;
  PImage GameOver;

  String [] textos = {

    //boton 0
    "Empezar", 
    //boton 1
    "Siguiente", 
    //boton 2  
    "Cocinar", 
    //boton 3
    "Buscar Para Picar", 
    //boton 4
    "Siguiente", 
    //boton 5
    "Siguiente", 
    //boton 6
    "Siguiente", 
    //boton 7
    "Siguiente", 
    //boton 8
    "Comenzar", 
    //boton 9
    "Siguiente", 
    //boton 10
    "Siguiente", 
    //boton 11
    "Volver", 
    //boton 12
    "Volver", 
    //boton 13
    "", 
  };
  
  String estado ="0";
  String estado1 ="1";
  String estado2 ="2";
  String estado3 ="3";
  String estado4 ="4";
  String estado5 ="5";
  String estado6 ="6";
  String estado7 ="7";
  String estado8 ="8";
  String estado9 ="9";
  String estado10 ="10";
  String estado11 ="11";
  String estado12 ="12";
  String estado13 ="13";
  String estado14 ="14";
  String estado15 ="15";

  Juego juego;



  Aventura () {

    juego = new Juego();
    Inicio = loadImage ("pantallainicio.png");
    Win = loadImage ("pantallaganaste.png");
    GameOver = loadImage ("pantallaperdiste.png");

    A = loadImage ("Escena0.jpg");
    B = loadImage ("Escena1.jpg");
    C = loadImage ("Escena2.jpg");
    D = loadImage ("Escena3.jpg");
    E = loadImage ("Escena4.jpg");
    F = loadImage ("Escena5.jpg");
    G = loadImage ("Escena6.jpg");
    H = loadImage ("Escena7.jpg");
    I = loadImage ("Escena8.jpg");
    J = loadImage ("Escena9.jpg");
    K = loadImage ("Escena10.jpg");
    L = loadImage ("Escena11.jpg");

    boton = new Boton[cantBoton];
    for (int i=0; i <cantBoton; i++) {
      boton[i] = new Boton (textos[i], 200, 400);
    }
  }

  void actualizar() {
    if (estado.equals("0")) {
      //pantalla inicial
      image (A, 0, 0);

      boton[0].actualizar();
    } else if (estado.equals("1")) {
      //primer pantalla aventura
      image (B, 0, 0);
      boton[1].actualizar();
    } else if (estado.equals("2")) {
      //segunda pantalla aventura
      image (C, 0, 0);
      boton[2] = new Boton (textos[2], 200, 400);
      boton[3] = new Boton (textos[3], 200, 400);
    } else if (estado.equals("3")) {
      //pantalla opción "cocinar"
      image (D, 0, 0);
      boton[4].actualizar();
    } else if (estado.equals("4")) {
      //pantalla opcion "revolver"
      image (E, 0, 0);
      boton[5].actualizar();
    } else if (estado.equals("5")) {
      //pantalla no hay nada al revolver
      image (F, 0, 0);
      boton[6].actualizar();
    } else if (estado.equals("6")) {
      //pantalla anterior al juego
      image (G, 0, 0);
      boton[7].actualizar();
    } else if (estado.equals("7")) {
      //pantalla explicacion del juego
      image (H, 0, 0);
      boton[8].actualizar();
    } else if (estado.equals("8")) {
      //pantalla ganaste
      image (I, 0, 0);
      boton[9].actualizar();
    } else if (estado.equals("9")) {
      //pantalla perdiste
      image (J, 0, 0);
      boton[10].actualizar();
    } else if (estado.equals("10")) {
      //pantalla final bueno
      image (K, 0, 0);
      boton[11].actualizar();
    } else if (estado.equals("11")) {
      //final malo
      image (L, 0, 0);
      boton[12].actualizar();
    }

    for (int i=0; i <cantBoton; i++) {
      boton[i].actualizar();
    }
  }

  void click() {
    if (estado.equals("0")) {
      if ( boton[0].mouseOver()) {
        estado = "1";
      }
    } else if (estado.equals("1")) {
      if ( boton[1].mouseOver()) {
        estado="2";
      }
    } else if (estado.equals("2")) {
      if ( boton[2].mouseOver()) {
        estado="3";
      }
    } else if (estado.equals("2")) {
      if ( boton[3].mouseOver()) {
        estado="5";
      }
    } else if (estado.equals("3")) {
      if ( boton[4].mouseOver()) {
        estado="4";
      }
    } else if (estado.equals("4")) {
      if ( boton[5].mouseOver()) {
        estado="5";
      }
    } else if (estado.equals("5")) {
      if ( boton[6].mouseOver()) {
        estado="6";
      }
    } else if (estado.equals("6")) {
      if ( boton[7].mouseOver()) {
        estado="7";
      }
    } else if (estado.equals("7")) {
      if ( boton[8].mouseOver()) {
        estado="12";
      }
    } else if (estado.equals("8")) {
      if ( boton[9].mouseOver()) {
        estado="10";
      }
    } else if (estado.equals("9")) {
      if ( boton[10].mouseOver()) {
        estado="11";
      }
    } else if (estado.equals("10")) {
      if ( boton[11].mouseOver()) {
        estado="0";
      }
    } else if (estado.equals("11")) {
      if ( boton[12].mouseOver()) {
        estado="0";
      }
    }
  }

  void estadoJuego() {


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
    } else if (estado.equals("15")) {
      rectMode ( CENTER );
      rect ( 300, 550, 100, 50 );
      pushStyle();
      fill ( 0 );
      textAlign ( CENTER, CENTER );
      textSize ( 20 );
      text ( "Siguiente", 300, 550 );
      popStyle();
      tiempo ++;
      if (tiempo>=500) {
        estado.equals("13");
      }
      juego.dibujarjuego();
    }
    println(tiempo);
  } 


  void mousePressed() {
    if (estado.equals("12")) { 
      if ( mouseX > 250 && mouseY > 275 && mouseX < 250 + 100 && mouseY < 275 + 50 ) {
        juego = new Juego();
        estado.equals("15");
      }
    } else if ( estado.equals("13") ) {
      if ( mouseX > 250 && mouseY > 525 & mouseX < 250 + 100 && mouseY < 525 + 50 ) {
        juego = new Juego();
        tiempo=0;
        estado.equals("12");
      }
    } else if ( estado.equals("14") ) {
      if ( mouseX > 250 && mouseY > 525 & mouseX < 250 + 100 && mouseY < 525 + 50 ) {
        juego = new Juego();
        tiempo=0;
        estado.equals("9");
      }
    } else if ( estado.equals("15") ) {
      if ( mouseX > 250 && mouseY > 525 & mouseX < 250 + 100 && mouseY < 525 + 50 ) {
        juego = new Juego();
        tiempo=0;
        estado.equals("8");
      }
    }
  }
}
