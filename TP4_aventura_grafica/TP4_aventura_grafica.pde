//Agustin Roa Cilinski - Link Youtube: https://youtu.be/O86eSyhIMi0
//Pido disculpas por la marca de agua de la app que uso para grabar, todavia no me pude familiarizar con otra que no sea esa.

int pantalla =0;

boolean NPantalla = false;

String[] Cuento = new String [20];

PImage[] Fondos;

void setup() {
  size(600, 600);
  Fondos = new PImage[20];
  Fondos[0] = loadImage("Pantalla0.jpg");
  Fondos[1] = loadImage("Pantalla1.jpg");
  Fondos[2] = loadImage("Pantalla2.jpg");
  Fondos[3] = loadImage("Pantalla3.jpg");
  Fondos[4] = loadImage("Pantalla4.jpg");
  Fondos[5] = loadImage("Pantalla5.jpg");
  Fondos[6] = loadImage("Pantalla6.jpg");
  Fondos[7] = loadImage("Pantalla7.jpg");
  Fondos[9] = loadImage("Pantalla9.jpg");
  Fondos[10] = loadImage("Pantalla10.jpg");
  Fondos[11] = loadImage("Pantalla11.jpg");
  Fondos[12] = loadImage("Pantalla12.jpg");
  Fondos[13] = loadImage("Pantalla13.jpg");
  Fondos[14] = loadImage("Pantalla14.jpg");
  Fondos[15] = loadImage("Pantalla15.jpg");
  Fondos[16] = loadImage("Pantalla16.jpg");
  Fondos[17] = loadImage("Pantalla17.jpg");
  Fondos[18] = loadImage("Pantalla18.jpg");


  Cuento[0] = "Bienvenido al Pasillo del Misterio de Yu Wung \n elige tu camino";
  Cuento[1] = "Estas en un barrio chino de New York \ny hay un carrito de comidas con un ramen muy sospechoso";
  Cuento[2] = "Te comienzas a sentir mal y con nauseas \nves un hospital a los lejos y no sabes \nsi ir o confiar en descomponerte";
  Cuento[3] = "En el hospital te atienden y \nte dicen que esperes pero aparece una persona extraña";
  Cuento[4] = "Decides Seguir al desconocido y te lleva \na una habitacion con un portal extraño \nque te lleva devuelta al Pasillo";
  Cuento[5] = "Decides esperar y te atiende el doctor Nick Riviera \nte seda y no vuelves a a despertar";
  Cuento[6] = "Te mueres de hambre por descomponerte \nen un callejon oscuro y nadie te encuentra";
  Cuento[7] = "A la vuelta del barrio chino encuentras\n un Mc Donalds, comes y vuelves al pasillo";
  Cuento[9] = "Apareces en un mundo Oriental con un campo de flores \nte ves como una animacion y ves un templo a lo lejos \nte quedas en el campo o vas al templo? ";
  Cuento[10] = "Te quedas reposando y ves los templos a lo lejos \n montañas gigantes y cascadas que parecen infinitas \n y te quedas dormido, y asi, vuelves al pasillo ";
  Cuento[11] = "Al acercarte escuchas como rozan los metales\n llegando a la puerta ves como 2 personas estan luchando \nparece que entrenan...";
  Cuento[12] = "Te señalan y Agarras una Katana y empiezas \na luchar contra los espadachines \n Luego ellos se retiran y ves una luz a lo lejos \n pero tambien un te que se ve sabroso, vas hacia...";
  Cuento[13] = "Esa luz parece ser un espiritu antiguo \nen una forma que no entiendes, pero te quedas dormido \ny reapareces en el pasillo";
  Cuento[14] = "Decides quedartte y tomar el te, entras \nen un trance profundo y al desperar \nestas de nuevo en el pasillo";
  Cuento[15] = "Al ver esto te asustas y sales corriendo \nellos te siguen y te insartan una katana en la espalda \nte desvaneces y apareces en el pasillo";
  Cuento[16] = "Estas en Plaza San Martin \nno sabes si irte a tu casa \nen colectivo o caminando";
  Cuento[17] = "Justo llega un 'Este' que va para tu casa y te lo tomas";
  Cuento[18] = "Te vas caminando, no vivis muy lejos de la plaza";
  Cuento[19] = "Autor: Agustin Roa Cilinski \nMateria: Tecnologia Multimedial \nFacultad de Artes UNLP";
}

