class Personaje {
  float x, y; //Posicion de personaje
  float t; //Tamaño de personaje
  PImage img;
  Resizable res;

  //Constructor
  Personaje () {
    x=300; //Posicion inicial en x
    y=350; //Posicion inicial en y
    t=200; //Tamaño
    img=loadImage("personaje.png");
    res= new Resizable(width, height);
  }

  //Funcionalidades

  void dibujar() {
    image(img,res.resx(x),res.resx(y), res.resx(t), res.resx(t));
  }

  void mover(int tecla) { //Verifica si apretó tecla de izquierda o derecha
    if (tecla==LEFT) {  
      x-=5; //Mover a la izquierda
    } else if (tecla==RIGHT) { 
      x+=5; //Mover a la derecha
    }
  }

  void reiniciar() {//Posiciona al personaje luego de perder
    this.x=300;
    this.y=350;
  }
}
