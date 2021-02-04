void options() {
  cursor();
  background(pondWater);
  textSize(height/21);
  textAlign(CENTER);
  fill(goldFish2);
  text("SETTINGS MENU", width/2, height/10);
  
  textAlign(CORNER);

  rectMode(CENTER);
  button(width - width/10, height/15, width/10, height/20, "BACK", 20, 5);

  //crosshair Length

  //length minimums and pointless limits
  if (crosshairLength <= 0) {
    crosshairLength = 0;
  }
  if (crosshairLength >= 50) {
    crosshairLength = 50;
  }

  //text
  textAlign(CORNER);
  fill(goldFish);
  textSize(25);
  text("Crosshair Length: " + crosshairLength, width/5, height/5);

  //decrease button
  button(width/5 + width/40, height/4, width/10, height/15, "DECREASE", 20, 0);

  //increase button
  button(width/5 + width/40 + width/8, height/4, width/10, height/15, "INCREASE", 20, 0);


  //crosshair gap

  //gap minimums and pointless limits
  if (gap <= 0) {
    gap = 0;
  }
  if (gap >= 50) {
    gap = 50;
  }

  //text
  textAlign(CORNER);
  fill(goldFish);
  textSize(25);
  text("Crosshair Gap: " + gap, width/5, height/3);

  //decrease button
  button(width/5 + width/40, 2*height/5 -10, width/10, height/15, "DECREASE", 20, 0);

  //increase button
  button(width/5 + width/40 + width/8, 2*height/5 - 10, width/10, height/15, "INCREASE", 20, 0);


  //crosshair colour

  //text
  fill(goldFish);
  textSize(25);
  textAlign(CORNER);
  text("Crosshair Colour: " + crossC, width/5, height/2 - 20);

  //colourButton(int x, int y, int w, int h, int drop, color fillC, color strokeC1, color strokeC2)

  //blue green button
  colourButton(width/5 + width/40, height/2 + height/25, width/10, height/15, 0, bGreen, black, beachStorm);

  //green button
  colourButton(width/5 + width/40 + width/8, height/2 + height/25, width/10, height/15, 0, green, black, beachStorm);

  //cyan button
  colourButton(width/5 + width/40 + 2*width/8, height/2 + height/25, width/10, height/15, 0, cyan, black, beachStorm);

  //yellow button
  colourButton(width/5 + width/40 + 3*width/8, height/2 + height/25, width/10, height/15, 0, yellow, black, beachStorm);

  //pink button
  colourButton(width/5 + width/40 + 4*width/8, height/2 + height/25, width/10, height/15, 0, pink, black, beachStorm);

  //white button
  colourButton(width/5 + width/40 + 5*width/8, height/2 + height/25, width/10, height/15, 0, white, black, beachStorm);
  
  
  //sensitivity
  
  //sens minimums and limits
  if (sens <= 1) {
    sens = 1;
  }
  if (sens >= 20) {
    sens = 20;
  }
  
  fill(goldFish);
  textSize(25);
  textAlign(CORNER);
  text("Game Sensitivity: " + sens, width/5, height/2 + height/8);
  
  //subtract button
  button(width/5 + width/40, 32*height/47, width/10, height/15, "-1", 20, 0);

  //Add button
  button(width/5 + width/40 + width/8, 32*height/47, width/10, height/15, "+1", 20, 0);
  
  
  //target colour
  //text
  fill(goldFish);
  textSize(25);
  textAlign(CORNER);
  text("Target Colour: " + targetC, width/5, 4*height/5 - 20);
  
  //target colour options
  //colourButton(int x, int y, int w, int h, int drop, color fillC, color strokeC1, color strokeC2)

  //red target colour button
  targetColourButton(width/5 + width/40, height/2 + height/25 + 9*height/30, width/10, height/15, 0, red, black, beachStorm);

  //blue target colour button
  targetColourButton(width/5 + width/40 + width/8, height/2 + height/25 + 9*height/30, width/10, height/15, 0, blue, black, beachStorm);

  //purple target colour button
  targetColourButton(width/5 + width/40 + 2*width/8, height/2 + height/25 + 9*height/30, width/10, height/15, 0, violet, black, beachStorm);

  //pink target colour button
  targetColourButton(width/5 + width/40 + 3*width/8, height/2 + height/25 + 9*height/30, width/10, height/15, 0, hotPink, black, beachStorm);

  //green target colour button
  targetColourButton(width/5 + width/40 + 4*width/8, height/2 + height/25 + 9*height/30, width/10, height/15, 0, chromaKeyGreen, black, beachStorm);

  //sun target colour button
  targetColourButton(width/5 + width/40 + 5*width/8, height/2 + height/25 + 9*height/30, width/10, height/15, 0, sun, black, beachStorm);
  
}



