//Funciones de pantalla 02

void mostrarPantalla02() {
   image(img02, 0, 0);
   
  //Boton pantalla 3
  fill(#F7F714);
  stroke(1);
  rect(200, 500, 100, 50,10);
  fill(0);
  textSize(15);
  text("Buscar \nmanzanas", 200, 498);

  //Boton pantalla 4
  fill(#F7F714);
  rect(600, 500, 100, 50,10);
  fill(0);
  text("Pescar", 600, 505);
  
  //Texto historia
  fill(0, 0,0, 100);
  noStroke();
  rect(200,55,350,80,10);
  fill(254, 255,0, 100);
  textSize(25);
  text("Goku y su hijo Gohan disfrutaban\n de un hermoso día en el bosque", 200,50); 
}

void clickPantalla02() {
  if ( mouseX>200-50 && mouseX<200+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 3
    estado = 3;
  }
  if ( mouseX>600-50 && mouseX<600+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton PANTALLA 4
    estado = 4;
  }
}
