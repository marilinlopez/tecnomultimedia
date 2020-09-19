//Funciones de pantalla 12

void mostrarPantalla12() {
  image(img12, 0, 0);

  //Boton "Inicio"
  boton(height, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[2], height, height*0.84);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(200, 70, 300, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Ambos logran derrotarlo...\nOtra vez Goku y sus amigos\n han salvado el planeta!.", 200, 50);
  popStyle();
}

void clickPantalla12() {
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 0
    estado = 0;
  }
}
