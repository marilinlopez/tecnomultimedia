//Funciones de pantalla 12

void mostrarPantalla12() {
  image(img12, 0, 0);

  //Boton "Inicio"
  boton(width*0.75, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[2], width*0.75, height*0.84, tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(200, 70, 300, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[11], 200, 50);
  popStyle();
}

void clickPantalla12() {
  if (clickBoton(width*0.75, height*0.83)) {
    //Click en boton PANTALLA 0
    estado = 0;
  }
}
