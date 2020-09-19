//Funciones de la pantalla 01
int py;

void mostrarPantalla01() {
  image(img01, 0, 0);
  
  pushStyle(); 
  //creditos
  fill(242, 242, 24);
  textAlign(LEFT);
  textSize(20);
  text("Tecnologia Multimedia\nAlumno:       Lopez,Marilin\nProfesor:    José Luis Bugiolachi\nAño:             2020", 50, py);
  py++;
  popStyle();
  
  //Boton "Inicio"
  boton(width/2, height*0.83, height/6, height/12, 10);
  textoBoton("Inicio", height*0.66, height*0.84);
}

void clickPantalla01() {
  if ( mouseX>400-50 && mouseX<400+50 && mouseY>500-25 && mouseY<500+25 ) {
    //Click en boton INICIO
    py=0;
    estado = 0;
  }
} 
