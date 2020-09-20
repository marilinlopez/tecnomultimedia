//Funciones de pantalla 04

void mostrarPantalla04() {
  image(img04, 0, 0);

  //Boton "Visitar a Roshi"
  boton(width/4, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[5], width/4, height*0.83, tamFuente);

  //Boton "Volver al bosque"
  boton(width*0.75, height*0.84, anchoBoton, altoBoton, corner);
  textoBoton(boton[6], width*0.75, height*0.84, tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(618, 68, 355, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[3], 620, 50);
  popStyle();
}


void clickPantalla04() {
  if (clickBoton(width/4, height*0.83) ) {
    //Click en boton "Visitar a Roshi"
    estado = 5;
  } else {
    if (clickBoton(width*0.75, height*0.84)) {
      //Click en boton "Volver al bosque"
      estado = 2;
    }
  }
}
