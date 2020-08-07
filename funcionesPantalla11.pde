//Funciones de pantalla 11

void mostrarPantalla11() {
  image(img11, 0, 0);

  //Boton pantalla 0
  fill(#F7F714);
  stroke(1);
  rect(400, 500, 100, 50,10);
  fill(0);
  textSize(15);
  text("Volver a inicio", 400, 505);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(300,71,310,100,10);
  fill(254, 255,0, 120);;
  textSize(25);
  text("Luego del enfrentamiendo...\n Goku es derrotado y Raditz\n se lleva con él a Gohan.", 300,50);

}


void clickPantalla11() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 0
    estado = 0;
  }
}
