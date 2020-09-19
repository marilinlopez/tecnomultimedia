//Funciones de pantalla 10

void mostrarPantalla10() {
  image(img10, 0, 0);

  //Boton "Comenzar a pelear!"
  boton(height,height*0.83, anchoBoton, altoBoton, corner);
  textoBoton(boton[14], height, height*0.83);

  //Texto historia
  pushStyle();
  fill(0, 0, 0, 100);
  noStroke();
  rect(295, 58, 400, 65, 10);
  fill(254, 255, 0, 120);
  textSize(25);
  text("Goku llama a Piccoro usando su tecnica \ntelepatica y él viene en su ayuda.", 300, 50);
  popStyle();
}


void clickPantalla10() {
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 12
    estado = 12;
  }
}
