// Aaditya Kuberan | March 18, 2026 | Mini project
int targetX, targetY;
int targetSize = 50;
int score = 0;

void setup() {
  size(600, 400);
  targetX = int(random(width));
  targetY = int(random(height));
}

void draw() {
  background(220);

  // Draw the target
  fill(161, 19, 219);
  ellipse(targetX, targetY, targetSize, targetSize);

  // Draw the score
  fill(0);
  textSize(24);
  text("Score: " + score, 20, 30);
}

void mousePressed() {
  float d = dist(mouseX, mouseY, targetX, targetY);
  if (d < targetSize/2) {
    score=score + 1;
    targetX = int(random(width));
    targetY = int(random(height));
  }
}
