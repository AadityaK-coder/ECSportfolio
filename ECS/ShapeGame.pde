// Aaditya Kuberan | 4 Mar 2026 | ShapeGame
int x, y, tx, ty,score;
PImage player;
PImage target;

void setup() {
 size(800,800);
 x= width/2;
 y= height/2;
 tx = int(random(20,width-20));
 ty = int(random(20,height-20));
 score = 0;
 player = loadImage("player.png");
 target = loadImage("object.png");
}

void draw() {
  background(127);
  scorePanel();
  target();
  imageMode(CENTER);
  image(player, x, y);
  //ellipse(x, y, 20, 20);
}

void target() {
  float d = dist(x,y,tx,ty);
  println(d);
  println(score);
  imageMode(CENTER);
  image(target, tx, ty);
  if(d<50) {
    score = score + 20;
    tx = int(random(20,width-20));
    ty = int(random(20,height-20));
  }
}

void scorePanel() {
  rectMode(CENTER);
  fill(127, 127);
  rect(width/2, 15, width, 30);
  fill(0);
  textSize(30);
  text("Score:" + score,20,25);
}

void keyPressed() {
  if(x > width) {
    x = 0;
  }
  
  if (x < 0) {
    x = width;
  }
  
  if (y > height) {
    y = 0;
  }
  
  if (y < 0) {
    y = height;
  }
  
  // WASD and Arrow Movement
  if (key == 'w' || key == 'W' || keyCode == UP) {
    y = y - 10;
  } else if(key == 's' || key == 'S' || keyCode == DOWN) {
    y = y + 10;
  } else if(key == 'a' || key == 'A' || keyCode == LEFT) {
    x = x - 10;
  } else if(key == 'd' || key == 'D' || keyCode == RIGHT) {
    x = x + 10;
  }
}
