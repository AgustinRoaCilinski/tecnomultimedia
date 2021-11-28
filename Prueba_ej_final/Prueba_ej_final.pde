


//String [] relato = new String [21];


String estado = "aventura";

Aventura aventura;

void setup() {
  aventura = new Aventura();
  size(600, 800);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  
}


void draw() {
  if (estado=="aventura") {

    aventura.actualizar();
  }
}

void mousePressed() {
  aventura.presionoMouse();
}
