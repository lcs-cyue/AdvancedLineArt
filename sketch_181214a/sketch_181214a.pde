// reserve space in memory for an object of type PImage, to store the source image
PImage source;  

// setup() function runs once only
void setup() {

  // create the canvas
  // WIDTH  HEIGHT
  size(800, 530);

  // make the backgound white
  background(255);

  source = loadImage("2.png");
  source = loadImage("1.png");

  image(source, 330, 50);
}


void whiteLine(int x, int y) {
  noStroke();
  rect(x, y, 2, 500);
}
void draw() {

  int yPosition = 50;
  for (int position = 200; position <= 800; position += 8) {
    whiteLine(position, yPosition);
  }
}
