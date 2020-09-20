//Funciones de pantalla 06

void mostrarPantalla06() {
  image(img06, 0, 0);

  // Boton "¿Que era eso?"
  boton(width/2, height*0.83,anchoBoton, altoBoton, corner);
  textoBoton(boton[9], width/2, height*0.84,tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(250, 67, 450, 95, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[5], 250, 50);
  popStyle();
}

void clickPantalla06() {
  if ( clickBoton(width/2, height*0.83)) {
    //Click en boton "¿Que era eso?"
    estado = 8;
  }
}
