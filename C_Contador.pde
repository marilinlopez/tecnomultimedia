class Contador {

  //Atributos
  int puntaje, perdidas; 
  PFont fuente;

  //Constructor
  Contador() {
    perdidas = 0; //Inicializa perdidas en 0
    puntaje = 0; //Inicializa puntaje en 0
    fuente = createFont("dragonball.ttf", 25);
    textFont(fuente, 25);
  }

  //Funcionalidades
  void actualizarPerdidas() { //Suma 1 a perdidas
    perdidas++;
  }

  void actualizarPuntaje() { //Suma 1 a puntaje
    puntaje++;
  }

  void imprimirPuntaje() { //Imprimir puntaje
    fill(254, 255, 0, 120);
    textSize(25);
    text("Juntaste "+ puntaje+ " manzanas.", 50, 50);
  }
  
  void imprimirPerdidas() { //Imprimir manzanas perdidas
    fill(254, 255, 0, 120);
    textSize(25);
    text("Perdiste "+ perdidas+ " manzanas.", 500, 50);
  }
}
