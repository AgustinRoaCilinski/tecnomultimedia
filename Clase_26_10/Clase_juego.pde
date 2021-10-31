class Juego{
  //propiedades del juego
  Fondo fondo;
  Enemigo2[] enemigo;
  int cantEnemigos;
  
  
  //constructor juego
  Juego(){
    fondo = new Fondo();
    cantEnemigos =5;
    enemigo =new Enemigo2[cantEnemigos];
    for(int i=0; i<cantEnemigos; i++){
      enemigo[i]=new Enemigo2();
    }
  }
  
  
  //
  void dibujarjuego(){
   fondo.dibujarfondo();
   for(int i=0; i<cantEnemigos; i++){
      enemigo[i].draw_();
    }
   
  }
}
