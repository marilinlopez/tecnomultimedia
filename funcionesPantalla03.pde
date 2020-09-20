//Funciones de pantalla 03

void mostrarPantalla03() {
  image(img03, 0, 0);

  //Boton "Visitar a Roshi"
  boton(width/2, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[5],width/2, height*0.83,tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(690, 145, 180, 205, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[2], 690, 200, 150, 300);
  popStyle();
}

void clickPantalla03() {
  if (clickBoton(width/2, height*0.83)) {
    //Click en boton "Visitar a Roshi"
    estado = 5;
  }
}
