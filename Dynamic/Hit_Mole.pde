void hit_mole() {
  x = mouseX;
  y = mouseY;
  color_thing = get(x, y);
  if (color_thing == brown) {
    pic = loadImage("face.png"); //Dimensions: 512 Width, 512 Height
    imageWidthRatio = 40.0/512.0;
    imageHeightRatio = (512.0/512.0)*imageWidthRatio;
    image_width = displayWidth*imageWidthRatio;
    image_height = displayWidth*imageHeightRatio;
    image_x = mole_x-75;
    image_y = mole_y-75;
    println(mole_x);
    println(mole_y);
    println(image_x);
    println(image_y);
    initial_Data();
    image(pic, image_x, image_y, image_width, image_height);

    delay(100);
    random_selection();
    start = true;
    mole_there = false;
    score += 1;
    mole_hit = false;
  }
}
