//Funciones de pantalla 06

void mostrarPantalla06() {
  image(img06, 0, 0);

  //Boton pantalla 8
  fill(#F7F714);
  stroke(1);
  rect(400, 500, 100, 50,10);
  fill(0);
  textSize(15);
  text("¿Qué era eso?", 400, 505);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(250,67,450,95,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("Mientras Goku disfrutaba de estar con sus \namigos, de repente observan un objeto\nextraño en el cielo que se dirigia a la tierra.", 250,50);
}

void clickPantalla06() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 8
    estado = 8;
  }
}
