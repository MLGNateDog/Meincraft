void win() {
  cursor();
  background(beachStorm);

  //top text
  fill(goldFish2);
  textAlign(CENTER);
  textSize(50);
  text("VICTORY!", width/2, height/8);
  text("Time Taken: " + gameTimer/60 + "s", width/2, height/5);

  //play again button
  button(width/2, height/2 - height/12, width/5, height/12, "PLAY AGAIN", 32, 0);

  //quit button
  button(width/2, height/2 + height/12, width/5, height/12, "QUIT", 32, 0);
}

void winClicks() {
  //play again button
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
