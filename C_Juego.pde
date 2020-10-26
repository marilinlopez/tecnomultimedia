class Juego {

  //Atributos
  PImage fondo;
  int cm = 5;  //Cantidad manzanas
  Manzana[] m = new Manzana[cm]; //Arreglo de objetos Manzana
  Personaje p;
  Contador cont;

  //Constructor
  Juego() {
    fondo=loadImage("fondo.png");
    for ( int i = 0; i < m.length; i++ ) {     
      m[i] = new Manzana(); //Arreglo de instancias de Manzana
    }
    p=new Personaje(); //Instancia de Personaje
    cont=new Contador(); //Instancia de Contador
  }

  //Funcionalidades

  void dibujar() {
    image(fondo, 0, 0); //Fondo del juego
    for ( int i = 0; i < m.length; i++ ) { //Dibuja y actualiza manzanas
      m[i].dibujar();
      m[i].actualizar();
    }
    p.dibujar(); //Dibuja personaje
    colision(); //Verifica si hay colision
    recorrer();
    cont.imprimirPuntaje();
    cont.imprimirPerdidas();
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

  void recorrer() {
    for ( int i = 0; i < m.length; i++ ) { //Recorro el arreglo de manzanas
      if (m[i].limite()) {
        println(m[i].limite());
        cont.actualizarPerdidas();
      }
    }
  }

  void teclado(int tecla) {
    p.mover(tecla);
  }
}
