//Funciones de pantalla 09

void mostrarPantalla09() {
  image(img09, 0, 0);

  //Boton "Enfrentar a Raditz"
  boton(width/4, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[12], width/4, height*0.83, tamFuente);

  //Boton "Pedir ayuda a Piccoro"
  boton(width*0.75, height*0.84, anchoBoton, altoBoton, corner);
  textoBoton(boton[13], width*0.75, height*0.84, tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(560, 71, 330, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[8], 560, 50);
  popStyle();
}


void clickPantalla09() {
  if (clickBoton(width/4, height*0.83)) {
    //Click en boton PANTALLA 11
    estado = 11;
  } else {
    if (clickBoton(width*0.75, height*0.84)) {
      //Click en boton PANTALLA 10
      estado = 10;
    }
  }
}
