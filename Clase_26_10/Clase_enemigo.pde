//declaracion de una clase:


//primero nombre de la clase:
class Cuca{
  //Propiedades:
  float x,y,ancho,alto;
  float despX,despY;
  
  
  //Cosntructor:
  Cuca(){
   x= random(50,width-50);
   y= random(50,height-50);
   ancho = 50;
   alto = 50;
   despX=0;
   despY=random(1,5);
  
   }
  
  
  //Funcionalidad:
  void dibujar(){
    fill(255);
    ellipse(x,y,ancho,alto);
  }
 
  void mover(){

  x+=despX;
  y+=despY;
  if (x>width+ancho/2){
    x=-ancho/2;
    
  }
  if (x<-ancho/2){
    x=-width+ancho/2;
    
  }
  if (y>height+alto/2){
    y=-alto/2;
    despX=random(-2,2);
  }
  if (y<-alto/2){
    y=height+alto/2;
    
  }
  }
  
}
