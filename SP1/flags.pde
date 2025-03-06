


class Flags {
  String[]allFlagNames = {"ru.png", "sa.png", "eg.png", "ur.png", "fr.png", "au.png", "pr.png"
    , "dk.png", "pt.png", "sp.png", "mr.png", "ir.png", "ar.png", "ic.png"
    , "cr.png", "ng.png"};

  PImage[] images;



//this initializes my images array and fills it with all the different flags from the string array
  Flags() {
    images = new PImage[allFlagNames.length];

    for (int i =0; i<allFlagNames.length; i++) {
      images[i] = loadImage(allFlagNames[i]);
    }
  }


 //Method to display the flags in my draw method
  void displayFlags() {


    for (int i = 0; i<images.length; i++) {
      if (i<4) {
        image(images[i], width/44, height*0.0678+i*(height*0.1+2), width/10, height*0.095);
      } else if (i<8) {
        image(images[i], width/1.913, height*0.0678+(i-4)*(height*0.1+2), width/10, height*0.095);
      } else if (i>7&&i<12) {
        image(images[i], width/44, height*0.115+(i-4.46)*(height*0.1+2)+height*0.085, width/10, height*0.095);
      } else if (i>11) {
        image(images[i], width/1.913, height*0.115+(i-8.46)*(height*0.1+2)+height*0.085, width/10, height*0.095);
      }
    }
  }
}
