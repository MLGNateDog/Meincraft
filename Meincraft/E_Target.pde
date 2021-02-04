class Target extends GameObject {
  int size;
  int TSW;

  Target() {
    lives = 1;
    size = int(random(35, 50));
    TSW = 2;
    loc = new PVector(random(-1800, 1800), random(8*height/10, 9*height/10), random(-1800, 1800));
  }

  void act() {
    int rn = int(random(15, 20));
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (dist(loc.x, loc.y, loc.z, obj.loc.x, obj.loc.y, obj.loc.z) < (1.5*size + 1.5*obj.size)) {
          lives--;
          tCount--;
          //bullets intentionally don't die when they hit targets, makes for cool collateral shots
          objects.add(new Ripple(loc));
          for (int t = 0; t < rn; t++) {
            objects.add(new Particle(loc));
            objects.add(new tParticle(loc));
          }
        }
      }
      i++;

      if (tCount == 0) {
        mode = WIN;
        rbt.mouseMove(width/2, height/2 + 5);
      }
    }
  }

  void show() {
    //Tball(float x, float y, float z, float size, color c)
    Tball(loc.x, loc.y, loc.z, size, tc);
  }
}
