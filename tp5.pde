Juego juego; 

void setup() {
  size(800, 600);
  juego=new Juego();
}

void draw() {
  juego.dibujar();
  if (keyPressed) { //Tecla presionada
    juego.teclado(keyCode);
  }
}
