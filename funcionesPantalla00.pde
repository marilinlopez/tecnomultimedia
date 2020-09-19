//Funciones de la pantalla 00

void mostrarPantalla00() {
  image(img00, 0, 0);

  //Boton "Creditos"
  boton(height/3, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[0], height/3, height*0.84);

  //Boton "Empezar"
  boton(width/2, height*0.83, height/6, height/12, 10);
  textoBoton(boton[1], width/2, height*0.84);
}

void clickPantalla00() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton CREDITOS
    estado = 1;
  }
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton EMPEZAR
    estado = 2;
  }
}
