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
  fondo = loadImage ("El cadaver de la novia.jpg");
  posY = height;
  TipografiaMovie = loadFont("TimesNewRomanPSMT-48.vlw");
  textAlign(CENTER, TOP);
  textFont(TipografiaMovie);
 
}

void draw() {
  background (fondo);
 
  if(posY >= 0 && pantalla < 8){
    //velocidad del texto en subida//
    posY --;
    
  }else{
    posY = height;
  }
  if(posY == 0){
  pantalla++;
  }
  
     //si la pantalla es la 0 o la 7 el texto es El cadaver de la novia!//
  else if(pantalla == 0 || pantalla == 7){
    background(0);
    texto = "El Cadaver de la Novia";
  }
  
  // siguiente comando: si pantalla es 1 el texto es ...//
  if(pantalla == 1){
    background (0);
    texto = "Direccion y Musica:\nDireccion Arte: Nelson Lowdry";
     
    
}

//comando pantalla 2
if(pantalla==2){
  background(0);
  texto = "Sonido: Martin Cantwell\nSteve Boeddeker";
 
}
 
 //comando pantalla 3
 if(pantalla == 3){
      background (0);
   texto = "Elenco:\nVictor Van Dort: Johnny Depp";
  
 }
   
  //comando pantalla 4
  if(pantalla == 4){
    background (0);
    texto = "Corpse Bride:\nHelena Bonham Carter";
  }
  
  //comando pantalla 5
  if(pantalla == 5){
    background(0);
    texto = "Victoria Everglot:\nEmily Watson";
  }
  
  //comando pantalla 6
  if(pantalla == 6){
    background (0);
    texto = "Nell Van Dort:\nTracey Ullman";
  }
    
 
  
   text(texto, width/2, posY);
  println("PosY: ",posY);
  println ("Pantalla: ", pantalla);
}
