class rotate {
  float x, y, z, w, xs, ys;
  color c, d;

  rotate(int zr, int wr) {
    xs = random(-10, 10);
    ys = random(-10, 10);
    x = width/2;
    y = height/2;
    z = zr;
    w = wr;
    c = color(random(360), 100, 100);
  }

  void display() {
    fill(c);
    rect(x, y, z, w);
    if (keyPressed) {
      z+=random(-10, 10);
      w+=random(-10, 10);
      if (z>150) {
        z=50;
      }
      if (w>150) {
        w=50;
      }
    }
  }

  void rot() {
    pushMatrix();
    translate(x, y);
    rotate(radians(random(0, 360)));
    c = color(random(360), 100, 100);
    fill(c);
    rect(0, 0, z, w);
    popMatrix();
  }

  void move() {
    x+=xs;
    y+=ys;
    if (x>=width) {
      xs*=-1;
    }
    if (x<=0) {
      xs*=-1;
    }
    if (y>=height) {
      ys*=-1;
    }
    if (y<=0) {
      ys*=-1;
    }
  }
}

