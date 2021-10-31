


class Enemigo2 {
 float x,y,ancho,alto;
 float despX,despY;
  
 Enemigo2(){
  ancho=80;
  alto=40;
  aleatorio();
 }
  void draw_(){
   pushMatrix();
   pushStyle();
   translate(x,y);
   rectMode(CENTER);
   fill(240,10,120);
   ellipse(0,0,ancho,alto);
   
   
   
   popStyle();
   popMatrix();
   
   
   if(random(0,100)<10 ){
   aleatorio();
   }
   
  }
  
  void aleatorio(){
   x=random(0,width);
   y=random(0,height);
    
    
    
  }
  
  
  
}
