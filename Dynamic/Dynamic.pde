//Global Variables //<>//
float plat_x, plat_y, plat_width, plat_height;
int black, green, brown, reset;
//
float hole1Top_x, hole1Top_y;
float hole2Top_x, hole2Top_y;
float hole3Top_x, hole3Top_y;
float hole4Top_x, hole4Top_y;
//
float hole1Bot_x, hole1Bot_y;
float hole2Bot_x, hole2Bot_y;
float hole3Bot_x, hole3Bot_y;
float hole4Bot_x, hole4Bot_y;
int hole_width_height;
//
float mole_x, mole_y, mole_diameter;
//
boolean start = true;
boolean mole_there = false;
//
int x, y;
float color_thing;
//
void setup() {
  frameRate(60);
  fullScreen();
  //
  //Variable Population
  populating_Variables();
  //
  initial_Data();
  //
} //End setup()
void draw() {
  while (start) {
    if (mole_there == false) {
      mole_x = random(displayWidth);
      mole_y = random(displayHeight);
      mole_diameter = (displayWidth*1/12);
      fill(brown);
      //The moles
      circle(mole_x, mole_y, mole_diameter);
      println(mole_x);
      println(mouseX);
      start = false;
      mole_there = true;
    }
  }
} //End draw()
 //<>//
void mousePressed() {
  hit_mole(); //<>//
}
 
void keyPressed() {
} //End keyPressed()
