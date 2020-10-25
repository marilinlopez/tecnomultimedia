class Personaje {
  float x, y;
  float t;
  PImage img;

  //Constructor
  Personaje () {
    x=300; //Posicion inicial en x
    y=350; //Posicion inicial en y
    t=200; //Tamaño
    img=loadImage("personaje.png");
    img.resize( int(t), int(t));
  }

  //Funcionalidades
  void dibujar() {
    image(img, x, y);
  }

  void mover() {
    if (keyCode==LEFT) {  
      x-=5; //Mover a la izquierda
    } else if (keyCode==RIGHT) { 
      x+=5; //Mover a la derecha
    }
  }
}
