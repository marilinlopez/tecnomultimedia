class Resizable {
  float ancho;
  float alto;

  //Constructor
  Resizable(float ancho,float alto){
    this.ancho=ancho;
    this.alto=alto;
  }
  
  //Funcionalidades
  
  float resx(float valor) {
    return round(map(valor, 0, ancho, 0, width));
  }

  float resy(float valor) {
    return round(map(valor, 0, alto, 0, height));
  }
}
