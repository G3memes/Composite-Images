void hit_mole() {
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
