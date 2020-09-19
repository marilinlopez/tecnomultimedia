//Funciones de pantalla 09

void mostrarPantalla09() {
  image(img09, 0, 0);

  //Boton "Enfrentar a Raditz"
  boton(height/3, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[12], height/3, height*0.83);

  //Boton "Pedir ayuda a Piccoro"
  boton(height, height*0.84, anchoBoton, altoBoton, corner);
  textoBoton(boton[13], height, height*0.84);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(560, 71, 330, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Goku se niega a su propuesta...\n Entonces Raditz le dice que se\nva a llevar a Gohan con él.", 560, 50);
  popStyle();
}


void clickPantalla09() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 11
    estado = 11;
  }
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 10
    estado = 10;
  }
}
