Ball bouncy; 

void setup() {
  size(640, 480);
  bouncy = new Ball(width/2, 60, 2.5, 5);
}

void draw() {
  background(#0D0D0D);
  bouncy.update();
}
