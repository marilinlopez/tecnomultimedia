float pxr1, pyr1, pxr2, pyr2;

//texto
PFont fuente;
int opaco1=255, opaco2=255, opaco3=255;

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
  if (opaco1>0) {
    creadores();
  } else {
    if (opaco2>0) {   
      musica();
    } else {
      if (opaco3>0) {
        director();
      }
    }
  }
  pxr1+=1;
  pyr2-=0.5;
}

void creadores() {
  //texto
  textSize(30);
  fill(134, 103, 57, opaco1);
  textAlign(LEFT);
  text("planned by      SUNRISE, INC.", width/2, height/5);
  text("original concept      HAJIME YADATE", width/2, height/4);
  opaco1--;
}

void musica() {
  textSize(30);
  textAlign(RIGHT);
  fill(134, 103, 57, opaco2);
  text("opening theme song \n                   TANK! \nmusic by     YOKO KANNO \nperformed by     SEATBELTS", width/2, height/5);
  opaco2--;
}

void director() {
  textSize(30);
  fill(134, 103, 57, opaco3);
  textAlign(CENTER);
  text("directed by      SHINICHIRO WATANABE", width/2, height/3);
  opaco3--;
}
