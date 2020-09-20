//Funciones de pantalla 02

void mostrarPantalla02() {
  image(img02, 0, 0);

  //Boton "Buscar manzanas"
  boton(width/4, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[3], width/4, height*0.83, tamFuente);

  //Boton "Pescar"
  boton(width*0.75, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[4], width*0.75, height*0.84, tamFuente);

  //Texto historia
  pushStyle(); 
  fill(0, 0, 0, 100);
  noStroke();
  rect(200, 55, 350, 80, 10);
  fill(254, 255, 0, 100);
  textSize(25);
  text(texto[1], 200, 50);
  popStyle();
}

void clickPantalla02() {
  if (clickBoton(width/4, height*0.83)) {
    //Click en boton "Buscar manzanas"
    estado = 3;
  } else {
    if (clickBoton(width*0.75, height*0.83)) {
      //Click en boton "Pescar"
      estado = 4;
    }
  }
}
