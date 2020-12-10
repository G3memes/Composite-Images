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
float start_x, start_y, start_width, start_height;
float mole_x, mole_y, mole_diameter;
//
float score_x, score_y, score_width, score_height;
String end_text;
//
boolean start = true;
boolean mole_there = false;
//
int x, y;
float color_thing;
//
int game_start = 1;
//
float mole_pos;
//
int s = millis()/1000;
int total = 20000;
//
//
PFont titleFont;
//
String timer_text;
String start_text;
//
float reset_timer = 0;
int timer = 0;
//
int score = 0;
void setup() {
  frameRate(60);
  fullScreen();

  //Variable Population
  populating_Variables();
} //End setup()

void draw() {
  if (game_start == 1) {
    start_screen();
    if (keyPressed == true) {
      reset_timer = millis();
      game_start = 0;
      initial_Data();
    }
  }
  if (game_start == 0) {

    if (millis() < total) {   
      random_selection();
      mole_diameter = (displayWidth*1/12);
    }

    if (millis() > 0) {
      timer_code();
      score();
    }
    if (millis() >= total) {
      end_screen();
    }
    while (start) {
      if (mole_there == false) {
        fill(brown);
        //The moles
        circle(mole_x, mole_y, mole_diameter);
        start = false;
        mole_there = true;
      }
    }
  }
} //End draw()

void mousePressed() {
  hit_mole();
}
