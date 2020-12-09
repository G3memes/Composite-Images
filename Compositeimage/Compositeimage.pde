//Global Variables
float plat_x, plat_y, plat_width, plat_height;
int black, green, brown;
//
float hole1Top_x, hole1Top_y;
float hole2Top_x, hole2Top_y;
float hole3Top_x, hole3Top_y;
float hole4Top_x, hole4Top_y;
//
float hole1Bot_x, hole1Bot_y;
float hole2Bot_x, hole2Bot_y;
float hole3Bot_x, hole3Bot_y;
float hole4Bot_x, hole4Bot_y;
int hole_width_height;
//
float mole_x, mole_y, mole_width_height;
//
int running;
//Display Geometry
fullScreen();
//if (displayWidth > displayHeight) shortSide = displayHeight
//
//Populating Variables
black = #AFAFAF;
green = #22E029;
brown = #A07603;
//
running = 1;
//
plat_x = displayWidth*1/20;
plat_y = displayHeight*2/20;
plat_width = displayWidth*18/20;
plat_height = displayHeight*16/20;
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

mole_x = random(displayWidth);
mole_y = random(displayHeight);
mole_width_height = (displayWidth*1/12);

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
//The moles
fill(brown);
circle(mole_x, mole_y, mole_width_height);
//
