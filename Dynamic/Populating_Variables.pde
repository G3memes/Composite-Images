void populating_Variables() {
  black = #AFAFAF;
  green = #22E029;
  brown = #A07603;
  reset = #FFFFFF;
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
