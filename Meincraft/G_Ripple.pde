
class Ripple extends GameObject {

  //instance variables
  float speed, size;
  int t;

  //constructor
  Ripple(PVector newloc) {
    loc = newloc.copy();
    size = 1;
    speed = 10; //rate at which the ripple grows
    lives = 1;
    t = 255;
  }

  //behaviour functions
  void act() {
    size += speed; //grow
    
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      i++;
    }
    if(size > 20){
     t -= 20;
     if(t <= 0){
      lives = 0; 
     }
    }
  }

  void show() {
    //a = map(size, purple, 255, 0);
    world.stroke(tc, t); //tc = target colour, t = transparency
    ball(loc.x, loc.y, loc.z, size);
    //print("SHOW");
  }
}
