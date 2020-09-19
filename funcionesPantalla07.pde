//Funciones de pantalla 07

void mostrarPantalla07() {
  image(img07, 0, 0);

  //Boton "Volver con los demas"
  boton(height/3, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[10], height/3, height*0.83);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(150, 150, 200, 150, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Despues de un rato de entrenamiento vuelven con los demás.", 150, 200, 200, 200);
  popStyle();
}


void clickPantalla07() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 6
    estado = 6;
  }
}
