
int puntaje; 

class Contador {

  //Constructor
  Contador() {
    puntaje = 0;
  }

  //Funcionalidades
  void mostrarPuntaje() {
    textSize(20);
    fill(255, 0, 250);
    text("Juntó "+ puntaje+ " manzanas.", width-100, 50);
  }

}
