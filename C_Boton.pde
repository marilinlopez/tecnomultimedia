class Boton {

  //Atributos
  float x, y, alto, ancho; //Posicion, altura y ancho
  String txt; //Texto boton
  float tam;//Tamaño texto boton

  //Constructor
  Boton(float x, float y, String txt,float tam) {
    this.x=x;
    this.y=y;
    this.alto=height/12;
    this.ancho=width/8;
    this.txt=txt;
    this.tam=tam;
  }

  //Funcionalidades
  void actualizar(float x, float y, float ancho, float alto,float tam) {
    this.x=x;
    this.y=y;
    this.ancho=ancho;
    this.alto=alto;
    this.tam=tam;
  }

  void dibujar() { //Dibujar boton
    //Boton
    pushStyle();  
    fill(#F7F714); //Color boton
    strokeWeight(2); //Ancho marco boton
    rect(x, y, ancho, alto, 10);

    //Texto boton 
    textSize(tam); //Tamaño texto
    fill(0); //Color texto
    text(txt, x, y); //Texto boton
    popStyle();
  }

  Boolean click() { //Verificar click boton
    if (mouseX>x-alto && mouseX<x+alto && mouseY>y-alto/2 && mouseY<y+alto/2) {
      return true;
    } else {
      return false;
    }
  }
}
