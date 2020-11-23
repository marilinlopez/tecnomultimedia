class Pantalla {
  PImage img; //Fondo
  Boton[] boton; //Arreglo botones (1 o 2)
  int arch;//Nombre del archivo (numero)
  Historia historia;

  //Constructores
  Pantalla(int arch, Boton boton) { //Pantalla con 1 boton sin historia
    this.arch=arch;
    this.img=loadImage(arch+".jpg");
    this.boton=new Boton[1]; //Arreglo de 1 boton
    this.boton[0]=boton;
    this.historia=new Historia(0, 0, 0, 0, "", 0);
  }

  Pantalla(int arch, Boton boton1, Boton boton2) { //Pantalla con 2 botones sin historia
    this.arch=arch;
    this.img=loadImage(arch+".jpg");
    this.boton=new Boton[2]; //Arreglo de 2 botones
    this.boton[0]=boton1;
    this.boton[1]=boton2;
    this.historia=new Historia(0, 0, 0, 0, "", 0);
  }

  Pantalla(int arch, Boton boton, Historia historia) { //Pantalla con 1 boton e historia
    this.arch=arch;
    this.img=loadImage(arch+".jpg");
    this.boton=new Boton[1]; //Arreglo de 1 boton
    this.boton[0]=boton;
    this.historia=historia;
  }

  Pantalla(int arch, Boton boton1, Boton boton2, Historia historia) { //Pantalla con 2 botones e historia
    this.arch=arch;
    this.img=loadImage(arch+".jpg");
    this.boton=new Boton[2]; //Arreglo de 2 botones
    this.boton[0]=boton1;
    this.boton[1]=boton2;
    this.historia=historia;
  }

  //Funcionalidades
  void mostrarPantalla1() { //Pantallas con 1 boton
    image(img, 0, 0, width, height);//Fondo con ancho y alto de pantalla actual
    historia.dibujar();
    boton[0].dibujar();
  }

  void mostrarPantalla2() { //Pantallas con 2 botones
    image(img, 0, 0, width, height);
    historia.dibujar();
    boton[0].dibujar();
    boton[1].dibujar();
  }

  Boton getBoton1() {//Devuelve boton 1
    return this.boton[0];
  }

  Boton getBoton2() {//Devuelve boton 2
    return this.boton[1];
  }

  Historia getHistoria() {//Devuelve historia
    return this.historia;
  }
}
