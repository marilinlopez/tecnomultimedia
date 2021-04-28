
class Caminante {
  float x, y; //Posicion x e y
  float t; //Tamaño circulo
  float vel; //Velocidad 
  float dir; //Dirección

  Caminante() { //Constructor
    x=0;
    y=height/2;
    t=50;
    vel=1;
    dir=0;
  }

  void dibujar() { //Dibuja ellipse en la posicion x,y con tamaño t
    ellipse(x, y, t, t);
  }

  void mover() {
    if (keyPressed) { //Si tecla presionada dibuja un circulo
      dir+=1;
      x+=vel*cos(radians(-dir));
      y+=vel*sin(radians(-dir));
    } else { //Sino sigue en la misma linea
      x+=vel*cos(radians(0));
      y+=vel*sin(radians(0));
    }
  }
}
