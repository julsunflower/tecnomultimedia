// Ángelo Magi
// Comisión 3
// Legajo: 94798/6
// url del vídeo: https://youtu.be/ByEqg6_ucps

// Creación de variables:
PImage[] imagenes;
String[] textos;
int estado;
int cantImagenes = 29;
int actual = 0;

void setup () {
  size (600, 600);
  // carga y asignación de las imágenes
  imagenes = new PImage[29];
  for ( int i=0; i<cantImagenes; i++ ) {
    imagenes[i] = loadImage("imagenes/img_"+nf(i, 2)+".png");
    imagenes/img_img1.png
  }
  // carga y asignación de los textos
  textos = loadStrings("data/textos.txt");
}

void draw() {
  if ( estado == 0 ) {
    dibujaPantalla( imagenes[1]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "JUGAR");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "CRÉDITOS");
  } 
  else  if ( estado == 1 ) {
    dibujaPantalla( imagenes[3], imagenes[4], imagenes[5], imagenes[6]);
  } 
  else  if ( estado == 2 ) {
    dibujaPantalla( imagenes[7], imagenes[8],);
  }
  else if ( estado == 3 ) {
    dibujaPantalla(imagenes[9]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SÍ");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "NO");
  } 
  else  if ( estado == 4 ) {
    dibujaPantalla( imagenes[10]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "VOLVER");
    // hacer que vuelva a P2
  } 
  else  if ( estado == 5 ) {
    dibujaPantalla( imagenes[11], imagenes[6], imagenes[7]);
  }
  else  if ( estado == 6 ) {
    dibujaPantalla( imagenes[12]);
  }
  else  if ( estado == 7 ) {
    dibujaPantalla( imagenes[13], imagenes[14]);
  }
  else  if ( estado == 8 ) {
    dibujaPantalla( imagenes[15]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "DERECHA");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "IZQUIERDA");
  }
  else  if ( estado == 9 ) {
    dibujaPantalla( imagenes[16]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "VOLVER");
  }
  else  if ( estado == 10 ) {
    dibujaPantalla( imagenes[17], imagenes[18]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "VOLVER");
  }
  else  if ( estado == 11 ) {
    dibujaPantalla( imagenes[19]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SÍ");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "NO");
  }
  else  if ( estado == 12 ) {
    dibujaPantalla( imagenes[20]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "REINICIAR");
    // volver
  } 
  else  if ( estado == 13 ) {
    dibujaPantalla( imagenes[21],imagenes[22], imagenes[23]);
  }
  else  if ( estado == 14 ) {
    dibujaPantalla( imagenes[24]);
  }
  else  if ( estado == 15 ) {
    dibujaPantalla( imagenes[25]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "NEGOCIAR");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "PELEAR");
  }
  else  if ( estado == 16 ) {
    dibujaPantalla( imagenes[26]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "REINICIAR");
    // bad ending, volver a P15
  }
  else  if ( estado == 17 ) {
    dibujaPantalla( imagenes[27], imagenes[28]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "CRÉDITOS");
  }
  else  if ( estado == 18 ) {
    dibujaPantalla( imagenes[2]);
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "VOLVER");
  }
}
