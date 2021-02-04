void button(int x, int y, int w, int h, String label, int ts, int drop) {
  color fillC = aoi;
  color strokeC1 = goldFish;
  color strokeC2 = frogGreen;
  color textC = purp;
  strokeCap(ROUND);

  //tactile
  if (touchingMouse(x, y, w, h)) {
    stroke(strokeC2);
    strokeWeight(7);
  } else {
    stroke(strokeC1);
    strokeWeight(5);
  }
  //drawing the button
  fill(fillC);
  rect(x, y, w, h);
  textSize(ts);
  fill(textC);
  textAlign(CENTER);
  text(label, x, y + drop);
}

void colourButton(int x, int y, int w, int h, int drop, color fillC, color strokeC1, color strokeC2) {
  /* DEFAULTS
   color fillC = aoi;
   color strokeC2 = beachStorm;
   color strokeC1 = goldFish;
   color textC = purp;
   */

  //tactile
  if (touchingMouse(x, y, w, h) || fillC == c) {
    strokeCap(ROUND);
    strokeWeight(7);
    stroke(strokeC2);
  } else {
    strokeCap(ROUND);
    strokeWeight(5);
    stroke(strokeC1);
  }
  //drawing the button
  fill(fillC);
  rect(x, y, w, h);
}

void targetColourButton(int x, int y, int w, int h, int drop, color fillC, color strokeC1, color strokeC2) {
  /* DEFAULTS
   color fillC = aoi;
   color strokeC2 = beachStorm;
   color strokeC1 = goldFish;
   color textC = purp;
   */

  //tactile
  if (touchingMouse(x, y, w, h) || fillC == tc) {
    strokeCap(ROUND);
    strokeWeight(7);
    stroke(strokeC2);
  } else {
    strokeCap(ROUND);
    strokeWeight(5);
    stroke(strokeC1);
  }
  //drawing the button
  fill(fillC);
  rect(x, y, w, h);
}

//touching mouse
boolean touchingMouse(int x, int y, int w, int h) {
  if (mouseX > (x - w/2 - 5/2) && mouseX < (x + w/2 + 5/2) && mouseY > y - h/2 - 5/2 && mouseY < y + h/2 + 5/2) {
    return true;
  } else {

    return false;
  }
}
