class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(random(-2,2), random(-2, 2));
    acceleration = new PVector(-0.01, 0.01);
    topspeed = 10;
  }

  void update(){  
    velocity.add(acceleration);
    location.add(velocity);  
    velocity.limit(topspeed);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
      if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}
