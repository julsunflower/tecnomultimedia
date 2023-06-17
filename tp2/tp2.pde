// Ángelo Magi
// com. 3, legajo: 94798/6
// url de vídeo: https://youtu.be/jUwYYMcPDHI

PImage referencia;

void setup () {
  size (800, 400);
  referencia = loadImage ("referencia.png");
}

void draw () {
  background (255);
  image (referencia, 0, 10, 400, 400);
  translate (600, 200);

  if (mousePressed) {
    rotate ( frameCount*.05);
  }
 
  dibujaCirculo (15, 190 );
}
