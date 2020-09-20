//Funciones de pantalla 11

void mostrarPantalla11() {
  image(img11, 0, 0);

  //Boton "Inicio"
  boton(width/2, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[2], width/2, height*0.84, tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(300, 71, 310, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[10], 300, 50);
  popStyle();
}

void clickPantalla11() {
  if (clickBoton(width/2, height*0.83) ) {
    //Click en boton PANTALLA 0
    estado = 0;
  }
}
