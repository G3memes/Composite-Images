void quit_button() {
  fill(#FFFFFF);
  rect(quit_x, quit_y, quit_width, quit_height);
  fill(#000000);
  textFont(titleFont, 28); 
  textAlign(CENTER, CENTER);
  text(quit_text, quit_x, quit_y, quit_width, quit_height);
}
