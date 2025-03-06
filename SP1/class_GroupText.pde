class GroupText { //class for the group text

  String groupName;
  float Width;
  float Height;
  color c;
  //constructor for the GroupText class
  GroupText(String groupName, float Width, float Height, color c) {
    this.groupName = groupName;
    this.Width = Width;
    this.Height = Height;
    this.c = c;
  }
  // method to display the text of the groups in the draw method
  void displayText() {
    textAlign(CENTER);
    textSize((width+height)/2*0.02);
    fill(c);
    text(groupName, Width, Height);
  }
















  /*void groupText(int sizeText, ) {
   textAlign(CENTER);
   textSize(sizeText);
   
   //upper text groups
   fill(0, 255, 255);
   text("GROUP A", width*0.25, height*0.05);
   text("GROUP C", width*0.75, height*0.05);
   
   //Lower text groups
   fill(255, 255, 0);
   text("GROUP B", width*0.25, height*0.55);
   text("GROUP D", width*0.75, height*0.55);
   
   line(width*0.5, height-height, width*0.5, height);
   }*/
}
