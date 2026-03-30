// Andrew Jiao | 25 Mar 2026 | Timer
import processing.sound.*;
SoundFile alarm;
Button btnStart, btnStop, btnReset;
int totalTime, startTime, timeLeft;
boolean running;

void setup() {
  size(500,500);
  alarm = new SoundFile(this, "alarm.mp3");
  btnStart = new Button(width/2,50,100,30,"Start");
  btnStop = new Button(width/2,100,100,30,"Stop");
  btnReset = new Button(width/2,150,100,30,"Reset");
  totalTime = 10;
  startTime = 0;
  running = false;
}

void draw () {
  background(139, 128, 0);
 
  if(running == true) {
    int elapsed = (millis() - startTime)/1000;
    timeLeft = totalTime - elapsed;
   
    if(timeLeft <= 0) {
      timeLeft = 0;
      running = false;
      alarm.play();
    }
  }
  btnStart.display();
  btnStop.display();
  btnReset.display();
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(255,44,44);
  text(timeLeft, width/2, height/2);
}

void mousePressed() {
  if(btnStart.isMouseOver() == true) {
    running = true;
    startTime = millis();
  }
  
  if(btnStop.isMouseOver() == true) {
    running = false;
    //timeLeft = 0;
  }
  if(btnReset.isMouseOver() == true) {
    running = false;
    timeLeft = totalTime;
    alarm.stop();
  }
}
