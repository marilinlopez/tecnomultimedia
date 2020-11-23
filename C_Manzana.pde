class Manzana {

  //Atributos
  float x, y;  //Posicion
  float t, v; //Tamaño y velocidad de la manzana
  PImage img;
  Resizable res;

  //Constructor
  Manzana() {
    res= new Resizable(width, height);
    x=random(width);
    y=-100;
    t=random(30, 50);
    v=random(1, 3);
    img=loadImage("manzana.png");
    img.resize( int(t), int(t));
  }

  //Funcionalidades
  void dibujar() {
    image(img,res.resx(x), res.resx(y));
  }

  void actualizar() {
    y+=v; //Actualiza la velocidad de la manzana
  }

  Boolean limite() { //Devuelve true si llego al limite sino false
    if (y>height+t/2) {
      return true;
    } else {
      return false;
    }
  }

  void reiniciar() { //Reinicia valores
    y=-100;
    x= random( width );
    t=random(30, 50);
    v=random(1, 3);
  }
}
