//Global Variables //<>// //<>// //<>//
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
float timer_x, timer_y, timer_width, timer_height;
float mole_x, mole_y, mole_diameter;
//
boolean start = true;
boolean mole_there = false;
//
int x, y;
float color_thing;
//
boolean game_start = true;
//
float mole_pos;
//
int s = millis()/1000;
int total = 30000;
//
//
PFont titleFont;
//
String timer_text;
//
void setup() {
  frameRate(60);
  fullScreen();

  //Variable Population
  populating_Variables();

  initial_Data();
} //End setup()
void draw() {
  if (millis() >= total)
    exit();
  if (game_start == true) {
    random_selection();
    mole_diameter = (displayWidth*1/12);
    game_start = false;
  }
  if (millis() > 0) {
    timer_text = 30-(millis()/1000) + " seconds";
    fill(reset);
    rect(timer_x, timer_y, timer_width, timer_height);
    fill(#000000);
    textAlign(CENTER, CENTER); 
    textFont(titleFont, 30); 
    text(timer_text, timer_x, timer_y, timer_width, timer_height);
  } 
  while (start) {
   println(millis());
   if (mole_there == false) {
     fill(brown);
     //The moles
     circle(mole_x, mole_y, mole_diameter);
     start = false;
     mole_there = true;
    }
  }
} //End draw()

void mousePressed() {
  hit_mole();
}

void keyPressed() {
} //End keyPressed()
