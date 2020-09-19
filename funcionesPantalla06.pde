//Funciones de pantalla 06

void mostrarPantalla06() {
  image(img06, 0, 0);

  // Boton "¿Que era eso?"
  boton(width/2, height*0.83, height/6, height/12, 10);
  textoBoton(boton[9], height*0.67, height*0.84);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(250, 67, 450, 95, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Mientras Goku disfrutaba de estar con sus \namigos, de repente observan un objeto\nextraño en el cielo que se dirigia a la tierra.", 250, 50);
  popStyle();
}

void clickPantalla06() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 8
    estado = 8;
  }
}
