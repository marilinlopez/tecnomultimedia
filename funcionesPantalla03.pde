//Funciones de pantalla 03

void mostrarPantalla03() {
  image(img03, 0, 0);

  //Boton "Visitar a Roshi"
  boton(width/2, height*0.83, height/6, height/12, 10);
  textoBoton(boton[5],height*0.66, height*0.83);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(690, 145, 180, 205, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Luego de juntar algunas manzanas, se dirigen a visitar al maestro de Goku, Roshi.", 690, 200, 150, 300);
  popStyle();
}


void clickPantalla03() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 5
    estado = 5;
  }
}
