class Personaje {
  float x, y; //Posicion de personaje
  float t; //Tamaño de personaje
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

  void mover(int tecla) { //Verifica si apretó tecla de izquierda o derecha
    if (tecla==LEFT) {  
      x-=5; //Mover a la izquierda
    } else if (tecla==RIGHT) { 
      x+=5; //Mover a la derecha
    }
  }
}
