void boton(float x, float y, float ancho, float alto, float corner) { //Crear boton
  pushStyle();  
  fill(#F7F714); //Color boton
  strokeWeight(2); //Ancho marco boton
  rect(x, y, ancho, alto, corner);
  popStyle();
}

void textoBoton(String texto, float x, float y) { 
  pushStyle();  
  textSize(15); //Tamaño texto
  fill(0); //Color texto
  text(texto, x, y); //Texto boton
  popStyle();
}
