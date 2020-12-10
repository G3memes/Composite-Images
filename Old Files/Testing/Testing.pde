PFont titleFont;
String time = "010";
int t;
int interval = 10;
String timer_text;
float timer_x, timer_y, timer_width, timer_height;


void setup()
{
  fullScreen();
  titleFont = createFont("Arial", 30);
  background(255);
  timer_x = displayWidth*4/20;
  timer_y = displayHeight*1/40;
  timer_width = displayWidth*12/20;
  timer_height = displayHeight*1/20;
}

void draw() {
  t = interval-int(millis()/1000);
  time = nf(t, 3);
  rect(timer_x, timer_y, timer_width, timer_height);
  textAlign(CENTER, CENTER); 
  textFont(titleFont, 30); 
  text(t, timer_x, timer_y, timer_width, timer_height);

  if (t == 0) {
    println("GAME OVER");
    interval+=10;
  }
}
