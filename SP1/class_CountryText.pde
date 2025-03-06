class CountryText { //class for the country text
  float sizeText;
  float xPos;
  float yPos;
  String countryName;
  // the constructor that takes parameters
  CountryText(String countryName, float xPos, float yPos, float sizeText) {
    this.countryName = countryName;
    this.sizeText = sizeText;
    this.xPos = xPos;
    this.yPos = yPos;
  }
  //method to display the country text in the draw method
  void displayCountryText() {
  fill(29, 49, 76); // Background color for the text
  textAlign(LEFT);
  textSize(sizeText);
  text(countryName, xPos, yPos);
  }
}
