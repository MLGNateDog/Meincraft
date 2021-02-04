void pause() {
  cursor();
  background(pondWater);
  textAlign(CENTER);
  textSize(50);
  fill(goldFish2);
  text("GAME PAUSED", width/2, height/8);

  //options/settings button
  button(width - width/10, height/15, width/7, height/15, "SETTINGS", 20, 5);

  //resume button
  button(width/2, height/2 - height/12, width/4, height/10, "RESUME", 20, 5);

  //quit button
  button(width/2, height/2 + height/12, width/4, height/10, "QUIT", 20, 5);
}

void pauseClicks() {
  //settings button
  if (touchingMouse(width - width/10, height/15, width/7, height/15)) {
    mode = OPTIONS;
    backToPauseScreen = true;
  }

  //resume button
  if (touchingMouse(width/2, height/2 - height/12, width/4, height/10)) {
    mode = GAME;
  }

  //quit button
  if (touchingMouse(width/2, height/2 + height/12, width/4, height/10)) {
    exit();
  }
}
