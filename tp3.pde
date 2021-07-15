//agustin roa cilinski - tp3 ilusion optica
/* aclaracion: Va sin video porque no me dejo
enlazar la camara de droidcam de ninguna manera
para el recuperatorio vere bien como lo hago y edito para poder enviar bien el video
de todas formas ya se que voy a ir a recuperatorio
*/


color col = color(random (255),255,255);

void setup() {
  colorMode(HSB);  
  size(600, 600);

}

void draw() {
 
  
  pushMatrix();
  background(col);
  popMatrix();

if(mousePressed){
 col --; 
}


pushStyle();

  for ( int i=100; i<501; i+=400) {
    strokeWeight(4);
    fill(255);
    line(i,450,300,75);
    line(i,450,100,450);
  }
  popStyle();
  
  pushStyle();
   for ( int i=100; i<501; i+=400) {
    fill(0);
    ellipse(i,150,100,100);
  
  }
 popStyle();

pushStyle();
for (int i=300; i<301; i++) {
  fill(0);    
  ellipse(i,525,100,100);
   
}
popStyle();


   for (int i=100; i<300; i+=200) {
     fill(col);
     noStroke();
  triangle(i,150,i+200,525,500,150);
 }


}
