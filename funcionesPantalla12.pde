//Funciones de pantalla 12

void mostrarPantalla12() {
  image(img12, 0, 0);

  //Boton pantalla 0
  fill(#F7F714);
  stroke(1);
  rect(600, 500, 100, 50,10);
  fill(0);
  textSize(15);
  text("Volver a inicio",600, 505);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(200,70,300,100,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("Ambos logran derrotarlo...\nOtra vez Goku y sus amigos\n han salvado el planeta!.", 200,50);
}

void clickPantalla12() {
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 0
    estado = 0;
  }
}
