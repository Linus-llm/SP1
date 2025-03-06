class CountryRectangles {
  
  //this is a method to make/draw the white country rectangles 
  void maker() {

    for (int i =0; i<8; i++) {
      if (i < 4) {
        fill(255);
        rect(width/4, height*0.115+i*(height*0.1+2), width/2.2, height*0.095); // white rectangle left side upper
        rect(width*0.75, height*0.115+i*(height*0.1+2), width/2.2, height*0.095); //white rectangle right side upper
        fill(0, 255, 255);
        noStroke();
        rect(width*0.4845, height*0.115+i*(height*0.1+2), width*0.013, height*0.095); //light blue rectangle left side upper
        rect(width*0.9845, height*0.115+i*(height*0.1+2), width*0.013, height*0.095); //ligth blue rect rectangle right side upper
      } else if (i<8) {
        fill(255);
        rect(width/4, height*0.115+i*(height*0.1+2)+height*0.085, width/2.2, height*0.095); //white rectangle left side lower
        rect(width*0.75, height*0.115+i*(height*0.1+2)+height*0.085, width/2.2, height*0.095); //white rectangle right side lower
        fill(255, 255, 0);
        noStroke();
        rect(width*0.4845, height*0.115+i*(height*0.1+2)+height*0.085, width*0.013, height*0.095); //yellow rect left lower
        rect(width*0.9845, height*0.115+i*(height*0.1+2)+height*0.085, width*0.013, height*0.095); //yellow rect right lower
      }
    }
  }
}
