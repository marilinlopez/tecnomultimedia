//Funciones de pantalla 08

void mostrarPantalla08() {
  image(img08, 0, 0);

  //Boton "Negarse a su propuesta"
  boton(width/2, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[11], width/2, height*0.83, tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(500, 71, 565, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[7], 500, 50);  
  popStyle();
}

void clickPantalla08() {
  if (clickBoton(width/2, height*0.83)) {
    //Click en boton "Negarse a su propuesta"
    estado = 9;
  }
}
