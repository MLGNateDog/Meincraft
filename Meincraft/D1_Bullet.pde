class Bullet extends GameObject {
  PVector dir;
  float speed;

  Bullet() {
    super(eyeX, eyeY, eyeZ, 10);
    speed = 100;
    size = 2;
    float vx = cos(leftRightAngle);
    float vy = tan(upDownAngle);
    float vz = sin(leftRightAngle);
    dir = new PVector(vx, vy, vz);
    dir.setMag(speed);
  }


  void act() {
    int rn = int(random(7, 12));
    int hitX = int(loc.x + 2000) / gridSize;
    int hitY = int(loc.z + 2000) / gridSize;

    if (map.get(hitX, hitY) == brown && loc.y <= height - size/2 && loc.y >= height - gridSize*3 + size/2) {
      loc.add(dir);
    } else {
      lives = 0;
      for (int i = 0; i < rn; i++) {
        objects.add(new Particle(loc));
        //objects.add(new tParticle(loc));
      }
    }
  }

  void show() {
    world.pushMatrix();
    world.translate(loc.x, loc.y, loc.z);
    world.fill(b);
    world.noStroke();
    world.sphere(size); 
    world.popMatrix();
  }
}
