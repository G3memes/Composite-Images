void start_screen() {
  fill(#FFFFFF);
  rect(start_x, start_y, start_width, start_height);
  start_text = "Welcome To Whack-A-Mole \nPress Enter to Start:";
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 100); 
  fill(#000000);
  text(start_text, start_x, start_y, start_width, start_height);
}
