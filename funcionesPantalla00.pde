//Funciones de la pantalla 00

void mostrarPantalla00() {
  image(img00, 0, 0);

  //Boton "Creditos"
  boton(width/4, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[0], width/4, height*0.84,tamFuente);

  //Boton "Empezar"
  boton(width/2, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[1], width/2, height*0.84,tamFuente);
}

void clickPantalla00() {
  if (clickBoton(width/4, height*0.83)) {
    //Click en boton "Creditos"
    estado = 1;
  } else {
    if (clickBoton(width/2, height*0.83)) {
      //Click en boton "Empezar"
      estado = 2;
    }
  }
}
