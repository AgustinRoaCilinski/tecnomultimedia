// Agustin roa cilinski - Tp3 correccion - Ilusion Optica
// Link Video Youtube: https://youtu.be/rMnQI1Vjv5k

int a=0;
int b=0;
color col=color(random(255),255,255);
void setup(){
 size(400,400);
  background(255);
}

void draw(){

  background(col);

if(mousePressed){
 col --; 
}

if(keyPressed){
  background(255);
}

  fill(0);  
  
  for(a=0; a<16; a=a+2){
   for(b=0; b<16; b=b+2){
     rect(b*30,a*30, 50,50);
   }
  }
}
