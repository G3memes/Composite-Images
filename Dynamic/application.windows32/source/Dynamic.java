import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dynamic extends PApplet {

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
int timer_text = 20-(PApplet.parseInt(millis()-reset_timer)/1000);
//
boolean mole_hit = false;
//
public void setup() {
  frameRate(120);
  
  //Variable Population
  populating_Variables();
} //End setup()

public void draw() {
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
    if (20-(PApplet.parseInt(millis()-reset_timer)/1000) <= 0) {
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

public void mousePressed() {
  hit_mole();
  if (quit_button == true) {
    if (mouseX > quit_x && mouseX < quit_x + quit_width && mouseY > quit_y && mouseY < quit_y + quit_height) {
      exit();
    }
  }
}

public void hit_mole() {
  x = mouseX;
  y = mouseY;
  color_thing = get(x, y);
  if (color_thing == brown) {
    random_selection();
    initial_Data();
    start = true;
    mole_there = false;
    score += 1;
    mole_hit = false;
  }
}

public void initial_Data() {
  //Background
  background(0xff000000);
  //Platform
  fill(green);
  rect(plat_x, plat_y, plat_width, plat_height);
  //
  //Top holes
  fill(black);
  circle(hole1Top_x, hole1Top_y, hole_width_height);
  circle(hole2Top_x, hole2Top_y, hole_width_height);
  circle(hole3Top_x, hole3Top_y, hole_width_height);
  circle(hole4Top_x, hole4Top_y, hole_width_height);
  //
  //Bottom Holes
  circle(hole1Bot_x, hole1Bot_y, hole_width_height);
  circle(hole2Bot_x, hole2Bot_y, hole_width_height);
  circle(hole3Bot_x, hole3Bot_y, hole_width_height);
  circle(hole4Bot_x, hole4Bot_y, hole_width_height);
  //
} //End inital_Data()
public void populating_Variables() {
  black = 0xffAFAFAF;
  green = 0xff22E029;
  brown = 0xffA07603;
  reset = 0xffFFFFFF;
  //
  start_x = displayWidth*0;
  start_y = displayHeight*0;
  start_width = displayWidth;
  start_height = displayHeight;
  //
  timer_x = displayWidth*4/20;
  timer_y = displayHeight*1/40;
  timer_width = displayWidth*12/20;
  timer_height = displayHeight*1/20;
  //
  score_x = displayWidth*4/20;
  score_y = displayHeight*35/40;
  score_width = displayWidth*12/20;
  score_height = displayHeight*3/30;
  //
  plat_x = displayWidth*1/20;
  plat_y = displayHeight*2/20;
  plat_width = displayWidth*18/20;
  plat_height = displayHeight*16/20;
  //
  hole_width_height = displayHeight/4;
  //
  hole1Top_x = displayWidth*4/20;
  hole1Top_y = displayHeight*1/3;
  //
  hole2Top_x = displayWidth*8/20;
  hole2Top_y = displayHeight*1/3; 
  //
  hole3Top_x = displayWidth*12/20;
  hole3Top_y = displayHeight*1/3;
  //
  hole4Top_x = displayWidth*16/20; 
  hole4Top_y = displayHeight*1/3; 
  //
  hole1Bot_x = hole1Top_x;
  hole1Bot_y = displayHeight*2/3;
  //
  hole2Bot_x = hole2Top_x;
  hole2Bot_y = displayHeight*2/3;
  //
  hole3Bot_x = hole3Top_x;
  hole3Bot_y = displayHeight*2/3;
  //
  hole4Bot_x = hole4Top_x;
  hole4Bot_y = displayHeight*2/3;
  //
  titleFont = createFont ("Arial", 55);
  //
  quit_x = displayWidth *35/40;
  quit_y = displayHeight *1/40;
  quit_width = displayWidth *1/10;
  quit_height = displayHeight*1/20;
} //End  populating_Variable()
public void quit_button() {
  fill(0xffFFFFFF);
  rect(quit_x, quit_y, quit_width, quit_height);
  fill(0xff000000);
  textFont(titleFont, 28); 
  textAlign(CENTER, CENTER);
  text(quit_text, quit_x, quit_y, quit_width, quit_height);
}
public void end_screen() {
  fill(0xffFFFFFF);
  rect(start_x, start_y, start_width, start_height);
  end_text = "Your Score: " + score;
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 100); 
  fill(0xff000000);
  text(end_text, start_x, start_y, start_width, start_height);
}

   /* pic = loadImage("face.png"); //Dimensions: 512 Width, 512 Height
    imageWidthRatio = 40.0/512.0;
    imageHeightRatio = (512.0/512.0)*imageWidthRatio;
    image_width = displayWidth*imageWidthRatio;
    image_height = displayWidth*imageHeightRatio;
    image_x = mole_x-75;
    image_y = mole_y-75;
    println(mole_x);
    println(mole_y);
    println(image_x);
    println(image_y);
    image(pic, image_x, image_y, image_width, image_height);
    */
public void random_selection() {
  fill(brown);
  mole_pos = random(1, 9);
  if (mole_pos >= 1) {
    if (mole_pos < 2) 
      mole_x = hole1Top_x;
      mole_y = hole1Top_y;
  }
  if (mole_pos >= 2) {
    if (mole_pos < 3)
      mole_x = hole2Top_x;
      mole_y = hole2Top_y;
  }
  if (mole_pos >= 3) {
    if (mole_pos < 4)
      mole_x = hole3Top_x;
      mole_y = hole3Top_y;
  }
  if (mole_pos >= 4) {
    if (mole_pos < 5)
      mole_x = hole4Top_x;
      mole_y = hole4Top_y;
  }
  if (mole_pos >= 5) {
    if (mole_pos < 6)
      mole_x = hole1Bot_x;
      mole_y = hole1Bot_y;
  }
  if (mole_pos >= 6) {
    if (mole_pos < 7)
      mole_x = hole2Bot_x;
      mole_y = hole2Bot_y;
  }
  if (mole_pos >= 7) {
    if (mole_pos < 8)
      mole_x = hole3Bot_x;
      mole_y = hole3Bot_y;
  }
  if (mole_pos >= 8) {
    if (mole_pos <= 9)
      mole_x = hole4Bot_x;
      mole_y = hole4Bot_y;
  }
}
public void score() {
  String score_text = "Score = " + score;
  fill(0xffFFFFFF);
  rect(score_x, score_y, score_width, score_height);
  fill(0xff000000);
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 30); 
  text(score_text, score_x, score_y, score_width, score_height);
}
public void start_screen() {
  fill(0xffFFFFFF);
  rect(start_x, start_y, start_width, start_height);
  start_text = "Welcome To Whack-A-Mole \nPress Enter to Start:";
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 100); 
  fill(0xff000000);
  text(start_text, start_x, start_y, start_width, start_height);
}
public void timer_code() {
  int timer_text = 20-(PApplet.parseInt(millis()-reset_timer)/1000);
  String total_time =  timer_text + " seconds";
  fill(0xffFFFFFF);
  rect(timer_x, timer_y, timer_width, timer_height);
  fill(0xff000000);
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 30); 
  text(total_time, timer_x, timer_y, timer_width, timer_height);
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "Dynamic" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
