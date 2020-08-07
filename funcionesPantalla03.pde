//Funciones de pantalla 03

void mostrarPantalla03() {
  image(img03, 0, 0);

  //Boton pantalla 03
  fill(#F7F714);
  stroke(1);
  rect(400, 500, 100, 50,10);
  fill(0);
  textSize(15);
  text("Visitar a \nRoshi", 400, 500);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(690,145,180,205,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("Luego de juntar algunas manzanas, se dirigen a visitar al maestro de Goku, Roshi.", 690,200,150,300);
}


void clickPantalla03() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 5
    estado = 5;
  }
}
