void timer_code() {
  int timer_text = 20-(int(millis()-reset_timer)/1000);
  String total_time =  timer_text + " seconds";
  fill(#FFFFFF);
  rect(timer_x, timer_y, timer_width, timer_height);
  fill(#000000);
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 30); 
  text(total_time, timer_x, timer_y, timer_width, timer_height);
}