void optionsClicks() {
  if (touchingMouse(width - width/10, height/15, width/10, height/20)) {
    if (backToPauseScreen) {
      mode = PAUSE;
    } else if (backToPauseScreen == false) {
      mode = INTRO;
    }
  }

  //touching length decrease
  if (touchingMouse(width/5 + width/40, height/4, width/10, height/15)) {
    crosshairLength--;
  }

  //touching length increase
  if (touchingMouse(width/5 + width/40 + width/8, height/4, width/10, height/15)) {
    crosshairLength++;
  }

  //touching gap decrease
  if (touchingMouse(width/5 + width/40, 2*height/5 -10, width/10, height/15)) {
    gap -= 2;
  }

  //touching gap increase
  if (touchingMouse(width/5 + width/40 + width/8, 2*height/5 - 10, width/10, height/15)) {
    gap += 2;
  }

  //touching bgreen
  if (touchingMouse(width/5 + width/40, height/2 + height/25, width/10, height/15)) {
    c = bGreen;
    crossC = "Teal";
  }

  //touching green
  if (touchingMouse(width/5 + width/40 + width/8, height/2 + height/25, width/10, height/15)) {
    c = green;
    crossC = "Green";
  }

  //touching cyan
  if (touchingMouse(width/5 + width/40 + 2*width/8, height/2 + height/25, width/10, height/15)) {
    c = cyan;
    crossC = "Cyan";
  }

  //touching yellow
  if (touchingMouse(width/5 + width/40 + 3*width/8, height/2 + height/25, width/10, height/15)) {
    c = yellow;
    crossC = "Yellow";
  }

  //touching pink
  if (touchingMouse(width/5 + width/40 + 4*width/8, height/2 + height/25, width/10, height/15)) {
    c = pink;
    crossC = "Pink";
  }
  
  //touching white
  if (touchingMouse(width/5 + width/40 + 5*width/8, height/2 + height/25, width/10, height/15)) {
    c = white;
    crossC = "White";
  }
  
  //touching sens decrease
  if(touchingMouse(width/5 + width/40, 32*height/47, width/10, height/15)){
   sens--; 
  }
  
  //touching sens increase
  if(touchingMouse(width/5 + width/40 + width/8, 32*height/47, width/10, height/15)){
   sens++; 
  }
  
  //touching target c red
  if(touchingMouse(width/5 + width/40, height/2 + height/25 + 9*height/30, width/10, height/15)){
   tc = red;
   targetC = "Red";
  }
  
  //touching target c blue
  if(touchingMouse(width/5 + width/40 + width/8, height/2 + height/25 + 9*height/30, width/10, height/15)){
   tc = blue;
   targetC = "Blue";
  }
  
  //touching target c purple
  if(touchingMouse(width/5 + width/40 + 2*width/8, height/2 + height/25 + 9*height/30, width/10, height/15)){
   tc = violet; 
   targetC = "Purple";
  }
  
  //touching target c pink
  if(touchingMouse(width/5 + width/40 + 3*width/8, height/2 + height/25 + 9*height/30, width/10, height/15)){
   tc = hotPink;
   targetC = "Pink";
  }
  
  //touching target c green
  if(touchingMouse(width/5 + width/40 + 4*width/8, height/2 + height/25 + 9*height/30, width/10, height/15)){
   tc = chromaKeyGreen;
   targetC = "Green";
  }
  
  //touching target c yellow
  if(touchingMouse(width/5 + width/40 + 5*width/8, height/2 + height/25 + 9*height/30, width/10, height/15)){
   tc = sun;
   targetC = "Yellow";
  }
}
