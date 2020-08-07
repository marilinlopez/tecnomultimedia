float estado;
PImage img00, img01, img02, img03, img04, img05, img06, img07, img08, img09, img10, img11, img12;
PFont texto; 

void setup() {
  size(800, 600);
  texto = createFont("dragonball.ttf", 32);
  textFont(texto, 15);
  img00=loadImage("00.jpg");
  img01=loadImage("01.jpg");
  img02=loadImage("02.jpg");
  img03=loadImage("03.jpg");
  img04=loadImage("04.jpg");
  img05=loadImage("05.jpg");
  img06=loadImage("06.jpg");
  img07=loadImage("07.jpg");
  img08=loadImage("08.jpg");
  img09=loadImage("09.jpg");
  img10=loadImage("10.jpg");
  img11=loadImage("11.jpg");
  img12=loadImage("12.jpg");
}

void draw() {
  if (estado==0) {
    //pantalla 0
    mostrarPantalla00();
  } else if (estado==1) {
    //pantalla 1
    mostrarPantalla01();
  } else if (estado==2) {
    //pantalla 2
    mostrarPantalla02();
  } else if (estado==3) {
    //pantalla 3
    mostrarPantalla03();
  } else if (estado==4) {
    //pantalla 4
    mostrarPantalla04();
  } else if (estado==5) {
    //pantalla 5
    mostrarPantalla05();
  } else if (estado==6) {
    //pantalla 6
    mostrarPantalla06();
  } else if (estado==7) {
    //pantalla 7
    mostrarPantalla07();
  } else if (estado==8) {
    //pantalla 8
    mostrarPantalla08();
  } else if (estado==9) {
    //pantalla 9
    mostrarPantalla09();
  } else if (estado==10) {
    //pantalla 10
    mostrarPantalla10();
  } else if (estado==11) {
    //pantalla 11
    mostrarPantalla11();
  } else if (estado==12) {
    //pantalla 12
    mostrarPantalla12();
  }
}

void mousePressed() {
  if (estado==0) {
    clickPantalla00();
  } else if ( estado==1 ) {
    //Click en pantalla 1
    clickPantalla01();
  } else if ( estado==2 ) {
    //Click en pantalla 2
    clickPantalla02();
  } else if ( estado==3 ) {
    //Click en pantalla 3
    clickPantalla03();
  } else if ( estado==4 ) {
    //Click en pantalla 4
    clickPantalla04();
  } else if ( estado==5 ) {
    //Click en pantalla 5
    clickPantalla05();
  } else if ( estado==6 ) {
    //Click en pantalla 6
    clickPantalla06();
  } else if ( estado==7 ) {
    //Click en pantalla 7
    clickPantalla07();
  } else if ( estado==8 ) {
    //Click en pantalla 8
    clickPantalla08();
  } else if ( estado==9 ) {
    //Click en pantalla 9
    clickPantalla09();
  } else if ( estado==10 ) {
    //Click en pantalla 10
    clickPantalla10();
  } else if ( estado==11 ) {
    //Click en pantalla 11
    clickPantalla11();
  } else if ( estado==12 ) {
    //Click en pantalla 12
    clickPantalla12();
  }
}
