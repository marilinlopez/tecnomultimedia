PImage fondo;
int cm = 10;  //Cantidad manzanas
Manzana[] m = new Manzana[cm];
Personaje p;

void setup() {
  size(800, 600);
  fondo=loadImage("fondo.png");

  //Instancias de Manzana
  for ( int i = 0; i < m.length; i++ ) {
    m[i] = new Manzana( );
  }
  p=new Personaje();
}
void draw() {
  image(fondo, 0, 0);
  for ( int i = 0; i < m.length; i++ ) {
    m[i].dibujar();
    m[i].actualizar();
  }
  p.dibujar();
}

void keyPressed() {
  p.mover();
}

void mousePressed() {
}
