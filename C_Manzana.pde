class Manzana {

  //Atributos
  float x, y;  //Posicion
  float t, v; //Tamaño y velocidad de la manzana
  PImage img;

  //Constructor
  Manzana() {
    x=random(width);
    y=-100;
    t=random(30, 50);
    v=random(1,3);
    img=loadImage("manzana.png");
    img.resize( int(t), int(t));
  }

  //Funcionalidades

  void dibujar() {
    image(img, x,y);
  }

  void actualizar() {
    y+=v; 
    if (y>height+t/2) {  //Limite de la pantalla
      x= random( width );
      y=-100;
      t=random(30,50);
      v=random(1,3);
    }
  }
}
