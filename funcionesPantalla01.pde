//Funciones de la pantalla 01
int py;

void mostrarPantalla01() {
  image(img01, 0, 0);

  pushStyle(); 
  //creditos
  fill(242, 242, 24);
  textAlign(LEFT);
  textSize(20);
  text(texto[0], 50, py);
  py++;
  popStyle();

  //Boton "Inicio"
  boton(width/2, height*0.83, anchoBoton, altoBoton, corner);
  textoBoton("Inicio", width/2, height*0.84,tamFuente);
}

void clickPantalla01() {
  if (clickBoton(width/2, height*0.83)) {
    //Click en boton "Inicio"
    py=0;
    estado = 0;
  }
} 
