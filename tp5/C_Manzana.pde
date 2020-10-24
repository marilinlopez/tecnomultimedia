class Manzana {

  //Atributos
  float x, y;  //Posicion
  float t, v; //Tamaño y velocidad de la manzana
  PImage img;

  //Constructor
  Manzana() {
    x=random(width);
    y=-100;
    t=random(10, 50);
    v=random(2, 5);
    img=loadImage("manzana.png");
    img.resize( int(t), int(t));
  }

  //Funcionalidades

  void dibujar() {
    image(img, 0, 0);
  }

  void actualizar() {
    y +=v;
    if (y>height+t/2) {
      x= random( width );
      y=-100;
      t=random(10, 50);
      v=random(2, 5);
    }
  }
}
