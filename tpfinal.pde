import processing.sound.*;
Aventura av;

void setup() {
  size(800, 600);
  surface.setResizable(true);
  av=new Aventura();
}

void draw() {
  av.dibujar();
}

void mousePressed() {
  av.click();
}
