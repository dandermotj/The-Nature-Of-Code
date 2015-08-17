// A random walker object!

class Walker {
  int x, y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    strokeWeight(2);
    point(x, y);
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {

    float r = random(1);
    // A 50% of moving towards the mouse
    if (r < 0.05) {    
      
      //checks if current x,y is < or > mouse x, y
      //takes all non zero cases
      //then divides the difference by it's absolute value
      //to give us +1 or -1
      
      int xdir = (mouseX-x);
      int ydir = (mouseY-y);
      
      if (xdir != 0) {
        xdir /= abs(xdir);
      } 
      if (ydir != 0) {
        ydir /= abs(ydir);
      }
      //if x,y equal mouse x,y (the zero case)
      //just add zero to x, y
      x += xdir;
      y += ydir;
    } else {     
      int xdir = int(random(-2, 2));
      int ydir = int(random(-2, 2));
      x += xdir;
      y += ydir;
    }

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}
