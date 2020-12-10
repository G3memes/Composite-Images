void hit_mole() {
 x = mouseX;
 y = mouseY;
 color_thing = get(x, y);
 if (color_thing == brown) {
   random_selection();
   start = true;
   mole_there = false;
   initial_Data();
  }
}
