
float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, upX, upY, upZ;

boolean wkey, akey, skey, dkey, spacekey;

boolean ripple, snowflake;

float leftRightAngle, upDownAngle;

int sens;

ArrayList<GameObject> objects;

boolean backToPauseScreen;

import java.awt.Robot;

Robot rbt;

//target colour options
color red = #D11518;
color blue = #0221DE;
color violet = #CC07F5;
color hotPink = #F50796;
color chromaKeyGreen = #07F521;
color sun = #F4F507;
color orange = #F56707;
color tc = violet;
String targetC = "Violet";

//colour theme
color aoi = #69D2E7;
color pondWater = #A7DBD8;
color beachStorm = #E0E4CC;
color goldFish = #F38630;
color goldFish2 = #FA6900;
color purp = #6A12C4;
color frogGreen = #67C412;

//map colours
color lava = #cd604a;
color brown = #3c2f2f;
color black = #000000; //reg. bricks
color white = #FFFFFF; //empty bricks
color lblue = #7092BE; //mossy bricks

//crosshair color options
color bGreen = #00FF9B;
color green = #00FF00;
color cyan = #00FFFF;
color yellow = #FFFF00;
color purple = #800080;
color pink = #FF69B4;

//map variables
int gridSize;
PImage map;
PImage Mossy_Stone;
PImage Oak_Plank;
PImage cobble;
PImage stone_brick;
PImage Wax;
PImage Magma;
PImage Magma2;

//shoot variables
int shotTimer, threshold;

//gametimer
int gameTimer, gameTimerThreshold;

int colDist;

//canvases
PGraphics world;
PGraphics HUD;

int mode;

//target number
final int TNUMBER = 25;
int tCount = TNUMBER;

//bullet colour
color b = white;

//crosshair variables
int crosshairLength, gap;
color c = bGreen;
String crossC = "Teal";

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OVER = 3;
final int WIN = 4;
final int OPTIONS = 5;

void setup() {
  mode = INTRO;

  //object limits
  int targetCap = 6;
  int snowCap = 20;
  int rippleCap = 2;

  //crosshair variables
  crosshairLength = 7;
  gap = 4;

  //default sens
  sens = 3;

  //create canvases
  background(255);
  world = createGraphics(width, height, P3D);
  HUD = createGraphics(width, height, P2D);

  shotTimer = 0;
  threshold = 20;
  
  gameTimer = 0;
  
  gameTimerThreshold = 100 * 60;

  colDist = 200;

  objects = new ArrayList<GameObject>();

  Mossy_Stone = loadImage("Mossy_Stone.png");
  Oak_Plank = loadImage("Oak_Planks.png");
  cobble = loadImage("cobble.png");
  stone_brick = loadImage("stone_brick.jpg");
  Wax = loadImage("Wax.png");
  Magma = loadImage("Magma.png");
  Magma2 = loadImage("Magma2.png");


  try {
    rbt = new Robot();
  }
  catch(Exception e) {
    e.printStackTrace();
  }

  size(displayWidth, displayHeight, P2D);

  wkey = akey = skey = dkey = false;

  //snowflake on/off
  ripple = snowflake = true;

  eyeX = width/2;
  eyeY = 8.5*height/10;
  eyeZ = height/2;

  upX = 0;
  upY = 1;
  upZ = 0;

  //snow
  rectMode(CENTER);

  //initialize map
  map = loadImage("map.png");
  gridSize = 100;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OVER) {
    over();
  } else if (mode == WIN) {
    win();
  } else if (mode == OPTIONS) {
    options();
  }
}
