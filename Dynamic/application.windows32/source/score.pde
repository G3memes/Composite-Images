void score() {
  String score_text = "Score = " + score;
  fill(#FFFFFF);
  rect(score_x, score_y, score_width, score_height);
  fill(#000000);
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 30); 
  text(score_text, score_x, score_y, score_width, score_height);
}
