rotate s1, s2, s3, s4;
PImage betty;
float scale;
float t, ts;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  textAlign(CENTER);
  background(0);
  colorMode(HSB, 360, 100, 100);
  textSize(25);
  t = width/2;
  ts = .5;
  s1 = new rotate(125, 125);
  s2 = new rotate(100, 100);
  s3 = new rotate(75, 75);
  s4 = new rotate(50, 50);
  betty = loadImage("Betty.jpg");
  scale = .5;
}

void draw() {
  if (mousePressed) {
    tint(random(360), 100, 100, random(100));
  }
  else {
    tint(255, random(50));
  }
  image(betty, 56.5, 0, betty.width*scale, betty.height*scale);
  s1.display();
  s2.display();  
  s3.display();
  s4.display();
  s1.rot();
  s2.rot();
  s3.rot();
  s4.rot();
  s1.move();
  s2.move();
  s3.move();
  s4.move();
  fill(0);
  text("Betty White", t, 420);
  t+=ts;
  if (t+t/5>=width-49) {
    ts*=-1;
  }
  if (t-t/2<=61) {
    ts*=-1;
  }
}

