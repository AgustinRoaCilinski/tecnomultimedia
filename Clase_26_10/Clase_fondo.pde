

class Fondo{
  //PROPIEDADES
  PImage imgFondo;
  float y;
  float velY;
  
  //constructor
  Fondo (){
  imgFondo = loadImage("fondo.jpg");
  y=0;
  velY=-6;
  }
  
  //funcionalidad
  void dibujarfondo(){
    image(imgFondo,0,y,width*2,height*2);
    y+=velY;
    if(y<-height){
    y=0;
    }
  }
  
  
}
