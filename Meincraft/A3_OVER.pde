void over() {
  cursor();
  background(lava);

  //top text
  fill(pondWater);
  textAlign(CENTER);
  textSize(50);
  text("You Lost", width/2, height/10);
  text("Targets Remaing: " + tCount, width/2, height/5);

  //play again button
  button(width/2, height/2 - height/12, width/5, height/12, "TRY AGAIN", 32, 0);

  //quit button
  button(width/2, height/2 + height/12, width/5, height/12, "QUIT", 32, 0);
}

void overClicks() {
  //try again button
  if (touchingMouse(width/2, height/2 - height/12, width/5, height/12)) {
    mode = INTRO;
    shotTimer = 0;
    tCount = TNUMBER;
    gameTimer = 0;
  }

  //quit button
  if (touchingMouse(width/2, height/2 + height/12, width/5, height/12)) {
    exit();
  }
}
