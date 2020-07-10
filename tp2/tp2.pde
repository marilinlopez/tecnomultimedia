float pxr1, pyr1, pxr2, pyr2;
float velr1=0.50, velr2=0.25;
float px=-500, py=800,pxPro=2100;
//texto hgfghf
PFont fuente;
int opaco=255;
float vel=1;

//imagen
PImage img1, img2; 
float pximg1;

void setup() {
  size(1024, 700);
  //cargo tipografia e imagenes
  fuente=loadFont("CheltenhamCondBold-100.vlw");
  img2=loadImage("img2.jpg");
  textFont(fuente);
}

void draw() {
  background(0);
  image(img2, pximg1, 100);
  fill(0);
  rect(pxr1, pyr1, width, height);
  rect(pxr2, pyr2, width, height);
  creadores();
  musica();
  produccion();
  direccion();
  titulo();
  pxr1+=velr1;
  pyr2-=velr2;
  opaco--;
  pxPro-=vel;
  px+=vel;
  py-=vel;
}

void creadores() {
  //texto
  textSize(30);
  fill(134, 103, 57, opaco);
  textAlign(LEFT);
  text("planned by              SUNRISE, INC.", width/2, height/5);
  text("original concept      HAJIME YADATE", width/2, height/4);
}

void musica() {
  textSize(30);
  textAlign(LEFT);
  fill(134, 103, 57, opaco+300);
  text("opening theme song \n                       TANK! \nmusic by          YOKO KANNO \nperformed by   SEATBELTS", width-400, py);
}

void direccion() {
  textSize(30);
  fill(134, 103, 57, opaco+1000);
  textAlign(RIGHT);
  text("directed by      SHINICHIRO WATANABE", px, height/2);
}

void produccion() {
  textSize(30);
  fill(134, 103, 57, opaco+1500);
  textAlign(LEFT);
  text("producers     MASAHIKO MINAMI\n                    KAZUHIKO IKEGUCHI", pxPro, height/6);
}

void titulo() {
  textSize(50);
  fill(234, 234, 232, frameCount-1800);
  textAlign(CENTER);
  text("COWBOY BEBOP", width/2, height/6);
}
