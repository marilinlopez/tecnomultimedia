class Aventura {
  //Atributos
  int corner=10;//Borde rectangulos
  int estado;//Estado actual aventura
  PFont fuente; 
  Juego juego;
  float tam, tam2;//Tamaños textos 


  int anchoBoton=100, altoBoton=50;//Alto y ancho boton
  float yb=500;//Altura en y botones

  Historia[] historia; //Arreglo historias
  int ch=11; //Cantidad historias

  Boton[] boton; //Arreglo botones 
  int cb=18; //Cantidad de botones

  Pantalla[] pantalla; //Arreglo pantallas
  int cp=13; //Cantidad de pantallas

  String creditos=new String("Tecnologia Multimedia\nAlumno:       Lopez,Marilin\nProfesor:    José Luis Bugiolachi\nAño:             2020");//Texto creditos
  int py;//Posicion texto creditos

  SoundFile[] sounds;
  int cs=5;//Cantidad sonidos

  Resizable resizable;

  //Constructor
  Aventura() {
    estado=0;//Estado incial
    tam=17;//Tamaño texto inicial botones
    tam2=23;//Tamaño texto inicial historias
    surface.setResizable(true);
    resizable=new Resizable(800, 600);

    juego=new Juego();

    //Fuente
    fuente = createFont("dragonball.ttf", 32);
    textFont(fuente, tam);
    rectMode(CENTER);
    textAlign(CENTER, CENTER);

    //Sonidos
    sounds=new SoundFile[cs];
    sounds[0]=new SoundFile(tpfinal.this, "tema0.mp3"); //Pantalla 0 y 1
    sounds[1]=new SoundFile(tpfinal.this, "tema1.mp3"); 
    sounds[2]=new SoundFile(tpfinal.this, "tema2.mp3"); 

    sounds[0].play();

    //Botones
    boton=new Boton[cb];
    boton[0]=new Boton(width/4, yb, "Creditos", tam);//Boton 1 pantalla 0
    boton[1]=new Boton(width/2, yb, "Empezar", tam);//Boton 2 pantalla 0
    boton[2]=new Boton(500, yb, "Inicio", tam);//Boton 1 pantalla 1
    boton[3]=new Boton(width/4, yb, "Buscar \nmanzanas", tam);//Boton 1 pantalla 2
    boton[4]=new Boton(width*0.75, yb, "Pescar", tam);//Boton 2 pantalla 2
    boton[5]=new Boton(width/2, yb, "Visitar a \nRoshi", tam);//Boton 1 pantalla 3
    boton[6]=new Boton(width/4, yb, "Visitar a \nRoshi", tam);//Boton 1 pantalla 4
    boton[7]=new Boton(width*0.75, yb, "Volver al \nbosque", tam);//Boton 2 pantalla 4
    boton[8]=new Boton(width/4, yb, "Entrenar con \nKrilin", tam);//Boton 1 pantalla 5
    boton[9]=new Boton(width*0.75, yb, "Hablar con \nmis amigos", tam);//Boton 2 pantalla 5
    boton[10]=new Boton(width/2, yb, "¿Qué era eso?", tam);//Boton 1 pantalla 6
    boton[11]=new Boton(width/4, yb, "Volver con \nlos demas", tam);//Boton 1 pantalla 7
    boton[12]=new Boton(width/2, yb, "Negarse a \nsu propuesta", tam);//Boton 1 pantalla 8
    boton[13]=new Boton(width/4, yb, "Enfrentar a\n Raditz", tam);//Boton 1 pantalla 9
    boton[14]=new Boton(width*0.75, yb, "Unir fuerzas \ncon Pikkoro", tam);//Boton 2 pantalla 9
    boton[15]=new Boton(width*0.75, yb, "Comenzar a\n pelear!", tam);//Boton 1 pantalla 10
    boton[16]=new Boton(width*0.75, yb, "Inicio", tam);//Boton 1 pantalla 11
    boton[17]=new Boton(width*0.75, yb, "Inicio", tam);//Boton 1 pantalla 12

    //Historias
    historia=new Historia[ch];
    historia[0]=new Historia(210, 60, 390, 100, "Goku y su hijo Gohan disfrutaban de\n un hermoso día en el bosque antes de\n ir a visitar al maestro de Goku, Roshi.", tam2);
    historia[1]=new Historia(690, 145, 180, 205, "Luego de \njuntar algunas \nmanzanas, se \ndirigen a\nvisitar al \nmaestro \nRoshi.", tam2);
    historia[2]=new Historia(650, 85, 250, 150, "Deciden ir al \nlago a pescar...\n Luego de pescar un\n rato, se sientan a \ncocinar en la fogata.", tam2);
    historia[3]=new Historia(200, 70, 350, 90, "Llegan a Kame House, la casa de \nRoshi, en donde se encontraban\nademas sus amigos Bulma y Krilin.", tam2);
    historia[4]=new Historia(250, 70, 450, 95, "Mientras Goku disfrutaba de estar con sus \namigos, de repente observan un objeto\nextraño en el cielo que se dirigia a la tierra.", tam2);
    historia[5]=new Historia(150, 150, 200, 150, "Despues de\n un rato de \nentrenamiento\n vuelven con \nlos demás.", tam2);
    historia[6]=new Historia(300, 90, 565, 150, "Un misterioso guerrero arriba a Kame House, en donde \nrevela que su nombre es Raditz, que pertenece a la\n raza guerrera de los Saiyajin y que Goku es su hermano.\nRaditz persuade a Goku para que se una a los de su \nraza y juntos apoderarse del planeta tierra.", tam2);
    historia[7]=new Historia(560, 70, 330, 100, "Goku se niega a su propuesta...\n Raditz enojado amenaza con \nllevarse a Gohan.", tam2);
    historia[8]=new Historia(350, 50, 400, 65, "Pikkoro llega a Kame House siguiendo\n el ki maligno de Raditz.", tam2);
    historia[9]=new Historia(300, 70, 310, 100, "Luego del enfrentamiendo...\n Goku es derrotado y Raditz\nse lleva con él a Gohan.", tam2);
    historia[10]=new Historia(200, 70, 300, 100, "Ambos logran derrotarlo...\nOtra vez Goku y sus amigos\n han salvado el planeta!.", tam2);

    //Pantallas
    pantalla=new Pantalla[cp];
    pantalla[0]=new Pantalla(0, boton[0], boton[1]); 
    pantalla[1]=new Pantalla(1, boton[2]);
    pantalla[2]=new Pantalla(2, boton[3], boton[4], historia[0]);
    pantalla[3]=new Pantalla(3, boton[5], historia[1]);
    pantalla[4]=new Pantalla(4, boton[6], boton[7], historia[2]);
    pantalla[5]=new Pantalla(5, boton[8], boton[9], historia[3]);
    pantalla[6]=new Pantalla(6, boton[10], historia[4]);
    pantalla[7]=new Pantalla(7, boton[11], historia[5]);
    pantalla[8]=new Pantalla(8, boton[12], historia[6]);
    pantalla[9]=new Pantalla(9, boton[13], boton[14], historia[7]);
    pantalla[10]=new Pantalla(10, boton[15], historia[8]);
    pantalla[11]=new Pantalla(11, boton[16], historia[9]);
    pantalla[12]=new Pantalla(12, boton[17], historia[10]);
  }

  //Funcionalidades
  void creditos(float tam2) {//Texto creditos
    pushStyle(); 
    //creditos
    fill(242, 242, 24);
    textAlign(LEFT);
    textSize(tam2);
    text(creditos, 50, py);
    py++;
    popStyle();
  }

  void dibujar() {
    //Tamaño fuente botones
    tam=resizable.resy(17);
    tam=resizable.resx(17);
    //Tamaño fuente historias
    tam2=resizable.resy(23);
    tam2=resizable.resx(23);

    switch(estado) {
    case 0: 
      pantalla[0].getBoton1().actualizar(resizable.resx(200), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[0].getBoton2().actualizar(resizable.resx(400), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[0].mostrarPantalla2(); 
      break;
    case 1: 
      pantalla[1].getBoton1().actualizar(resizable.resx(500), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[1].mostrarPantalla1(); 
      creditos(tam2);
      break;
    case 2:
      pantalla[2].getBoton1().actualizar(resizable.resx(200), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[2].getBoton2().actualizar(resizable.resx(600), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[2].getHistoria().actualizar(resizable.resx(210), resizable.resy(60), resizable.resx(390), resizable.resy(100), tam2);
      pantalla[2].mostrarPantalla2(); 
      break;
    case 3: 
      pantalla[3].getBoton1().actualizar(resizable.resx(400), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[3].getHistoria().actualizar(resizable.resx(690), resizable.resy(145), resizable.resx(180), resizable.resy(205), tam2);
      pantalla[3].mostrarPantalla1(); 
      break;
    case 4: 
      pantalla[4].getBoton1().actualizar(resizable.resx(200), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[4].getBoton2().actualizar(resizable.resx(600), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[4].getHistoria().actualizar(resizable.resx(650), resizable.resy(85), resizable.resx(250), resizable.resy(150), tam2);
      pantalla[4].mostrarPantalla2(); 
      break;
    case 5:  
      pantalla[5].getBoton1().actualizar(resizable.resx(200), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[5].getBoton2().actualizar(resizable.resx(600), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[5].getHistoria().actualizar(resizable.resx(200), resizable.resy(70), resizable.resx(350), resizable.resy(90), tam2);
      pantalla[5].mostrarPantalla2(); 
      break;
    case 6: 
      pantalla[6].getBoton1().actualizar(resizable.resx(400), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[6].getHistoria().actualizar(resizable.resx(250), resizable.resy(70), resizable.resx(450), resizable.resy(95), tam2);
      pantalla[6].mostrarPantalla1(); 
      break;
    case 7: 
      pantalla[7].getBoton1().actualizar(resizable.resx(400), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[7].getHistoria().actualizar(resizable.resx(150), resizable.resy(150), resizable.resx(200), resizable.resy(150), tam2);   
      pantalla[7].mostrarPantalla1(); 
      break;
    case 8: 
      pantalla[8].getBoton1().actualizar(resizable.resx(400), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[8].getHistoria().actualizar(resizable.resx(300), resizable.resy(90), resizable.resx(565), resizable.resy(150), tam2);
      pantalla[8].mostrarPantalla1(); 
      break;
    case 9: 
      pantalla[9].getBoton1().actualizar(resizable.resx(200), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[9].getBoton2().actualizar(resizable.resx(600), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[9].getHistoria().actualizar(resizable.resx(560), resizable.resy(70), resizable.resx(330), resizable.resy(100), tam2);
      pantalla[9].mostrarPantalla2(); 
      break;
    case 10: 
      pantalla[10].getBoton1().actualizar(resizable.resx(400), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[10].getHistoria().actualizar(resizable.resx(350), resizable.resy(50), resizable.resx(400), resizable.resy(65), tam2);
      pantalla[10].mostrarPantalla1(); 
      break;
    case 11: 
      pantalla[11].getBoton1().actualizar(resizable.resx(400), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[11].getHistoria().actualizar(resizable.resx(300), resizable.resy(70), resizable.resx(310), resizable.resy(100), tam2);
      pantalla[11].mostrarPantalla1(); 
      break;
    case 12: 
      pantalla[12].getBoton1().actualizar(resizable.resx(400), resizable.resy(yb), resizable.resx(anchoBoton), resizable.resy(altoBoton), tam);
      pantalla[12].getHistoria().actualizar(resizable.resx(200), resizable.resy(70), resizable.resx(300), resizable.resy(100), tam2);
      pantalla[12].mostrarPantalla1(); 
      break;
    case 13: 
      juego.dibujar(); 
      if (keyPressed) {
        juego.teclado(keyCode);
      }
      break;
    }
  }

  void click() {
    switch(estado) {
    case 0: 
      if (pantalla[0].getBoton1().click()) {//Click en boton "Creditos"
        estado = 1;
      } else {
        if (pantalla[0].getBoton2().click()) {//Click en boton "Empezar"
          sounds[0].stop();
          sounds[1].play();
          estado = 2;
        }
      }
      break;
    case 1:
      if (pantalla[1].getBoton1().click()) {//Click en boton "Inicio"
        this.py=0;//Reinicio posicion de texto creditos
        estado = 0;
      }
      break;
    case 2:
      if (pantalla[2].getBoton1().click()) {//Click en boton "Buscar manzanas" (Juego)
        estado = 13;
      } else {
        if (pantalla[2].getBoton2().click()) {//Click en boton "Pescar"
          estado = 4;
        }
      }
      break;
    case 3: 
      juego.click();
      if (pantalla[3].getBoton1().click()) {//Click en boton "Visitar a Roshi"
        estado = 5;
      }
      break;
    case 4: 
      if (pantalla[4].getBoton1().click()) {//Click en boton "Visitar a Roshi"
        estado = 5;
      } else {
        if (pantalla[4].getBoton2().click()) { //Click en boton "Volver al bosque"
          estado = 2;
        }
      }
      break;
    case 5: 
      if (pantalla[5].getBoton1().click()) {//Click en boton "Entrenar con Krilin"
        estado = 7;
      } else {
        if (pantalla[5].getBoton2().click()) {//Click en boton "Hablar con mis amigos"
          estado = 6;
        }
      }
      break;
    case 6: 
      if (pantalla[6].getBoton1().click()) {//Click en boton "¿Que era eso?"
        sounds[1].stop();
        sounds[2].play();
        estado = 8;
      }
      break;
    case 7: 
      if (pantalla[7].getBoton1().click()) {//Click en boton "Volver con los demas"
        estado = 6;
      }
      break;
    case 8: 
      if (pantalla[8].getBoton1().click()) {//Click en boton "Negarse a su propuesta"
        estado = 9;
      }
      break;
    case 9: 
      if (pantalla[9].getBoton1().click()) { //Click en boton "Enfrentar a Raditz"
        estado = 11;
      } else {
        if (pantalla[9].getBoton2().click()) {//Click en boton "Pedir ayuda a Pikkoro"
          estado = 10;
        }
      }
      break;
    case 10: 
      if (pantalla[10].getBoton1().click()) {//Click en boton "Comenzar a pelear!"
        estado = 12;
      }
      break;
    case 11: 
      if (pantalla[11].getBoton1().click()) {//Click en boton "Inicio"
        sounds[2].stop();
        sounds[0].play();
        estado = 0;
      }
      break;
    case 12: 
      if (pantalla[12].getBoton1().click()) {//Click en boton "Inicio"
        sounds[2].stop();
        sounds[0].play();
        estado = 0;
      }
      break;
    case 13:      
      if (juego.getContador().ganar()) {//Si gana cambia estado
        juego.reiniciar();//Reiniciar juego
        estado = 3; //Cambia estado a pantalla 3
      }
      juego.click();
      break;
    }
  }
}
