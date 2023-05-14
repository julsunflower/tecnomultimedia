// Ángelo Magi
// Comisión 3
// Arte electrónico

// Creación de variables:
String estado = "inicio";
int cuentaFotograma = 0;
int Movimiento = 1;
PImage imagen; // pantalla 2
PImage foto; // pantalla 3
PImage alterno; // pantalla 4
PImage obra;
PImage etece;
PFont FuenteNueva;
float arriba = 500;

void setup() {
  FuenteNueva = loadFont ("Georgia-BoldItalic-20.vlw");
  size (640, 480);
  imagen = loadImage ("completa.jpg");
  foto = loadImage ("zoom.jpg");
  alterno = loadImage ("alterno.jpg");
  obra = loadImage ("obra.jpg");
  etece = loadImage ("etece.jpg");
} // del setup

void draw() {
  Movimiento = frameCount;
  println (Movimiento);
  frameRate(30);
  background (0);
  // println ( frameRate ); // dsp borrar
  textFont (FuenteNueva);
  textSize(18);
  textAlign(LEFT);
  // text( cuentaFotograma, 20, 40);
  //text( estado, 20, 55); // dsp borrar

  if ( estado.equals("inicio") ) {
    // Pantalla inicio
    fill (200, 0, Movimiento, 200); // cambiar el color
    textAlign (CENTER);
    textSize(60); 
    text("Electronic \nSuperhighway", width/2, height/3); // título de la obra
    fill (255);
    rect (210, 300, 200, 100);
    textSize(30);
    fill (0);
    text("empezar", Movimiento+200, 360);
    
    cuentaFotograma++;
    if ( cuentaFotograma>= 100 ) {
      estado = "pantalla 2";
      cuentaFotograma = 0;
    }
  } // if de inicio

  else if ( estado.equals("pantalla 2") ) {
    // Pantalla 2
    image (imagen, 10, 30, 300, 300);
    fill (255, Movimiento); // efecto fade
    textSize(20);
    text("<Electronic Superhighway: \nContinental U.S., Alaska, \nHawaii> es una obra que \ncuenta con cincuenta canales \nde videoinstalación \nelectrónica, luces neón, entre \notros materiales, que \ngeneraran un montón de \ncolor y sonido. Su autor es el \nartista \ncoreano/estadounidense \nNam June Paik (1932, Corea). \nSe lo considera el <padre del \nvideoarte> y uno de los \npioneros del arte electrónico \npor usar la televisión y el \nvideo en sus medios artísticos.", width/2, height/8);

    cuentaFotograma++;
    if ( cuentaFotograma>= 600 ) {
      estado = "pantalla 3";
      cuentaFotograma = 0;
    } // if cuentafotograma
  } // if de pantalla 2

  else if ( estado.equals("pantalla 3") ) {
    // Pantalla 3
    fill (255);
    textSize(20);
    arriba = arriba - 1;
    text("Nam June Paik llegó a \nNueva York en 1964, y el \nsistema de autopistas \ninterestelares era reciente, \nde tan solo nueves años. \nRespecto a la obra, se usó \nlos distintos tubos de \ncolores y canales de video \npara limitar los estados del \npaís y representar las \ndistintas identidades \ny culturas que \ntenían, algo que seguro \ntuvo que descubrir el \nautor cuando inmigró.", width/22, arriba);
    image (foto, 320, 30, 300, 300);

    cuentaFotograma++;
    if ( cuentaFotograma>= 600 ) {
      estado = "pantalla 4";
      cuentaFotograma = 0;
    } // if cuentafotograma
  } // if de pantalla 3

  else if ( estado.equals("pantalla 4")  ) {
    // Pantalla 4
    fill (255);
    textSize (15);
    text("El Robot K-456 (1986), \nbasado por el concierto de \npiano No. 18 de Mozart en \nsi bemol mayor, K. 456, \nfue su primera creación \nautomatizada mientras \nvivía en Japón.", width/1.5, height/8);
    text ("TV Garden (1974) es una \nfusión entre lo natural y lo \ntecnológico. <El video no es \nun objeto cristalino y bien \ndefinido que se acepta de \nmanera pasiva. Al mismo \ntiempo, es un ser vivo cuya \napariencia seductora puedo \ncontrolar con mi propia \nmano> (Lee Ufan)", width/3.3, height/1.8);
    text ("Fin de siècle II (1989), \nestá formada por 207 \nmonitores de \ntelevisión y emite \nmúsica y sonidos \ngrabados de la \ntelevisión, \nprogramado para \nque se repita en \n<loop>", width/22, height/8);
    image (alterno, 420, 250, 170, 220);
    image (obra, 200, 20, 220, 220);
    image (etece, 20, 250, 170, 220);
    circle (500, 210, 50);
    fill (0);
    textSize (12);
    text ("volver", 480, 214);

    cuentaFotograma++;
    if ( cuentaFotograma>= 150 ) {
      estado = "pantalla 4";
      cuentaFotograma = 0;
    } // if cuentafotograma
  } // if pantalla 4
} // del void draw

void mousePressed() {
  // (210, 300, 200, 100)
  // mayor borde izq (mouseX > 210)
  // menor a borde derecho (mouseX < 210+200)
  // mayor a borde superior (mouseY > 300)
  // menor borde inferior (mouseY < 300+100)
  if ( mouseX > 210 && mouseY > 300 && mouseX < 410 && mouseY < 400) {
    if ( estado.equals("inicio") ) {
      estado = "pantalla 2";
      cuentaFotograma = 0;
    } // if estado
  } // if botón

  //(500, 210, 50); 
  float d = dist ( mouseX, mouseY, 500, 210);
  int r = 50 / 2;
  if ( d < r) {
    if ( estado.equals("pantalla 4") ) {
      estado = "inicio";
      cuentaFotograma = 0;
    } // if de pantalla 4 a inicio
  } // if del botón de reinicio
} // del mousepressed
