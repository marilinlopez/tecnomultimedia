//Funciones de pantalla 05

void mostrarPantalla05() {
  image(img05, 0, 0);

  //Boton pantalla 7
  stroke(1);
  fill(#F7F714);
  rect(200, 500, 100, 50, 10);
  fill(0);
  textSize(15);
  text("Entrenar con \nKrilin", 200, 498);

  //Boton pantalla 6
  fill(#F7F714);
  rect(600, 500, 100, 50, 10);
  fill(0);
  text("Hablar con \nmis amigos", 600, 498);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(200,66,350,90,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("LLegan a la casa de Roshi y se \nencontraban con él sus amigos \nBulma y Krilin.", 200,50);
}


void clickPantalla05() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 7
    estado = 7;
  }
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 6
    estado = 6;
  }
}
