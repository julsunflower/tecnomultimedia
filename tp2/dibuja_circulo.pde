void dibujaCirculo ( float cant_, float radio_ ) {
  cant_ = 125;
  // esta funcion espera un valor para
  // cantidad de circulos y dibuja
  // alrededor de la circunferencia segun el radio
  push ();
  float step = 360 / cant_;
  for (int i=0; i<cant_; i = i+1) {
    rotate (radians (step));
    float tam = PI*radio_*2 / cant_;
    fill (i*2+281, 40, i*2);
    ellipse (radio_-10, i*0, 50, 90);
  }

  for (int i=0; i<cant_; i++) {
    rotate (radians (step));
    float tam = PI*radio_*2 / cant_;
    fill (i*2+281, 40, i*2);
    ellipse (radio_-50, i*0, 50, 90);
  }

  for (int i=0; i<cant_;i++) {
    rotate (radians (step));
    float tam = PI*radio_*2 / cant_;
    fill (i*2+281, 40, i*2);
    ellipse (radio_-80, i*0, 50, 90);
  }

  for (int i=0; i<cant_; i++) {
    rotate (radians (step));
    float tam = PI*radio_*2 / cant_;
    fill (i*2+281, 40, i*2);
    ellipse (radio_-120, i*0, 50, 90);
  }

  for (int i=0; i<cant_; i++) {
    rotate (radians (step));
    float tam = PI*radio_*2 / cant_;
    fill (i*2+281, 40, i*2);
    ellipse (radio_-160, i*0, 50, 90);
  }
  pop ();
} // función
