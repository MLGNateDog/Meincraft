void game() {
  noCursor();
  gameTimer++;
  world.beginDraw();
  world.textureMode(NORMAL);
  world.background(0);
  world.pointLight(180, 180, 98, eyeX, eyeY, eyeZ);

  world.camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, upX, upY, upZ);

  move();
  drawAxis();
  drawFloor(-2000, 2000, height, gridSize);
  drawCeiling(-2000, 2000, height-gridSize*4, gridSize);
  drawMap();
  shoot();

  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  
  if(frameCount % 10 == 0){
  objects.add(new Snowflake());
  }


  world.endDraw();
  image(world, 0, 0);

  HUD.beginDraw();
  HUD.clear();
  drawCrosshair();
  drawMinimap();
  drawTargetCounter();
  HUD.endDraw();
  image(HUD, 0, 0);
  
  if(gameTimer >= gameTimerThreshold){
    mode = OVER;
  }
}

void gameClicks() {
  mode = PAUSE;
  rbt.mouseMove(width/2, height/2 + 5);
}
