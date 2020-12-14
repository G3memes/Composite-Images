//Global Variables //<>// //<>//
float plat_x, plat_y, plat_width, plat_height;
int black, green, brown, reset;
//
PImage pic;
float image_x, image_y, image_width, image_height, imageWidthRatio, imageHeightRatio;
float quit_x, quit_y, quit_width, quit_height;
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
boolean quit_button = false;
//
int x, y;
float color_thing;
//
int game_start = 1;
//
float mole_pos;
//
float total = 20000;
//
//
PFont titleFont;
//
String start_text;
String quit_text = "QUIT";
//
float reset_timer = 0;
int timer = 0;
//
int score = 0;
int timer_text = 20-(int(millis()-reset_timer)/1000);
//
boolean mole_hit = false;
//
void setup() {
  frameRate(120);
  fullScreen();
  //Variable Population
  populating_Variables();
} //End setup()

void draw() {
  if (game_start == 1) {
    start_screen();
    if (keyPressed) {
      if (key == ENTER) {
        reset_timer = millis();
        initial_Data();
        game_start = 0;
      }
    }
  }

  if (game_start == 0) {
    quit_button = true;
    quit_button();

    if (millis() < total) {   
      mole_diameter = (displayWidth*1/12);
    }

    if (millis() >= 0) {
      timer_code();
      score();
    }
    if (20-(int(millis()-reset_timer)/1000) <= 0) {
      end_screen();
      quit_button();
    }
    while (start) {
      if (mole_there == false) {
        random_selection();
        fill(brown);
        //The moles
        circle(mole_x, mole_y, mole_diameter);
        mole_there = true;
        start = false;
      }
    }
  }
} //End draw()

void mousePressed() {
  hit_mole();
  if (quit_button == true) {
    if (mouseX > quit_x && mouseX < quit_x + quit_width && mouseY > quit_y && mouseY < quit_y + quit_height) {
      exit();
    }
  }
}
