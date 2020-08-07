//Funciones de la pantalla 01
int py;

void mostrarPantalla01() {
  image(img01, 0, 0);

  //creditos
  fill(242, 242, 24);
  textAlign(LEFT);
  textSize(20);
  text("Tecnologia Multimedia\nAlumno:       Lopez,Marilin\nProfesor:    José Luis Bugiolachi\nAño:             2020", 50, py);
  py++;

  //Boton INICIO
  fill(#F7F714);
  rect(400, 500, 100, 50, 10);
  fill(0);
  textAlign(CENTER);
  textSize(15);
  text("Inicio", 400, 505);
}

void clickPantalla01() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton INICIO
    py=0;
    estado = 0;
  }
} 
