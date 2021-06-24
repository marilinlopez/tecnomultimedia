class Caminante {

  //------------------------Atributos

  float x, y; //Posicion x e y
  float t; //Tamaño punto
  float vel; //Velocidad 
  float dir; //Dirección
  float variacionAngular;
  String estado; //Estados
  int dirCurva=1;
  Paleta colores;

  //------------------------Constructor

  Caminante(float x, float dir) { //Parametros: posicion de x y direccion 
    this.x=x;
    this.dir=dir;
    y=height/2-35;
    t=5;
    vel=1;
    colores=new Paleta();
    variacionAngular=0;
    dirCurva=1;
    estado="recta"; //Estado inicial recta
  }

  //------------------------Set estado

  void setEstado(String estado) {
    this.estado=estado;
  }

  //------------------------(Tridimensional) Dibuja puntos en la posicion x,y con tamaño t

  void dibujar() { 
    float pos=5;
    for (int i=0; i<14; i++) {
      pushStyle();
      pg.stroke(colores.getColor(i)); //Color
      pg.strokeWeight(t); //Grosor de puntos
      pg.point(x, y+pos);
      popStyle();
      pos+=5;
    }
  }

  //------------------------(Bidimensional) Dibuja puntos en la posicion x,y con tamaño t

  void dibujar2(int signo) { 
    pg.pushMatrix();
    pg.translate(x, y);
    pg.rotate(radians(dir*signo));
    for (int i=0; i<14; i++) {
      float dif=map(i, 0, 13, -30, 30);
      pg.pushStyle();
      pg.stroke(colores.getColor(i)); //Color
      pg.strokeWeight(t); //Grosor de puntos
      pg.point(0, dif*signo);
      pg.popStyle();
    }
    pg.popMatrix();
  }

  //------------------------Mover caminante

  void mover(int signo) { 
    dir+=variacionAngular;
    x+=vel*cos(radians(dir*signo));
    y+=vel*sin(radians(dir*signo));
  }

  //------------------------Actualizar estados caminante

  void actualizar(int signo) { 
    if (estado.equals("recta")) {
      variacionAngular=0;
      dirCurva*=-1; //Cambia direccion de la curva
      mover(signo);
    } else if (estado.equals("curva")) {
      variacionAngular=1*dirCurva;
      mover(signo);
    } else if (estado.equals("fin")) {
    }
  }

  //------------------------Limites pantalla primer caminante tridimensinal

  void limites1() { 
    if (x>=width/2) {
      estado="fin";
    }
    if (y>=height-139) {
      estado="curva";
    }
    if (y<=64) {
      estado="curva";
    }
  }

  //------------------------Limites pantalla segundo caminante

  void limites2() { 
    if (y>=height-139) {
      estado="curva";
    }
    if (y<=64) {
      estado="curva";
    }
  }

  //------------------------Limites pantalla primer caminante bidimensional

  void limites3() { 
    if (x>=width/2) {
      estado="fin";
    }
  }

  //------------------------Finaliza

  boolean finalizo() {
    return estado.equals("fin");
  }
}
