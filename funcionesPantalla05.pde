//Funciones de pantalla 05

void mostrarPantalla05() {
  image(img05, 0, 0);

  //Boton "Entrenar con Krilin"
  boton(height/3, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[7], height/3, height*0.83);

  //Boton "Hablar con mis amigos"
  boton(height, height*0.84, anchoBoton, altoBoton, corner);
  textoBoton(boton[8], height, height*0.84);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(200, 66, 350, 90, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("LLegan a la casa de Roshi y se \nencontraban con él sus amigos \nBulma y Krilin.", 200, 50);
  popStyle();
}


void clickPantalla05() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 7
    estado = 7;
  }
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 6
    estado = 6;
  }
}
