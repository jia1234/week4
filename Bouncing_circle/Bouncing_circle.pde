float x, y;
float ballSize=70;
float xspeed=5, yspeed=5;
float gravity = 0.1;
float braking = 0.09;


void setup() {
  size(640, 480);
  y=ballSize*1.5;
  x=width/2;
}

void draw() {
  background(#0D0D0D); // use colour selector
  fill(#DD71E5); // use colour selector RGB
  ellipse(x, y, ballSize, ballSize);

  if (y + ballSize/2 >= height) {
    yspeed = yspeed * -(1 - braking);
  } else if (y - ballSize/2 <= 0) {
    yspeed = yspeed * -(1 - braking);
  }

  y = y + yspeed;

  if (x + ballSize/2 >= width) {
    xspeed = xspeed * -(1 - braking);
  } else if (x - ballSize/2 <= 0) {
    xspeed = xspeed * -(1 - braking);
  }

  x = x + xspeed;
  
  yspeed = yspeed + gravity;

}
