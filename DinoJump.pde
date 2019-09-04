Dino dino = new Dino();
Background bg = new Background();
float xPos;
float yPos;
float diff;
boolean jumped = false;
void setup() {
  size(400, 400);
  xPos = 200;
  yPos = 200;
  dino.show();
  bg.show();
}

void draw() {
  background(0);
  stroke(255);
  dino.show();
  bg.show();
  keyPressed();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if (jumped != true) {
        diff = 200 - yPos;
        float m = map(diff, 0, 75, 5, 0);
        yPos -= m;
        if ((int)m == 0) {
          jumped = true;
        }
      }
      if (jumped == true) {
        diff = 200 - yPos;
        float m = map(diff, 0, 75, 5, 0);
        yPos += m;
        if ((int)m == 5) {
          jumped = false;
          keyCode = DOWN;
        }
      }
    }
  }
}
