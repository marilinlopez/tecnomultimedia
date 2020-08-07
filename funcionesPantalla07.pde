//Funciones de pantalla 07

void mostrarPantalla07() {
  image(img07, 0, 0);

  //Boton pantalla 6
  fill(#F7F714);
  stroke(1);
  rect(200, 500, 100, 50,10);
  fill(0);
  textSize(15);
  text("Volver con \nlos demas", 200, 498);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(150,150,200,150,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("Despues de un rato de entrenamiento vuelven con los demás.", 150,200,200,200);
}


void clickPantalla07() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 6
    estado = 6;
  }
}
