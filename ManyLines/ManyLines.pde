// required import so that we can write to PDF file
import processing.pdf.*;
// object that will let us write to PDF file
PGraphics vectorImage;

void setup() {
 
  size(725, 550);
  background(255);
   // create the empty PDF output file
   vectorImage = createGraphics(width, height, PDF, "output.pdf");  
   // start drawing to the PDF file
   vectorImage.beginDraw();
 
   noFill();
   vectorImage.noFill();
 
}

void draw() {
  
  
    float x = random(0, width);
    float y = random(0, width);
 line(x, y, mouseX, mouseY);
  vectorImage.line(0, 0, mouseX, mouseY);

  
}

//void mousePressed() {

//}


void keyPressed() {
  // stop the program and exit
  if (key == 's') {
    // stop drawing to the PDF
    vectorImage.endDraw();
    vectorImage.dispose();
    vectorImage = null;
    // exit the program
    exit();
  }
}
