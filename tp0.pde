// Ángelo Tobío Magi
// Comisión N3
// Retrato

PImage imagen;

void setup ( ) {
  size (800, 400);
   background (245, 245, 245);
  imagen = loadImage ("retrato.png");
  image (imagen, 400, 0, 400, 400);
}
void draw () {
  fill(0, 0, 0);
  textSize (50);
  text("LEO", 20, 355);
  strokeWeight(1);
  fill (255, 220, 185); //color de piel
  ellipse (65, 200, 50, 95); //oreja
  ellipse (330, 200, 50, 95);
  ellipse (200, 200, 250, 350); // cabeza
  triangle (180, 270, 200, 160, 220, 270); //nariz
  fill (255, 255, 255);
  triangle(149, 305, 200, 334, 249, 305); //boca
  ellipse (150, 170, 50, 30); //ojo
  ellipse (250, 170, 50, 30);
  fill (0, 0, 0);
  triangle (171, 318, 200, 334, 226, 318);
  fill (88, 55, 35);
  ellipse (150, 170, 20, 20); //pupila
  ellipse (250, 170, 20, 20);
  strokeWeight (10);
  line (232, 147, 281, 147);
  line (160, 147, 119, 147);
  strokeWeight (25);
  stroke(62, 35, 14);
  line (80, 190, 90, 60); //pelo
  line (320, 190, 310, 60);
  line (95, 140, 95, 60);
  line (305, 140, 305, 60);
  triangle (86, 79, 86, 25, 170, 79);
  triangle (134, 79, 134, 25, 210, 79);
  triangle (167, 79, 167, 27, 230, 79);
  triangle (197, 79, 197, 35, 240, 79);
  triangle (217, 79, 217, 38, 250, 79);
  strokeWeight (70);
  line (108, 65, 290, 65);
  strokeWeight (1);
  fill (255, 220, 185);
  bezier (124, 165, 124+20, 169-20, 176-20, 169-20, 176, 165);
  bezier (224, 165, 224+20, 169-20, 274-20, 169-20, 274, 165);
  println (mouseY, mouseX);
}
