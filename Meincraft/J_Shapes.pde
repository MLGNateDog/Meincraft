void cube(float x, float y, float z, color c, float size) {
  world.pushMatrix();
  world.translate(x, y, z);  
  world.fill(c);
  world.noStroke();
  world.box(size); //side length
  world.popMatrix();
}

void ball(float x, float y, float z, float size) {
  world.pushMatrix();
  world.translate(x, y, z);
  world.strokeWeight(2);
  world.noFill();
  //fill(c);
  world.sphere(size);
  world.popMatrix();
}

void Tball(float x, float y, float z, int size, color c) {
  world.pushMatrix();
  world.translate(x, y, z);
  world.noStroke();
  world.fill(c);
  world.sphere(size);
  world.popMatrix();
}

void Bball(float x, float y, float z, int size, color c) {
  world.pushMatrix();
  world.translate(x, y, z);
  world.noStroke();
  world.fill(c);
  world.sphere(size);
  world.popMatrix();
}
