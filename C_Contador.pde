class Contador {

  //Atributos
  int puntaje, perdidas; 
  PFont fuente;
  Resizable res;

  //Constructor
  Contador() {
    res= new Resizable(width, height);
    perdidas = 0; //Inicializa perdidas en 0
    puntaje = 0; //Inicializa puntaje en 0
    fuente = createFont("dragonball.ttf", 25);
    textFont(fuente, 25);
  }

  //Funcionalidades
  void reiniciarPuntaje() {//Reinciar puntaje a 0
    this.puntaje=0;
  }

  void reiniciarPerdidas() {//Reinciar perdidas a 0
    this.perdidas=0;
  }

  Boolean ganar() {//Si puntaje=20 reinicia puntaje y devuelve true
    if (puntaje==20) {
      //reiniciarPuntaje();
      return true;
    }
    return false;
  }

  Boolean perder() {//Si perdidas=20 reinicia puntaje,perdidas y devuelve true
    if (perdidas==20) {
      reiniciarPuntaje();
      reiniciarPerdidas();
      return true;
    }
    return false;
  }

  void actualizarPerdidas() { //Suma 1 a perdidas
    perdidas++;
  }

  void actualizarPuntaje() { //Suma 1 a puntaje
    puntaje++;
  }

  void imprimirPuntaje() { //Imprimir puntaje
    pushStyle();  
    fill(254, 255, 0, 120);
    textSize(res.resy(25));
    textAlign(LEFT);
    text("Juntaste "+ puntaje+ " manzanas.", 0, 30);
    popStyle();
  }

  void imprimirPerdidas() { //Imprimir manzanas perdidas
    pushStyle();  
    fill(254, 255, 0, 120);
    textSize(res.resy(25));
    textAlign(RIGHT);
    text("Perdiste "+ perdidas+ " manzanas.", width, 30);
    popStyle();
  }
}
