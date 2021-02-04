void drawCrosshair() {
  HUD.stroke(c);
  HUD.strokeWeight(2);
  HUD.strokeCap(SQUARE);
  HUD.line(width/2 - gap/2, height/2, width/2 - gap/2 - crosshairLength, height/2);
  HUD.line(width/2 + gap/2, height/2, width/2 + gap/2 + crosshairLength, height/2);
  HUD.line(width/2, height/2 - gap/2, width/2, height/2 - gap/2 - crosshairLength);
  HUD.line(width/2, height/2 + gap/2, width/2, height/2 + gap/2 + crosshairLength);
}

void drawMinimap() {
  HUD.image(map, 50, 50, 160, 160); //x4

  int miniX = int(eyeX + 2000) / gridSize;
  int miniY = int(eyeZ + 2000) / gridSize;

  HUD.textSize(20);
  HUD.fill(white);
  HUD.text("X: " + miniX, 50, 240);
  HUD.text("Y: " + miniY, 50, 280);

  HUD.strokeWeight(0);
  HUD.stroke(255, 0, 0);
  HUD.fill(255, 0, 0);
  HUD.rect(miniX*4 + 50, miniY*4 + 50, 4, 4); //indicator of where you are
}

void drawTargetCounter(){
 HUD.fill(white);
 HUD.textSize(20);
 HUD.text("Remaining: " + tCount, width-200, 50);
 HUD.text("Time Played: " + gameTimer/60 + "s", width-200, 70);
}
