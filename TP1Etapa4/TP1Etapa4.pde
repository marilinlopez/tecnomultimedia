import oscP5.*;
OscP5 osc;
float amp, pitch;
Boolean haySonido=false;
int signo=-1; //Signo de direccion de caminantes

//------------------------Calibración

float MAX_AMP=92;
float MIN_AMP=40;

float fAmortiguacion = 0.9;
float GRADO_VARIACION =1;

//-------------------------------------

GestorSenial gAmp;
GestorSenial gPitch;

float nuevaVarAng;

int r;

PGraphics pg;

Caminante c1;
Caminante c2;

void setup() {
  size(800, 600);
  pg = createGraphics(800, 600);
  pg.beginDraw();
  pg.background(255);
  pg.endDraw();

  osc=new OscP5(this, 12345); 

  c1=new Caminante(0, 0);
  c2=new Caminante(width, 180);

  gAmp = new GestorSenial(MIN_AMP, MAX_AMP, fAmortiguacion);

  r = (int)random(1, 2.9);
}

void draw() {
  background(255);
  pg.beginDraw();

  if (r==1) {
    println("Tridimensional");
  } else {
    println("Bidimensional");
  }

  gAmp.actualizar(amp);

  haySonido=gAmp.filtradoNorm() > 0;

  if (!c1.finalizo() && r==1) {

    if (haySonido) {
      c1.setEstado("curva");
      c2.setEstado("curva");
    } else {
      c1.setEstado("recta");
      c2.setEstado("recta");
    }

    c1.limites1();
    c1.actualizar(signo);    
    c1.dibujar();

    c2.limites2();
    c2.actualizar(-signo);
    c2.dibujar();
  } else if (!c1.finalizo() && r==2) {

    if (haySonido) {
      c1.setEstado("curva");
      c2.setEstado("curva");
    } else {
      c1.setEstado("recta");
      c2.setEstado("recta");
    }

    c1.limites3();
    c1.actualizar(-signo);    
    c1.dibujar2(-signo);

    c2.actualizar(signo);
    c2.dibujar2(signo);
  }
  pg.endDraw();
  image(pg, 0, 0);
}

void oscEvent(OscMessage mensaje) {
  if (mensaje.addrPattern().equals("/amp")) {
    amp= mensaje.get(0).floatValue();
  }
}
