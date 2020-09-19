//Funciones de pantalla 08

void mostrarPantalla08() {
  image(img08, 0, 0);

  //Boton "Negarse a su propuesta"
  boton(width/2, height*0.83, height/6, height/12, 10);
  textoBoton(boton[11], height*0.66, height*0.83);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(500, 71, 565, 100, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Unos minutos después, se presenta ante todos un hombre\n que dice ser 'Raditz', el hermano de Goku, y lo invita\n a que lo acompañe a conquistar el planeta tierra.", 500, 50);  
  popStyle();
}

void clickPantalla08() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 9
    estado = 9;
  }
}
