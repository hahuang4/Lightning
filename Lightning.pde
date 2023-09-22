int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup() {
  size(800, 600);  // Set the canvas size
  strokeWeight(2); // Set the stroke weight
  background(0);   // Set the background color to black
}

void draw() {
  stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255)); // Set random stroke color
  while (endX <= width) {
    endX = startX + (int)(Math.random() * 10); // Randomly change endX
    endY = startY + (int)(Math.random() * 19) - 9; // Randomly change endY
    line(startX, startY, endX, endY); // Draw a line
    startX = endX; // Update startX
    startY = endY; // Update startY
  }
}

void mousePressed() {
  redraw();
  startX = 0; // Reset startX
  startY = 150; // Reset startY
  endX = 0; // Reset endX
  endY = 150; // Reset endY
  background(0); // Clear the canvas
}
