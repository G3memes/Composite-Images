//Global Variables
//Prototyping exit with key Board
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, purple=#FC03FC, yellow=#F3FC03, resetWhite=#FFFFFF;
//Note: purple is not Night Mode b/c blue value is high

void setup() {
  fullScreen();
  //Population
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
}//End setup()

void draw() {
  println(mouseX, mouseY); //Proves that mouse has builtin variables based on coordinate plane
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) { 
    buttonColour = yellow;
  } else { 
    buttonColour = purple;
  } //End IF
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetWhite);
}//End draw()

void keyPressed() {
  if (key == 'q' || key == 'Q' ) exit(); //key not keyCode
}//End keyPressed()

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit();
}//End mousePressed()
