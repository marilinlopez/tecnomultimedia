class Caminante {
  float x, y; //Posicion x e y
  float t; //Tamaño circulo
  float v; //Velocidad 
  float a; //Dirección

  Caminante() { //Constructor
    x=0;
    y=height/2;
    t=50;
    v=1;
    a=0;
  }

  void dibujar() { //Dibuja ellipse en la posicion x,y con tamaño t
    ellipse(x, y, t, t);
  }

  void mover() {
    if (keyPressed) { //Si tecla presionada dibuja un circulo
        a=a+1;
        x=x+v*cos(radians(-a));
        y=y+v*sin(radians(-a));
    } else { //Sino sigue en la misma linea
      x=x+v*cos(radians(0));
      y=y+v*sin(radians(0));
    }
  }
}
