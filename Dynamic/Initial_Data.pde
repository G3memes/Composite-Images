void initial_Data() {
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
