/* Agustin roa cilinski
  18/4/21
  trabajo practico Circulo Cromatico
*/

//variable para cargar fuente
PFont fuenteA;
PFont fuenteB;

// area de trabajo
  void setup() {
  size(600, 600);
  fuenteA = loadFont("BellMTBold-48.vlw");
  fuenteB = loadFont("BellMTBold-20.vlw");
  
  background(255);

 
  strokeWeight(1);
  //lineas base para los triangulos//
  line(300,300,300,50);
  line(300,300,300,550);
  line(300,300,50,300);
  line(300,300,550,300);
  line(300,300,550,450);
  line(300,300,550,150);
  line(300,300,450,550);
  line(300,300,150,550);
  line(300,300,50,450);
  line(300,300,50,150);
  line(300,300,200,50);
  line(300,300,450,50);
 
  //triangulos en si con color
  fill(255,130,0);
  triangle(300,300,300,50,450,50);
  fill(255,0,0);
  triangle(300,300,300,50,150,50);
  fill(255,0,130);
  triangle(300,300,150,50,50,150);
  fill(250,0,250);
  triangle(300,300,50,150,50,300);
  fill(130,0,255);
  triangle(300,300,50,300,50,450);
  fill(0,0,255);
  triangle(300,300,50,450,150,550);
  fill(0,130,255);
  triangle(300,300,150,550,300,550);
  fill(0,250,250);
  triangle(300,300,300,550,450,550);
  fill(0,255,130);
  triangle(300,300,450,550,550,450);
  fill(0,255,0);
  triangle(300,300,550,450,550,300);
  fill(130,255,0);
  triangle(300,300,550,300,550,150);
  fill(255,255,0);
  triangle(300,300,550,150,450,50);
  

//Circulo que recubre los triangulos e inperfecciones
strokeWeight(100);
  noFill();
  stroke(255);
  ellipse(300, 300, 600, 600);
   strokeWeight(2.5);
   fill(255);
   noStroke();
     circle(300,300,300);
    
 
     
//Texto
fill(0);
textFont(fuenteB);
text("Rojo",225,115);
text("Azul",140,440);
text("Verde",470,360);
text("Magenta",70,250);
text("Cian",330,495);
text("Amarillo",405,165);



}


//ayuda para encontrar coordenadas
void draw() {
}

void mousePressed() {
  println(mouseX, mouseY);
}
