//Funciones de pantalla 07

void mostrarPantalla07() {
  image(img07, 0, 0);

  //Boton "Volver con los demas"
  boton(width/4, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[10], width/4, height*0.83, tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(150, 150, 200, 150, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[6], 150, 200, 200, 200);
  popStyle();
}

void clickPantalla07() {
  if (clickBoton(width/4, height*0.83)) {
    //Click en boton "Volver con los demas"
    estado = 6;
  }
}
