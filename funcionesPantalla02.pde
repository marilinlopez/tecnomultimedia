//Funciones de pantalla 02

void mostrarPantalla02() {
  image(img02, 0, 0);

  //Boton "Buscar manzanas"
  boton(height/3, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[3], height/3, height*0.83);

  //Boton "Pescar"
  boton(height, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[4], height, height*0.84);

  //Texto historia
  pushStyle(); 
  fill(0, 0, 0, 100);
  rect(200, 55, 350, 80, 10);
  fill(254, 255, 0, 100);
  textSize(25);
  text("Goku y su hijo Gohan disfrutaban\n de un hermoso día en el bosque", 200, 50);
  popStyle();
}

void clickPantalla02() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 3
    estado = 3;
  }
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 4
    estado = 4;
  }
}