void draw() {
  background(255);

  if (pantalla==0) {
    //Pantalla Pasillo
    image(Fondos[0], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[0], width/2, 125);
    Boton("Creditos", 500, 50, 100);
    Boton("Puerta 3", 500, 500, 100);
    Boton("Puerta 2", width/2, 500, 100);
    Boton("Puerta 1", 100, 500, 100);
  } else if ( pantalla == 1 ) {
    //Pantalla Puerta 1 - New York 
    image(Fondos[1], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);

    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[1], width/2, 100);
    Boton("Comer", 100, 500, 120);
    Boton("No Comer", 500, 500, 120);
  } else if ( pantalla ==2 ) {
    //Pantalla Comer - New York
    image(Fondos[2], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[2], width/2, 100);
    Boton("Hospital", 100, 500, 125);
    Boton("Confiar", 500, 500, 125);
  } else if ( pantalla == 3 ) {
    //Pantalla Hospital - New York
    image(Fondos[3], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[3], width/2, 100);
    Boton("Esperar", 100, 500, 160);
    Boton("Seguir \ndesconocido", 500, 500, 160);
  } else if ( pantalla == 4 ) {
    //Pantalla Seguir persona -New York - Hospital -
    image(Fondos[4], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[4], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  } else if ( pantalla == 5 ) {
    //Pantalla Esperar - New York - Hospital
    image(Fondos[5], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[5], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  } else if ( pantalla == 6 ) {
    //Pantalla Confiar en Vomitar - New York
    image(Fondos[6], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[6], width/2, 100);
    Boton("Volver al pasillo", width/2, 500, 200);
  } else if ( pantalla == 7 ) {
    //Pantalla No comer - New York
    image(Fondos[7], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[7], width/2, 100);
    Boton("Volver al pasillo", width/2, 500, 200);
  } else if ( pantalla == 9) {
    //Pantalla Puerta 2 - Jonia
    image(Fondos[9], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[9], width/2, 100);
    Boton("Campo de \nflores", 100, 500, 150);
    Boton("Templo", 500, 500, 150);
  } else if ( pantalla == 10) {
    //Pantalla Quedarse campo flores - Jonia
    image(Fondos[10], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[10], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  } else if ( pantalla == 11 ) {
    //Pantalla Ir Templo - Jonia
    image(Fondos[11], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[11], width/2, 100);
    Boton("Agarrar \nKatana", 100, 500, 150);
    Boton("Salir \nCorriendo", 500, 500, 150);
  } else if ( pantalla == 12 ) {
    //Pantalla Katana - Jonia
    image(Fondos[12], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[12], width/2, 100);
    Boton("Luz Verde \nAzulada", 100, 500, 150);
    Boton("Tomas el Té", 500, 500, 150);
  } else if ( pantalla == 13 ) {
    //Pantalla Luz - Jonia
    image(Fondos[13], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[13], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  } else if ( pantalla == 14 ) {
    //Pantalla Té - Jonia
    image(Fondos[14], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[14], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  } else if ( pantalla == 15 ) {
    //Pantalla Sales corriendo - Jonia
    image(Fondos[15], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[15], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  } else if ( pantalla == 16 ) {
    //Pantalla Puerta 3 - Pza San Martin 
    image(Fondos[16], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[16], width/2, 100);
    Boton("Colectivo", 100, 500, 150);
    Boton("Irse \nCaminando", 500, 500, 150);
  } else if ( pantalla == 17 ) {
    //Pantalla Puerta 2 - Tomarse colectivo - Pza San Martin 
    image(Fondos[17], 0, 0, width, height);

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[17], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  } else if ( pantalla == 18 ) {
    //Pantalla Puerta 2 - Irse caminando - Pza San Martin
    image(Fondos[18], 0, 0, width, height);


    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[18], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  } else if ( pantalla == 19 ) {
    //Creditos

    fill(0, 0, 0, 150);
    noStroke();
    rect (0, 0, width, 200);


    fill(255);
    textAlign (CENTER);
    textSize(20);
    text(Cuento[19], width/2, 100);
    Boton("Volver al Pasillo", width/2, 500, 200);
  }  





  //debugear
  if (NPantalla) {
    pushStyle();
    fill(0);
    textAlign(LEFT);
    textSize(20);
    text("pantalla: " + pantalla, 20, 20);
    popStyle();
  }
}

void mousePressed() {

  if (pantalla==0) {
    //click Pantalla pasillo
    if (colisionBoton (mouseX, mouseY, 100, 500, 100/2 ) ) {
      pantalla=1;
    }
    if (colisionBoton (mouseX, mouseY, width/2, 500, 100/2 ) ) {
      pantalla=9;
    }
    if (colisionBoton (mouseX, mouseY, 500, 500, 100/2 ) ) {
      pantalla=16;
    }
    if (colisionBoton (mouseX, mouseY, 500, 50, 100/2 ) ) {
      pantalla=19;
    }
  } else if ( pantalla == 1 ) {
    //click Pantalla Puerta 1 - New York 
    if (colisionBoton (mouseX, mouseY, 100, 500, 120/2 ) ) {
      pantalla=2;
    }
    if (colisionBoton (mouseX, mouseY, 500, 500, 120/2 ) ) {
      pantalla=7;
    }
  } else if ( pantalla ==2 ) {
    //click Pantalla Comer - New York
    if (colisionBoton (mouseX, mouseY, 100, 500, 125/2 ) ) {
      pantalla=3;
    }
    if (colisionBoton (mouseX, mouseY, 500, 500, 125/2 ) ) {
      pantalla=6;
    }
  } else if ( pantalla == 3 ) {
    //click Pantalla Hospital - New York
    if (colisionBoton (mouseX, mouseY, 100, 500, 160/2 ) ) {
      pantalla=5;
    }
    if (colisionBoton (mouseX, mouseY, 500, 500, 160/2 ) ) {
      pantalla=4;
    }
  } else if ( pantalla == 4 ) {
    //click Pantalla Seguir persona -New York - Hospital
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 5 ) {
    //click Pantalla Esperar - New York - Hospital
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 6 ) {
    //click Pantalla Confiar en Vomitar - New York
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 7 ) {
    //click Pantalla No comer - New York
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 9) {
    //click Pantalla Puerta 2 - Jonia
    if (colisionBoton (mouseX, mouseY, 100, 500, 150/2 ) ) {
      pantalla=10;
    }
    if (colisionBoton (mouseX, mouseY, 500, 500, 150/2 ) ) {
      pantalla=11;
    }
  } else if ( pantalla == 10) {
    //click Pantalla Quedarse campo flores - Jonia
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 11 ) {
    //click Pantalla Ir Templo - Jonia
    if (colisionBoton (mouseX, mouseY, 100, 500, 150/2 ) ) {
      pantalla=12;
    }
    if (colisionBoton (mouseX, mouseY, 500, 500, 150/2 ) ) {
      pantalla=15;
    }
  } else if ( pantalla == 12 ) {
    //click Pantalla Katana - Jonia
    if (colisionBoton (mouseX, mouseY, 100, 500, 150/2 ) ) {
      pantalla=13;
    }
    if (colisionBoton (mouseX, mouseY, 500, 500, 150/2 ) ) {
      pantalla=14;
    }
  } else if ( pantalla == 13 ) {
    //click Pantalla Luz - Jonia
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 14 ) {
    //click Pantalla Té - Jonia
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 15 ) {
    //click Pantalla Sales corriendo - Jonia
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 16 ) {
    //click Pantalla Pza san martin
    if (colisionBoton (mouseX, mouseY, 100, 500, 150/2 ) ) {
      pantalla=17;
    }
    if (colisionBoton (mouseX, mouseY, 500, 500, 150/2 ) ) {
      pantalla=18;
    }
  } else if ( pantalla == 17 ) {
    //click Pantalla Colectivo - pza san martin
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 18 ) {
    //click Pantalla Caminando
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  } else if ( pantalla == 19 ) {
    //volver de creditos
    if (colisionBoton (mouseX, mouseY, width/2, 500, 200/2 ) ) {
      pantalla=0;
    }
  }
}
