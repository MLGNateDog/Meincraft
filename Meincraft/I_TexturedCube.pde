void texturedCubeAdvanced(float x, float y, float z, PImage topTexture, PImage sideTexture, PImage bottomTexture, float size) {
  world.pushMatrix();
  world.translate(x, y, z);
  world.scale(size);

  world.noStroke();

  world.beginShape(QUADS);
  world.texture(topTexture);

  //top
  //     x, y, z, tx,ty
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, 1, 0);
  world.vertex(1, 0, 1, 1, 1);
  world.vertex(0, 0, 1, 0, 1);

  world.endShape();

  world.beginShape(QUADS);
  world.texture(bottomTexture);
  //bottom
  world.vertex(0, 1, 0, 0, 0);
  world.vertex(1, 1, 0, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(0, 1, 1, 0, 1);

  world.endShape();

  world.beginShape(QUADS);
  world.texture(sideTexture);
  //front
  world.vertex(0, 0, 1, 0, 0);
  world.vertex(1, 0, 1, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(0, 1, 1, 0, 1);

  // back
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, 1, 0);
  world.vertex(1, 1, 0, 1, 1);
  world.vertex(0, 1, 0, 0, 1);

  //left
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(0, 0, 1, 1, 0);
  world.vertex(0, 1, 1, 1, 1);
  world.vertex(0, 1, 0, 0, 1);

  //right
  world.vertex(1, 0, 0, 0, 0);
  world.vertex(1, 0, 1, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(1, 1, 0, 0, 1);


  world.endShape();


  world.popMatrix();
}

void texturedCubeSimple(float x, float y, float z, PImage texture, float size) {
  world.pushMatrix();
  world.translate(x, y, z);
  world.scale(size);

  world.noStroke();

  world.beginShape(QUADS);
  world.texture(texture);

  //top
  //     x, y, z, tx,ty
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, 1, 0);
  world.vertex(1, 0, 1, 1, 1);
  world.vertex(0, 0, 1, 0, 1);

  //bottom
  world.vertex(0, 1, 0, 0, 0);
  world.vertex(1, 1, 0, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(0, 1, 1, 0, 1);

  //front
  world.vertex(0, 0, 1, 0, 0);
  world.vertex(1, 0, 1, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(0, 1, 1, 0, 1);

  // back
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, 1, 0);
  world.vertex(1, 1, 0, 1, 1);
  world.vertex(0, 1, 0, 0, 1);

  //left
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(0, 0, 1, 1, 0);
  world.vertex(0, 1, 1, 1, 1);
  world.vertex(0, 1, 0, 0, 1);

  //right
  world.vertex(1, 0, 0, 0, 0);
  world.vertex(1, 0, 1, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(1, 1, 0, 0, 1);


  world.endShape();


  world.popMatrix();
}
