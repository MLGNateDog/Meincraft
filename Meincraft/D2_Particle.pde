class Particle extends GameObject {

  PVector vel, grav; //velocity, gravity
  float speed;
  int t; //transparency
  float size = 6;

  Particle(PVector newloc) {
    super();
    t = 255;
    loc = newloc.copy();
    speed = 50;  //max speed

    float vx = random(-4, 4);
    float vy = random(-4, 4);
    float vz = random(-4, 4);

    vel = new PVector(vx, vy, vz);
    vel.setMag(speed); //cap the speed
    grav = new PVector(0, 7, 0); //fall downward
  }

  void act() {
    if (loc.y >= height - size/2) { //stop from falling through the floor
      loc.y = height - size/2;
    }else{
      vel.add(grav);
      loc.add(vel);
    }
    

    if (t < 0 || tCount == 0) {
      lives = 0;
    }
  }

  void show() {
    world.pushMatrix();
    world.translate(loc.x, loc.y, loc.z);
    world.fill(white, t);
    world.noStroke();
    world.box(size);
    world.popMatrix();
    t--;
  }
}
