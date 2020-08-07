//Funciones de pantalla 04

void mostrarPantalla04() {
  image(img04, 0, 0);

  //Boton pantalla 5
  fill(#F7F714);
  stroke(1);
  rect(200, 500, 100, 50, 10);
  fill(0);
  textSize(15);
  text("Visitar a \nRoshi", 200, 498);

  //Boton EMPEZAR
  fill(#F7F714);
  rect(600, 500, 100, 50, 10);
  fill(0);
  text("Volver al \nbosque", 600, 498);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(618,68,355,100,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("Deciden ir al lago a pescar...\n Luego de pescar un rato, se sientan \na cocinar en la fogata.", 620,50);
}


void clickPantalla04() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 5
    estado = 5;
  }
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton EMPEZAR
    estado = 2;
  }
}
