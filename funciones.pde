void boton(float x, float y, float ancho, float alto, float corner) { //Crear boton
  pushStyle();  
  fill(#F7F714); //Color boton
  strokeWeight(2); //Ancho marco boton
  rect(x, y, ancho, alto, corner);
  popStyle();
}

void textoBoton(String texto, float x, float y,float tamFuente) { //Agregar texto boton
  pushStyle();  
  textSize(tamFuente); //Tamaño texto
  fill(0); //Color texto
  text(texto, x, y); //Texto boton
  popStyle();
}

Boolean clickBoton(float x, float y) { //Verificar click boton
  if (mouseX>x-altoBoton && mouseX<x+altoBoton && mouseY>y-altoBoton/2 && mouseY<y+altoBoton/2) {
    return true;
  } else {
    return false;
  }
}
