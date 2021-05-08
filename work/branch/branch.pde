Branch _trunkLeft1, _trunkLeft2;
Branch _trunkRight1, _trunkRight2;

void setup() {
  size(700, 700);
  background(255);
  newTree();
  
  save("branch.png");
}

void newTree() {
  _trunkLeft1 = new Branch(1, 0, 0, height/4, 3, 3, true);
  _trunkLeft1.drawMe();
  
  _trunkLeft2 = new Branch(1, 0, 0, height/4, 3, 3, true);
  _trunkLeft2.drawMe();
  
  _trunkRight1 = new Branch(1, 0, width, 2*height/3, 3, 3, false);
  _trunkRight1.drawMe();
  
  _trunkRight2 = new Branch(1, 0, width, 2*height/3, 3, 3, false);
  _trunkRight2.drawMe();
}

class Branch {
  float level, index;
  float x, y;
  float endx, endy;
  int _numChildren;
  int _maxLevels;
  
  Branch[] children = new Branch[0];
  
  Branch(float lev, float ind, float ex, float why,
    int numChildren, int maxLevels, boolean isLeft) {
      
    level = lev;
    index = ind;
    
    _numChildren = numChildren;
    _maxLevels = maxLevels;
    
    if (isLeft) {
      updateLeft(ex, why);
    } else {
      updateRight(ex, why);
    }
    
    if (level < _maxLevels) {
      children = new Branch[_numChildren];
      for (int x=0; x<_numChildren; x++) {
        children[x] = 
          new Branch(level+1, x, endx, endy, numChildren, maxLevels, isLeft);
      }
    }
  }
  
  void updateLeft(float ex, float why) {
    x = ex;
    y = why;
    endx = x + (100 + random(100))/level;
    endy = y + ((level * random(100) - 50))/level;
  }
  
  void updateRight(float ex, float why) {
    x = ex;
    y = why;
    endx = x - (100 + random(100))/level;
    endy = y + ((level * random(100) - 50))/level;
  }
  
  void drawMe() {
    strokeWeight(1.5*_maxLevels - 1.5*level + 1);
    
    line(x, y, endx, endy);
    ellipse(x, y, 1.5, 1.5);
    
    for (int i=0; i<children.length; i++) {
      children[i].drawMe();
    }
  }
}
