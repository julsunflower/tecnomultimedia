void mousePressed() {
    actual++;
  if ( actual>=textos.length) {
    actual=0;
  }
  if ( estado == 0 ) {
    if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 0 -> 1");
      estado = 1;
    }
       if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("flujo de estado 0 -> 16");
      estado = 18;
    }
  }
  else if ( estado == 1 ) {
    if ( colisionConBotonRectangular(width/4, height/3, 80, 80) ) {
      println("flujo de estado 1 -> 2");
     estado = 2;
    }
  else if ( estado==2 ) {
     if ( colisionConBotonRectangular(width/4, height/3, 80, 80) ) {
      println("flujo de estado 2 -> 3");
    estado = 3;
   }
   else if ( estado==3) {
      if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 3 -> 4");
      estado = 4;
    }
       if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("flujo de estado 3 -> 5");
      estado = 5;
   }
   else if ( estado==4 ) {
     if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 4 -> 2");
      estado = 2;
    }
   }
   else if ( estado==5 ) {
      if ( colisionConBotonRectangular(width/4, height/3, 80, 80) ) {
      println("flujo de estado 5 -> 6");
     estado = 6;
   }
   else if ( estado==6 ) {
      if ( colisionConBotonRectangular(width/4, height/3, 80, 80) ) {
      println("flujo de estado 6 -> 7");
     estado = 7;
   }
   else if ( estado==7 ) {
      if ( colisionConBotonRectangular(width/4, height/3, 80, 80) ) {
      println("flujo de estado 7 -> 8");
     estado = 8;
   }
   else if ( estado==8) {
      if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 8 -> 10");
      estado = 10;
    }
       if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("flujo de estado 8 -> 9");
      estado = 9;
   }
   else if ( estado==9 ) {
     if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 9 -> 8");
      estado = 8;
    }
   }
   else if ( estado==10 );
   estado = 11;
   else if ( estado==11) {
      if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 11 -> 12");
      estado = 12;
    }
       if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("flujo de estado 11 -> 13");
      estado = 13;
   }
   else if ( estado==12 ) {
     if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 12 -> 10");
      estado = 10;
     }
   }
   else if ( estado==13 ) {
      if ( colisionConBotonRectangular(width/4, height/3, 80, 80) ) {
      println("flujo de estado 13 -> 14");
     estado = 14;
   }
   else if ( estado==14 ){
      if ( colisionConBotonRectangular(width/4, height/3, 80, 80) ) {
      println("flujo de estado 14 -> 15");
   estado =15;
   }
   else if ( estado==15) {
      if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 15 -> 17");
      estado = 17;
    }
       if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("flujo de estado 15 -> 16");
      estado = 16;
       }
      else if ( estado==16 ) {
     if ( colisionConBotonRectangular(width/4*3, height/3, 120, 80) ) {
      println("flujo de estado 16 -> 14");
      estado = 14;
     }
      }
      else if ( estado==17 ){
        if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("flujo de estado 17 -> 18");
      estado = 18;
      }
      else if ( estado==18 ){
         if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
      println("flujo de estado 18 -> 0");
      estado = 0;
      }
} //mousepressed
