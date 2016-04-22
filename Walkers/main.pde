// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Walker w;

void setup() {
  fullScreen(P3D);
  // Create a walker object
  w = new Walker();
  background(255);
}

void draw() {
  // Run the walker object
  w.step();
  w.render();
}