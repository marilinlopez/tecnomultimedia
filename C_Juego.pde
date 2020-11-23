class Juego {

  //Atributos
  PImage fondo;
  int cm = 10;  //Cantidad manzanas
  Manzana[] m = new Manzana[cm]; //Arreglo de manzanas
  Personaje p;
  Contador cont;
  Resizable res;

  //Constructor
  Juego() {
    res= new Resizable(width, height);
    fondo=loadImage("fondo.png");
    for ( int i = 0; i < m.length; i++ ) {     
      m[i] = new Manzana(); //Arreglo de instancias de Manzana
    }
    p=new Personaje(); //Instancia de Personaje
    cont=new Contador(); //Instancia de Contador
  }

  //Funcionalidades
  Contador getContador() {
    return cont;
  }

  void dibujar() {
    image(fondo, 0, 0, width, height); //Fondo del juego
    for ( int i = 0; i < m.length; i++ ) { //Dibuja y actualiza manzanas
      m[i].dibujar();
      m[i].actualizar();
      if (m[i].limite()) {
        cont.actualizarPerdidas();
        m[i].reiniciar();
      }
    }
    colision();//Verifica si hay colision
    p.dibujar();//Dibuja personaje
    cont.imprimirPuntaje();//Imprime manzanas juntadas
    cont.imprimirPerdidas();//Imprime manzanas perdidas
    this.imprimir();//Imprime consigna juego
    if (this.cont.ganar()) {
      this.imprimirGanaste();
      noLoop();
    }
    if (this.cont.perder()) {
      this.reiniciar();
      this.imprimirPerdiste();
      noLoop();
    }
  }

  void colision() {
    for ( int i = 0; i < m.length; i++ ) { //Recorro el arreglo de manzanas
      float d = dist( p.x+p.t/2, p.y+p.t/2, m[i].x+m[i].t/2, m[i].y+m[i].t/2 ); //Distancia entre personaje y manzana
      if ( d < p.t/2) { //Si hay colision
        cont.actualizarPuntaje();//Sumar 1 a puntaje
        m[i].reiniciar(); //Reiniciar posicion manzana
      }
    }
  }

  void teclado(int tecla) {
    p.mover(tecla);
  }

  void imprimir() { //Imprimir consigna juego
    pushStyle();  
    fill(254, 255, 0, 120);
    textAlign(CENTER);
    textSize(res.resy(30));
    text("¡Junta 20 manzanas!", width/2, 50);
    popStyle();
  }

  void imprimirPerdiste() { //Imprimir perdiste
    pushStyle();  
    fill(254, 255, 0, 120);
    textAlign(CENTER);
    textSize(res.resy(100));
    text("¡Perdiste!", width/2, height/3);
    textSize(50);
    text("Click para volver a jugar", width/2, height/2);
    popStyle();
  }

  void imprimirGanaste() { //Imprimir ganaste
    pushStyle();  
    fill(254, 255, 0, 120);
    textAlign(CENTER);
    textSize(res.resy(100));
    text("¡Ganaste!", width/2, height/3);
    textSize(res.resy(50));
    text("Click para continuar", width/2, height/2);
    popStyle();
  }

  void reiniciar() {//Reinicia juego luego de perder o ganar
    for ( int i = 0; i < m.length; i++ ) { //Recorro el arreglo de manzanas
      m[i].reiniciar(); //Reiniciar posicion manzana
    }
    p.reiniciar();//Reiniciar posicion personaje
    this.cont.reiniciarPerdidas();
    this.cont.reiniciarPuntaje();
  }

  void click() {
    loop();
  }
}
