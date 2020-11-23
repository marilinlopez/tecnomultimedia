class Historia {
  //Cuadro
  float x, y, ancho, alto;
  //Texto
  String txt;//Texto historia
  float tam;//Tamaño texto

  //Constructor
  Historia(float x, float y, float ancho, float alto, String txt, float tam) {
    this.txt=txt;
    this.x=x;
    this.y=y;
    this.ancho=ancho;
    this.alto=alto;
    this.tam=tam;
  }

  //Funcionalidades
  void dibujar() { 
    pushStyle(); 
    //Cuadro
    fill(0, 0, 0, 100); 
    noStroke();
    rect(x, y, ancho, alto, 10);
    //Texto
    fill(254, 255, 0, 100);
    textSize(tam);
    text(txt, x, y);
    popStyle();
  }

  void actualizar(float x, float y, float ancho, float alto, float tam) {
    this.x=x;
    this.y=y;
    this.ancho=ancho;
    this.alto=alto;
    this.tam=tam;
  }
}
