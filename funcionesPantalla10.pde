//Funciones de pantalla 10

void mostrarPantalla10() {
  image(img10, 0, 0);

  //Boton pantalla 12
  fill(#F7F714);
  stroke(1);
  rect(650, 500, 100, 50,10);
  fill(0);
  textSize(15);
  text("Comenzar a\n pelear!", 650, 500);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(295,58,400,65,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("Goku llama a Pikoro usando su tecnica \ntelepatica y él viene en su ayuda.", 300,50);
}


void clickPantalla10() {
  if ( mouseX>650-50 && mouseX<650+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 12
    estado = 12;
  }
}
