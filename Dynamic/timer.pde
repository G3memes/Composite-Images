void timer_code() {
  String timer_text = 20-(int(millis()-reset_timer)/1000) + " seconds";
  fill(#FFFFFF);
  rect(timer_x, timer_y, timer_width, timer_height);
  fill(#000000);
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 30); 
  text(timer_text, timer_x, timer_y, timer_width, timer_height);
}
