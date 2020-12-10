void random_selection() {
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
