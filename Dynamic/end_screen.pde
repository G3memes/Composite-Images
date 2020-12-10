void end_screen() {
  fill(#FFFFFF);
  rect(start_x, start_y, start_width, start_height);
  end_text = "Your Score: " + score;
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 100); 
  fill(#000000);
  text(end_text, start_x, start_y, start_width, start_height);
}
