float estado;
PImage img00, img01, img02, img03, img04, img05, img06, img07, img08, img09, img10, img11, img12;
PFont fuente; 
float corner, altoBoton, anchoBoton;
float tamFuente;
String[] boton;
String[] texto;

void setup() {
  size(800, 600);
  surface.setResizable(true);

  //Texto creditos e historia
  texto=new String[12];
  texto[0]="Tecnologia Multimedia\nAlumno:       Lopez,Marilin\nProfesor:    José Luis Bugiolachi\nAño:             2020";
  texto[1]="Goku y su hijo Gohan disfrutaban\n de un hermoso día en el bosque";
  texto[2]="Luego de juntar algunas manzanas, se dirigen a visitar al maestro de Goku, Roshi.";
  texto[3]="Deciden ir al lago a pescar...\n Luego de pescar un rato, se sientan \na cocinar en la fogata.";
  texto[4]="LLegan a la casa de Roshi y se \nencontraban con él sus amigos \nBulma y Krilin.";
  texto[5]="Mientras Goku disfrutaba de estar con sus \namigos, de repente observan un objeto\nextraño en el cielo que se dirigia a la tierra.";
  texto[6]="Despues de un rato de entrenamiento vuelven con los demás.";
  texto[7]="Unos minutos después, se presenta ante todos un hombre\n que dice ser 'Raditz', el hermano de Goku, y lo invita\n a que lo acompañe a conquistar el planeta tierra.";
  texto[8]="Goku se niega a su propuesta...\n Entonces Raditz le dice que se\nva a llevar a Gohan con él.";
  texto[9]="Goku llama a Piccoro usando su tecnica \ntelepatica y él viene en su ayuda.";
  texto[10]="Luego del enfrentamiendo...\n Goku es derrotado y Raditz\n se lleva con él a Gohan.";
  texto[11]="Ambos logran derrotarlo...\nOtra vez Goku y sus amigos\n han salvado el planeta!.";

  //Texto en botones
  boton=new String[15];
  boton[0]="Creditos";
  boton[1]="Empezar";
  boton[2]="Inicio";
  boton[3]="Buscar \nmanzanas";
  boton[4]="Pescar";
  boton[5]="Visitar a \nRoshi";
  boton[6]="Volver al \nbosque";
  boton[7]="Entrenar con \nKrilin";
  boton[8]="Hablar con \nmis amigos";
  boton[9]="¿Qué era eso?";
  boton[10]="Volver con \nlos demas";
  boton[11]="Negarse a \nsu propuesta";
  boton[12]="Enfrentar a\n Raditz";
  boton[13]="Pedir ayuda \na Pikoro";
  boton[14]="Comenzar a\n pelear!";

  fuente = createFont("dragonball.ttf", 32);
  textFont(fuente, 15);
  rectMode(CENTER);
  textAlign(CENTER);
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
  //Propiedades botones
  anchoBoton=width/8;
  altoBoton=height/12;
  corner=10;
  
  //Tamaño fuente
  tamFuente=height*0.025;

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
