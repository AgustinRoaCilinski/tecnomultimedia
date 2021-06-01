// Agustin Roa Cilinski - tp2 : Creditos --> El Cadaver de la novia



// Variable para agregar lineas de txt
String texto = "txt";

// Variable para agregar tipografia
PFont TipografiaMovie;

int posY = height;

//Variable de pantalla, indica que la primer pantalla que inicia es la 0//
int pantalla = 0;

PImage fondo;

void setup() {
  size(600,600);
  fondo = loadImage ("ELCadaverDeLaNovia.jpg");
  posY = height;
  TipografiaMovie = loadFont("TimesNewRomanPSMT-48.vlw");
  textAlign(CENTER, TOP);
  textFont(TipografiaMovie);
 
}

void draw() {
   image(fondo,0,0,width,height);
 
  //si es posible avanzar alguna pantalla:
  if (pantalla < 8) {
    //velocidad del texto en subida//
    posY --; // resto posY
    if (posY <= 0) { //si posY alcanzo el límite
      pantalla++; // avanzo una pantalla.
      posY = height; // posY devuelta a su valor inicial al cambiar pantalla.
    }
  } 
  
     //si la pantalla es la 0 o la 7 el texto es El cadaver de la novia!//
  if(pantalla == 0 || pantalla == 7){
     image(fondo,0,0,width,height);
    texto = "El Cadaver de la Novia";
  }
  
  // siguiente comando: si pantalla es 1 el texto es ...//
  else if(pantalla == 1){
     image(fondo,0,0,width,height);
    texto = "Direccion y Musica:\nDireccion Arte: Nelson Lowdry";
     
    
}

//comando pantalla 2
  else if(pantalla==2){
   image(fondo,0,0,width,height);
  texto = "Sonido: Martin Cantwell\nSteve Boeddeker";
 
}
 
 //comando pantalla 3
 else if(pantalla == 3){
       image(fondo,0,0,width,height);
   texto = "Elenco:\nVictor Van Dort: Johnny Depp";
  
 }
   
  //comando pantalla 4
  else if(pantalla == 4){
     image(fondo,0,0,width,height);
    texto = "Corpse Bride:\nHelena Bonham Carter";
  }
  
  //comando pantalla 5
  else if(pantalla == 5){
     image(fondo,0,0,width,height);
    texto = "Victoria Everglot:\nEmily Watson";
  }
  
  //comando pantalla 6
  else if(pantalla == 6){
     image(fondo,0,0,width,height);
    texto = "Nell Van Dort:\nTracey Ullman";
  }
    
 
  
   text(texto, width/2, posY);
   fill(255);
   stroke(0);
  println("PosY: ",posY);
  println ("Pantalla: ", pantalla);
}
