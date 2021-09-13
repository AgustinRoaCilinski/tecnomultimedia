//Agustin Roa Cilinski

int pantalla =0;


void setup(){
  size(600,600);
}

void draw(){

  
    
  if (pantalla==0){
    background(255);
    //Pantalla Pasillo
    dibujaBotonCircular("Puerta 3",500,500,150);
    dibujaBotonCircular("Puerta 2",width/2,500,150);
    dibujaBotonCircular("Puerta 1",100,500,150);
    
    
    
    
       } else if ( pantalla == 1 ){
           //Pantalla Puerta 1 - New York 
              dibujaBotonCircular("Comer",100,500,150);
              dibujaBotonCircular("No Comer",500,500,150);
         } else if ( pantalla ==2 ){
             //Pantalla Comer - New York
    
               } else if ( pantalla == 3 ){
                 //Pantalla Hospital - New York
    
                 } else if ( pantalla == 4 ){
                    //Pantalla Seguir persona -New York - Hospital
    
                    } else if ( pantalla == 5 ){
                         //Pantalla Esperar - New York - Hospital
            
            } else if ( pantalla == 6 ){
               //Pantalla Confiar en Vomitar - New York
        } else if ( pantalla == 7 ){
          //Pantalla No comer - New York
       
   } else if ( pantalla == 9){
     //Pantalla Puerta 2 - Jonia 
     
     } else if ( pantalla == 10){
     //Pantalla Quedarse campo flores - Jonia
      
     } else if ( pantalla == 11 ){
     //Pantalla Ir Templo - Jonia
     
       } else if ( pantalla == 12 ){
         //Pantalla Katana - Jonia
          
         } else if ( pantalla == 13 ){
             //Pantalla Luz - Jonia
     
         } else if ( pantalla == 14 ){
           //Pantalla Té - Jonia
     
     } else if ( pantalla == 15 ){
     //Pantalla Sales corriendo - Jonia
     
       fill(0);
     textAlign(LEFT);
     textSize(30);
     text("pantalla: " + pantalla,20,20);
    
  }
  
}

void mousePressed(){
  
  if (pantalla==0){
    //click Pantalla pasillo
    if (colisionBoton (mouseX, mouseY,100,500,150/2 ) ){
     pantalla=1; 
    }
     if (colisionBoton (mouseX, mouseY,width/2,500,150/2 ) ){
     pantalla=9; 
    }
    if (colisionBoton (mouseX, mouseY,500,500,150/2 ) ){
     pantalla=16; 
    }
       } else if ( pantalla == 1 ){
           //click Pantalla Puerta 1 - New York 
              if (colisionBoton (mouseX, mouseY,100,500,150/2 ) ){
                  pantalla=2; 
    }
              if (colisionBoton (mouseX, mouseY,500,500,150/2 ) ){
                  pantalla=7; 
    }
              
           } else if ( pantalla ==2 ){
             //click Pantalla Comer - New York
    
               } else if ( pantalla == 3 ){
                 //click Pantalla Hospital - New York
    
                 } else if ( pantalla == 4 ){
                    //click Pantalla Seguir persona -New York - Hospital
    
                    } else if ( pantalla == 5 ){
                         //click Pantalla Esperar - New York - Hospital
            
            } else if ( pantalla == 6 ){
               //click Pantalla Confiar en Vomitar - New York
        } else if ( pantalla == 7 ){
          //click Pantalla No comer - New York
       
   } else if ( pantalla == 9){
     //click Pantalla Puerta 2 - Jonia 
     
     } else if ( pantalla == 10){
     //click Pantalla Quedarse campo flores - Jonia
      
     } else if ( pantalla == 11 ){
     //click Pantalla Ir Templo - Jonia
     
       } else if ( pantalla == 12 ){
         //click Pantalla Katana - Jonia
          
         } else if ( pantalla == 13 ){
             //click Pantalla Luz - Jonia
     
         } else if ( pantalla == 14 ){
           //click Pantalla Té - Jonia
     
     } else if ( pantalla == 15 ){
     //click Pantalla Sales corriendo - Jonia
     
    
    
  }
  
}
