//Funciones de pantalla 09

void mostrarPantalla09() {
  image(img09, 0, 0);

  //Boton pantalla 11
  fill(#F7F714);
  stroke(1);
  rect(200, 500, 100, 50, 10);
  fill(0);
  textSize(15);
  text("Enfrentar a\n Raditz", 200, 498);

  //Boton pantalla 10
  fill(#F7F714);
  rect(600, 500, 100, 50, 10);
  fill(0);
  text("Pedir ayuda \na Pikoro", 600, 498);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(560,71,330,100,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("Goku se niega a su propuesta...\n Entonces Raditz le dice que se\nva a llevar a Gohan con él.", 560,50);
}


void clickPantalla09() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 11
    estado = 11;
  }
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 10
    estado = 10;
  }
}
