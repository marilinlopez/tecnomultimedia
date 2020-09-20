//Funciones de pantalla 05

void mostrarPantalla05() {
  image(img05, 0, 0);

  //Boton "Entrenar con Krilin"
  boton(width/4, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[7], width/4, height*0.83, tamFuente);

  //Boton "Hablar con mis amigos"
  boton(width*0.75, height*0.84, anchoBoton, altoBoton, corner);
  textoBoton(boton[8], width*0.75, height*0.84, tamFuente);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(200, 66, 350, 90, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text(texto[4], 200, 50);
  popStyle();
}


void clickPantalla05() {
  if ( clickBoton(width/4, height*0.83)) {
    //Click en boton "Entrenar con Krilin"
    estado = 7;
  } else {
    if ( clickBoton(width*0.75, height*0.84)) {
      //Click en boton "Hablar con mis amigos"
      estado = 6;
    }
  }
}
