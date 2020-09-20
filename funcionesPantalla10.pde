//Funciones de pantalla 10

void mostrarPantalla10() {
  image(img10, 0, 0);

  //Boton "Comenzar a pelear!"
  boton(width*0.75, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[14], width*0.75, height*0.83, tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(295, 58, 400, 65, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[9], 300, 50);
  popStyle();
}


void clickPantalla10() {
  if (clickBoton(width*0.75, height*0.83)) {
    //Click en boton PANTALLA 12
    estado = 12;
  }
}
