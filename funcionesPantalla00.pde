//Funciones de la pantalla 00

void mostrarPantalla00() {
  image(img00, 0, 0);

  rectMode(CENTER);
  textAlign(CENTER);

  //Boton CREDITOS
  fill(#F7F714);
  stroke(1);
  strokeWeight(2);
  textSize(15);
  rect(200, 500, 100, 50, 10);
  fill(0);
  text("Creditos", 200, 505);

  //Boton EMPEZAR
  fill(#F7F714);
  rect(400, 500, 100, 50,10);
  fill(0);
  text("Empezar", 400, 505);
   
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
