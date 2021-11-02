


class Enemigo2 {
 float x,y,ancho,alto;
 float despX,despY;
  
 Enemigo2(){
   x= random(50,width-50);
   y= random(50,height-50);
  ancho=80;
  alto=40;
  aleatorio();
  despX=0;
   despY=random(1,5);
 }
 
  void draw_(){
   pushMatrix();
   pushStyle();
   translate(x,y);
   rectMode(CENTER);
   fill(240,10,120);
   rect(0,0,ancho,alto);
   
   
   
   popStyle();
   popMatrix();
   
   
   mover();
 
  }
  
  void aleatorio(){
   x=random(0,width);
   y=random(0,height);
   
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
  
  //evaluar colision
  boolean colision(float x_, float y_,float ancho_, float alto_ ){
    if(
   x-ancho/2 < x_+ancho_/2
   && x+ancho/2 > x_-ancho_/2
   && y-alto/2 < y_+alto_/2
   && y+alto/2 > y_-alto_/2
    
  ){
    //hay colision
    return true;
  } else {
   return false; 
    
  }
  
 }
 
}
