void intro() {
  cursor();
  background(pondWater);

  //top text
  fill(goldFish);
  textSize(32);
  textAlign(CENTER);
  text("Instructions: You have 100 seconds to pop all of the balloons.", width/2, height/3);

  //play button
  button(width/2, height/2, width/3, height/8, "PLAY", 50, 15);

  //options/settings button
  button(width - width/10, height/15, width/7, height/15, "SETTINGS", 20, 5);
  
  //quit button
  button(width/10, height/15, width/7, height/15, "QUIT", 20, 5);
}

void introClicks() {
  if (touchingMouse(width/2, height/2, width/3, height/8)) { //if touching play button, mode is game
    mode = GAME;
    for (int t = 0; t < TNUMBER; t++) {
      objects.add(new Target());
    }
  }
  if (touchingMouse(width - width/10, height/15, width/7, height/15)) { //if touching settings button, mode = options
    mode = OPTIONS;
    backToPauseScreen = false;
  }
  
  if(touchingMouse(width/10, height/15, width/7, height/15)){
   exit(); 
  }
}
