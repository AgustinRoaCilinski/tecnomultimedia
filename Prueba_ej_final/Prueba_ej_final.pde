


String [] relato = new String [21];
PImage[] foto = new PImage [17];
Pantalla pantalla;
String estado ="aventura";

void setup() {
  size(600, 600);
  for(int i = 0; i < foto.length; i++){
    foto[i] = loadImage("Escena " + i +".jpg");
  }
  
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  relato[0] = " -¿Qué voy a cenar?- ";
  relato[1] = "Llegas a casa después de pasar la\ntarde con tus amigos, se acerca\nla hora de la cena pero estas cansado.\n ¿Qué vas a hacer?"; 
  relato[2] = "Entras a la app de delivery";
  relato[3] = "Decidiste cocinar de\ntodas formas";
  relato[4] = "Vas y revuelves la cocina a ver\nsi hay algo rápido para comer";
  relato[5] = "Hay dos opciones\nque parecen prometedoras";
  relato[6] = "No hay comida\n¿Qué hago?";
  relato[7] = "Vas a comprar al super";
  relato[8] = "Pediste la promo\nde 2 pizzas + bebida";
  relato[9] = "Pediste el\nsanguche de milanesa";
  relato[10] = "Qué compro?";
  relato[11] = "La comida es suficiente\npara el almuerzo del día\nsiguiente, pero tendrás que\nrebuscártelas para cocinarte el\nresto del mes :(";
  relato[12] = "No fue el mejor sanguche del\nmundo, pero salvó la cena.\nAún tienes dinero para comer\nel resto del mes";
  relato[13] = "Compras los fideos instantáneos\ncon unas papas fritas y gaseosa";
  relato[14] = "Compras los cortes de\ncarne para milanesa y\nunas verduras para una ensalada";
  relato[15] = "Te sacaste el antojo, comiste\ny te quedo un poco de la\nnoche libre antes de dormir\n¿Qué haces?";
  relato[16] = "Vuelves a casa, cocinas, casi\nmueres de cansancio pero comiste bien.\nVas a dormir un poco tarde\npor el tiempo que llevo salir\na comprar y cocinar tarde\n:D";
  relato[17] = "Juegas un rato en la PC";
  relato[18] = "Vas a dormir igual";
  relato[19] = "Luego de unas cuantas partidas,\nte da hambre otra vez. No\npuedes dormir y ya esta todo\ncerrado como para comprar algo :(";
  relato[20] = "Algunas horas después, te\ndespiertas de hambre, aún falta para\nque abran los negocios y\nno puedes volver a dormir :(";
  pantalla = new Pantalla();
}

void draw(){
 if(estado=="aventura"){
   pantalla.verPantalla();
 } 
}
  
  
  
