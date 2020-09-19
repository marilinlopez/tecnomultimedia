//Funciones de pantalla 11

void mostrarPantalla11() {
  image(img11, 0, 0);

  //Boton "Inicio"
  boton(width/2, height*0.83, height/6, height/12, 10);
  textoBoton(boton[2], height*0.67, height*0.84);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(300, 71, 310, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Luego del enfrentamiendo...\n Goku es derrotado y Raditz\n se lleva con él a Gohan.", 300, 50);
  popStyle();
}


void clickPantalla11() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 0
    estado = 0;
  }
}
