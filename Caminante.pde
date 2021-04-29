class Caminante {
  float x, y; //Posicion x e y
  float t; //Tamaño circulo
  float vel; //Velocidad 
  float dir; //Dirección
  float variacionAngular;
  int estado; // 0=recta, 1=curva

  Caminante() { //Constructor
    x=0;
    y=height/2;
    t=50;
    vel=1;
    dir=0;
    variacionAngular=0;
    estado=0; // Estado inicial recta
  }

  void dibujar() { //Dibuja ellipse en la posicion x,y con tamaño t
    pushStyle();
    noStroke();
    ellipse(x, y, t, t);
    popStyle();
  }

  void actualizar() { //Actualiza estados
    if (estado==0) { //Estado recta
      variacionAngular=0;
      mover();
    } else { //Estado curva
      variacionAngular=1;
      mover();
    }
  }

  void mover() {
    if (keyPressed) { //Si tecla presionada dibuja una curva
      estado=1; //Estado curva
    } else {
      estado=0; //Estado recta
      dir=0;
    }
    dir+=variacionAngular;
    x+=vel*cos(radians(-dir));
    y+=vel*sin(radians(-dir));
  }
}
