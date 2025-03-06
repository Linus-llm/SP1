PFont font1;
CountryRectangles myCountryRectangles;
GroupText[] myGroupTexts;
CountryText[] myCountryTexts;
Flags myFlag;
void setup() {
  size(1000,500);
  
  font1 = createFont("comic sans ms", 128);
  textFont(font1);
  
  //Initializes my object from the class Flags
  myFlag = new Flags();
  
  //Initializes me object from the class CountryRectangles
  myCountryRectangles = new CountryRectangles();

  //Initializes the groupText array
  myGroupTexts = new GroupText[4];
  myGroupTexts[0] = new GroupText("GROUP A", width * 0.25, height * 0.05, color(0, 255, 255));
  myGroupTexts[1] = new GroupText("GROUP C", width * 0.75, height * 0.05, color(0, 255, 255));
  myGroupTexts[2] = new GroupText("GROUP B", width * 0.25, height * 0.55, color(255, 255, 0));
  myGroupTexts[3] = new GroupText("GROUP D", width * 0.75, height * 0.55, color(255, 255, 0));


  //Initializes the countryText array
  myCountryTexts = new CountryText[16];
  myCountryTexts[0] = new CountryText("RUSSIA", width/6.2, height*0.15, (width+height)/2*0.04);
  myCountryTexts[1] = new CountryText("SAUDIA ARABIA", width/6.2, height*0.25, (width+height)/2*0.04);
  myCountryTexts[2] = new CountryText("EGYPT", width/6.2, height*0.35, (width+height)/2*0.04);
  myCountryTexts[3] = new CountryText("URUGUAY", width/6.2, height*0.45, (width+height)/2*0.04);
  myCountryTexts[4] = new CountryText("FRANCE", width/1.52, height*0.15, (width+height)/2*0.04);
  myCountryTexts[5] = new CountryText("AUSTRALIA", width/1.52, height*0.25, (width+height)/2*0.04);
  myCountryTexts[6] = new CountryText("PERU", width/1.52, height*0.35, (width+height)/2*0.04);
  myCountryTexts[7] = new CountryText("DENMARK", width/1.52, height*0.45, (width+height)/2*0.04);
  myCountryTexts[8] = new CountryText("PORTUGAL", width/6.2, height*0.65, (width+height)/2*0.04);
  myCountryTexts[9] = new CountryText("SPAIN", width/6.2, height*0.75, (width+height)/2*0.04);
  myCountryTexts[10] = new CountryText("MOROCCO", width/6.2, height*0.85, (width+height)/2*0.04);
  myCountryTexts[11] = new CountryText("IRAN", width/6.2, height*0.95, (width+height)/2*0.04);
  myCountryTexts[12] = new CountryText("ARGENTINA", width/1.52, height*0.65, (width+height)/2*0.04);
  myCountryTexts[13] = new CountryText("ICELAND", width/1.52, height*0.75, (width+height)/2*0.04);
  myCountryTexts[14] = new CountryText("CROATIA", width/1.52, height*0.85, (width+height)/2*0.04);
  myCountryTexts[15] = new CountryText("NIGERIA", width/1.52, height*0.95, (width+height)/2*0.04);
}


void draw() {
  background(29, 49, 76);
  rectMode(CENTER);
  stroke(255);
  strokeWeight(3);
  line(width/2*1.015, height-height, width/2*1.015, height);
  strokeWeight(1);

  


  //makes the countryRectangles
  myCountryRectangles.maker();



  //displays the grouptext of the array
  for (int i=0; i<myGroupTexts.length; i++) {
    myGroupTexts[i].displayText();
  }

  //displays the country text of the array
  for (int j = 0; j < myCountryTexts.length; j++) {
    myCountryTexts[j].displayCountryText();
  }
  //using my object of the class Flags to display the flag
  myFlag.displayFlags();
}








// 03/03/25 Made adjustment to the code so that the rectangles are now made in a class with a method.
// made the group texts into an array and used a loop and a method to display them in draw.
// Made a class and method to display country text on the white rectangles
// 04/03/25 Made Flag class that loads and initializes the image files. The files are stored in a string array. Then a new array is created to store the loaded images (done by a for loop). 
// so I have one imagine for each index in the new array then I iterate through that new array in a new method to display the images.
