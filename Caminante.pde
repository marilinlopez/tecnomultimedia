class Caminante {
  float x, y; //Posicion x e y
  float t; //Tamaño circulo
  float vel; //Velocidad 
  float dir; //Dirección
  Paleta colores;

  Caminante() { //Constructor
    x=0;
    y=height/2;
    t=10;
    vel=1;
    dir=0;
    colores=new Paleta();
  }

  void dibujar() { //Dibuja puntos en la posicion x,y con tamaño t
    float pos=5;
    for (int i=0; i<14; i++) {
      pushStyle();
      stroke(colores.getColor(i)); //Color
      strokeWeight(t); //Grosor
      point(x, y+pos);
      popStyle();
      pos+=5;
    }
  }

  void mover() {
    if (keyPressed) { //Si tecla presi onada dibuja un circulo
      dir+=1;
      x+=vel*cos(radians(-dir));
      y+=vel*sin(radians(-dir));
    } else { //Sino sigue en la misma linea
      x+=vel*cos(radians(0));
      y+=vel*sin(radians(0));
    }
  }
}
