void move() {

  if (akey && canMoveLeft()) {
    eyeX -= cos(leftRightAngle + PI/2) * 10; 
    eyeZ -= sin(leftRightAngle + PI/2) * 10;
  }
  if (dkey && canMoveRight()) {
    eyeX += cos(leftRightAngle + PI/2) * 10; 
    eyeZ += sin(leftRightAngle + PI/2) * 10;
  }

  if (wkey && canMoveForward()) {
    eyeX += cos(leftRightAngle) * 13;
    eyeZ += sin(leftRightAngle) * 13;
  }
  if (skey && canMoveBackward()) {
    eyeX -= cos(leftRightAngle) * 8;
    eyeZ -= sin(leftRightAngle) * 8;
  }

  focusX = eyeX + cos(leftRightAngle) * 100;
  focusY = eyeY + tan(upDownAngle) * 100;
  focusZ = eyeZ + sin(leftRightAngle) * 100;


  if (frameCount < 2) {
    rbt.mouseMove(width/2, height/2);
    mouseX = width/2;
    mouseY = height/2;
  }
  if (mouseX < 2) {
    rbt.mouseMove(width-2, mouseY);
  } else if (mouseX > width-2) {
    rbt.mouseMove(2, mouseY);
  } 
  leftRightAngle += (mouseX - pmouseX)*((0.01 * sens)*0.2);
  upDownAngle    += (mouseY - pmouseY)*((0.005 * sens)*0.2);

  if (upDownAngle > radians(89.9)) upDownAngle = radians(89.9);
  if (upDownAngle < -radians(89.9)) upDownAngle = -radians(89.9);
}

void shoot() {
  shotTimer++; //shotTimer increases by 1 every frame

  if (spacekey && shotTimer > threshold) { //checking to see if can shoot
    objects.add(new Bullet()); //add the bullet
    shotTimer = 0; //reset the timer
  }
}

boolean canMoveForward() {
  float fwdX, fwdY, fwdZ;
  float leftX, leftY, leftZ;
  float rightX, rightY, rightZ;
  int mapX, mapY;
  int leftMapX, leftMapY;
  int rightMapX, rightMapY;

  fwdX = eyeX + cos(leftRightAngle) * colDist;
  fwdY = eyeY;
  fwdZ = eyeZ + sin(leftRightAngle) * colDist;

  leftX = eyeX + cos(leftRightAngle + radians(50)) * colDist;
  leftY = eyeY;
  leftZ = eyeZ + sin(leftRightAngle + radians(50)) * colDist;

  rightX = eyeX + cos(leftRightAngle - radians(50)) * colDist;
  rightY = eyeY;
  rightZ = eyeZ + sin(leftRightAngle - radians(50)) * colDist;

  mapX = int(fwdX + 2000)/gridSize;
  mapY = int(fwdZ + 2000)/gridSize;

  leftMapX = int(leftX + 2000)/gridSize;
  leftMapY = int(leftZ + 2000)/gridSize;

  rightMapX = int(rightX + 2000)/gridSize;
  rightMapY = int(rightZ + 2000)/gridSize;

  //println(mapX, mapY);
  if ((map.get(mapX, mapY) == brown) && (map.get(leftMapX, leftMapY) == brown) && (map.get(rightMapX, rightMapY) == brown)) {
    return true;
  } else {
    return false;
  }
}


