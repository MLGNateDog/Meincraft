void drawMap() {
  for (int x = 0; x < map.width; x++) {
    for (int y = 0; y < map.height; y ++) {
      color c = map.get(x, y);
      if (c == lava) {
        texturedCubeSimple(x*gridSize-2000, height-gridSize, y*gridSize-2000, Magma, gridSize);
        texturedCubeSimple(x*gridSize-2000, height-gridSize*2, y*gridSize-2000, Magma, gridSize);
        texturedCubeSimple(x*gridSize-2000, height-gridSize*3, y*gridSize-2000, Magma, gridSize);
      }
      /*
      if (c == black) {
        texturedCubeSimple(x*gridSize-2000, height-gridSize, y*gridSize-2000, stone_brick, gridSize);
        texturedCubeSimple(x*gridSize-2000, height-gridSize*2, y*gridSize-2000, stone_brick, gridSize);
        texturedCubeSimple(x*gridSize-2000, height-gridSize*3, y*gridSize-2000, stone_brick, gridSize);
      }
      */
      if (c == white) {
      }
    }
  }
}

void drawAxis() {
}

void drawFloor(int start, int end, int level, int gap) {
  int x = start;
  int z = start;
  while (z < end) {
    texturedCubeSimple(x, level, z, Magma2, gap);
    x += gap;
    if (x >= end) {
      x = start;
      z += gap;
    }
  }
}

void drawCeiling(int start, int end, int level, int gap) {
  int x = start;
  int z = start;
  while (z < end) {
    texturedCubeSimple(x, level, z, Wax, gap);
    x += gap;
    if (x >= end) {
      x = start;
      z += gap;
    }
  }
}
