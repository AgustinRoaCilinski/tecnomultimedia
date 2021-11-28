class Aventura {
  int cantBoton = 13;
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

  String [] textos = {
    //boton 0
    "", 
    //boton 1
    "", 
    //boton 2  
    "", 
    //boton 3
    "", 
    //boton 4
    "", 
    //boton 5
    "", 
    //boton 6
    "", 
    //boton 7
    "", 
    //boton 8
    "", 
    //boton 9
    "", 
    //boton 10
    "", 
    //boton 11
    "", 
    //boton 12
    "", 
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


  Aventura () {
    A = loadImage ("Escena0.jpg");
    B = loadImage ("Escena1.jpg");
    // C = loadImage ("Escena 2.jpg");
    D = loadImage ("Escena3.jpg");
    //E = loadImage ("Escena 4.jpg");
    F = loadImage ("Escena 5.jpg");
    G = loadImage ("Escena6.jpg");
    H = loadImage ("Escena 7.jpg");
    I = loadImage ("Escena 8.jpg");
    J = loadImage ("Escena 9.jpg");
    K = loadImage ("Escena 10.jpg");
    L = loadImage ("Escena 11.jpg");

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
      //image (C, 0, 0);
      boton[2].actualizar();
    } else if (estado.equals("3")) {
      //pantalla opción "cocinar"
      image (D, 0, 0);
      boton[3].actualizar();
    } else if (estado.equals("4")) {
      //pantalla opcion "revolver"
      //image (E, 0, 0);
      boton[4].actualizar();
    } else if (estado.equals("5")) {
      //pantalla no hay nada al revolver
      image (F, 0, 0);
      boton[5].actualizar();
    } else if (estado.equals("6")) {
      //pantalla anterior al juego
      image (G, 0, 0);
      boton[6].actualizar();
    } else if (estado.equals("7")) {
      //pantalla explicacion del juego
      image (H, 0, 0);
      boton[7].actualizar();
    } else if (estado.equals("8")) {
      //pantalla ganaste
      image (I, 0, 0);
      boton[8].actualizar();
    } else if (estado.equals("9")) {
      //pantalla perdiste
      image (J, 0, 0);
      boton[9].actualizar();
    } else if (estado.equals("10")) {
      //pantalla final bueno
      image (K, 0, 0);
      boton[10].actualizar();
    } else if (estado.equals("11")) {
      //final malo
      image (L, 0, 0);
      boton[11].actualizar();
    }

    for (int i=0; i <cantBoton; i++) {
      boton[i].actualizar();
    }
  }

  void presionoMouse() {
    if (estado.equals("0")) {
      if ( boton[0].click()) {
        estado = "1";
      }
    } else if (estado.equals("1")) {
      if ( boton[1].click()) {
        estado="2";
      }
    } else if (estado.equals("2")) {
      if ( boton[2].click()) {
        estado="3";
      }
    } else if (estado.equals("3")) {
      if ( boton[3].click()) {
        estado="4";
      }
    } else if (estado.equals("4")) {
      if ( boton[4].click()) {
        estado="5";
      }
    } else if (estado.equals("5")) {
      if ( boton[5].click()) {
        estado="6";
      }
    } else if (estado.equals("6")) {
      if ( boton[6].click()) {
        estado="7";
      }
    } else if (estado.equals("7")) {
      if ( boton[7].click()) {
        estado="8";
      }
    } else if (estado.equals("8")) {
      if ( boton[8].click()) {
        estado="9";
      }
    } else if (estado.equals("9")) {
      if ( boton[9].click()) {
        estado="10";
      }
    } else if (estado.equals("10")) {
      if ( boton[10].click()) {
        estado="11";
      }
    }
  }
}