boolean canMoveRight() {
  float rightX, rightY, rightZ;
  float rightLX, rightLY, rightLZ;
  float rightRX, rightRY, rightRZ;
  int mapX, mapY, rightLMapX, rightLMapY, rightRMapX, rightRMapY;

  rightX = eyeX + cos(leftRightAngle + radians(90)) * colDist;
  rightY = eyeY;
  rightZ = eyeZ + sin(leftRightAngle + radians(90)) * colDist;

  rightLX = eyeX + cos(leftRightAngle + radians(90) + radians(20)) * colDist;
  rightLY = eyeY;
  rightLZ = eyeZ + sin(leftRightAngle + radians(90) + radians(20)) * colDist;

  rightRX = eyeX + cos(leftRightAngle + radians(90) - radians(20)) * colDist;
  rightRY = eyeY;
  rightRZ = eyeZ + sin(leftRightAngle + radians(90) - radians(20)) * colDist;

  mapX = int(rightX + 2000)/gridSize;
  mapY = int(rightZ + 2000)/gridSize;

  rightLMapX = int(rightLX + 2000)/gridSize;
  rightLMapY = int(rightLZ + 2000)/gridSize;

  rightRMapX = int(rightRX + 2000)/gridSize;
  rightRMapY = int(rightRZ + 2000)/gridSize;

  if ((map.get(mapX, mapY) == brown) && (map.get(rightLMapX, rightLMapY) == brown) && (map.get(rightRMapX, rightRMapY) == brown)) {
    return true;
  } else {
    return false;
  }
}

boolean canMoveLeft() {
  float leftX, leftY, leftZ;
  float leftLX, leftLY, leftLZ;
  float leftRX, leftRY, leftRZ;
  int mapX, mapY, leftLMapX, leftLMapY, leftRMapX, leftRMapY;

  leftX = eyeX + cos(leftRightAngle - radians(90)) * colDist;
  leftY = eyeY;
  leftZ = eyeZ + sin(leftRightAngle - radians(90)) * colDist;

  leftLX = eyeX + cos(leftRightAngle - radians(90) + radians(20)) * colDist;
  leftLY = eyeY;
  leftLZ = eyeZ + sin(leftRightAngle - radians(90) + radians(20)) * colDist;

  leftRX = eyeX + cos(leftRightAngle - radians(90) - radians(20)) * colDist;
  leftRY = eyeY;
  leftRZ = eyeZ + sin(leftRightAngle - radians(90) - radians(20)) * colDist;

  mapX = int(leftX + 2000)/gridSize;
  mapY = int(leftZ + 2000)/gridSize;

  leftLMapX = int(leftLX + 2000)/gridSize;
  leftLMapY = int(leftLZ + 2000)/gridSize;

  leftRMapX = int(leftRX + 2000)/gridSize;
  leftRMapY = int(leftRZ + 2000)/gridSize;

  if ((map.get(mapX, mapY) == brown) && (map.get(leftLMapX, leftLMapY) == brown) && (map.get(leftRMapX, leftRMapY) == brown)) {
    return true;
  } else {
    return false;
  }
}

boolean canMoveBackward() {
  float bwdX, bwdY, bwdZ;
  float leftX, leftY, leftZ;
  float rightX, rightY, rightZ;
  int mapX, mapY, leftMapX, leftMapY, rightMapX, rightMapY;

  bwdX = eyeX + cos(leftRightAngle) * colDist;
  bwdY = eyeY;
  bwdZ = eyeZ + sin(leftRightAngle + radians(180)) * colDist;

  leftX = eyeX + cos(leftRightAngle + radians(180) + radians(25)) * colDist;
  leftY = eyeY;
  leftZ = eyeZ + sin(leftRightAngle + radians(180) + radians(25)) * colDist;

  rightX = eyeX + cos(leftRightAngle + radians(180) - radians(25)) * colDist;
  rightY = eyeY;
  rightZ = eyeZ + sin(leftRightAngle + radians(180) - radians(25)) * colDist;

  mapX = int(bwdX + 2000)/gridSize;
  mapY = int(bwdZ + 2000)/gridSize;

  leftMapX = int(leftX + 2000)/gridSize;
  leftMapY = int(leftZ + 2000)/gridSize;

  rightMapX = int(rightX + 2000)/gridSize;
  rightMapY = int(rightZ + 2000)/gridSize;

  if ((map.get(mapX, mapY) == brown) && (map.get(leftMapX, leftMapY) == brown) && (map.get(rightMapX, rightMapY) == brown)) {
    return true;
  } else {
    return false;
  }
}
