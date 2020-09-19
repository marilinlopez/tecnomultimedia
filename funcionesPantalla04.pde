//Funciones de pantalla 04

void mostrarPantalla04() {
  image(img04, 0, 0);

  //Boton "Visitar a Roshi"
  boton(height/3, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[5], height/3, height*0.83);

  //Boton "Volver al bosque"
  boton(height, height*0.84, anchoBoton, altoBoton, corner);
  textoBoton(boton[6], height, height*0.84);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(618, 68, 355, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Deciden ir al lago a pescar...\n Luego de pescar un rato, se sientan \na cocinar en la fogata.", 620, 50);
  popStyle();
}


void clickPantalla04() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 5
    estado = 5;
  }
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton EMPEZAR
    estado = 2;
  }
}
