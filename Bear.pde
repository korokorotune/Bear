int count;

void setup() {
  size(900, 600);
  background(0, 191, 255, 127);
  count = 0;
  smooth();
}

void body() {
  beginShape();
  fill(255, 175, 13);
  curveVertex(420, 370);
  curveVertex(420, 370);
  curveVertex(360, 390);
  curveVertex(350, 420);
  curveVertex(410, 430);
  curveVertex(390, 550);
  curveVertex(420, 560);
  curveVertex(450, 500);
  curveVertex(480, 560);
  curveVertex(510, 550);
  curveVertex(490, 430);
  curveVertex(550, 420);
  curveVertex(540, 390);
  curveVertex(480, 370);
  curveVertex(480, 370);
  endShape();
}

void bear() {
  beginShape();
  stroke(100);
  strokeWeight(3);
  fill(255, 175, 13);
  ellipse(380, 240, 60, 60);
  ellipse(520, 240, 60, 60);
  ellipse(450, 300, 200, 150);

  fill(0);
  ellipse(495, 300, 20, 20);
  ellipse(405, 300, 20, 20);  
  ellipse(450, 315, 10, 10);

  strokeWeight(5);
  line(450, 315, 450, 325);
  line(450, 325, 440, 335);
  line(450, 325, 460, 335);
  endShape();

  beginShape();
  strokeWeight(3);
  body();
  fill(255, 175, 13);
  stroke(0);
  endShape();
}

void draw() {  
  beginShape();
  endShape();
  fill(255, 0, 0);
  ellipse(900, 0, 300, 300);
  textSize(36);
  fill(0);
  text("Click!!", 0, 30);
  text("SUN", 800, 50);
}

void mousePressed() {
  count++;
  noStroke();
  fill(255);
  rect(0, 0, width, height);
  if (count==1) {
    background(0, 191, 255, 200);
    fill(0, 0, 0, 40);
    textSize(18);
    text("You over there!", 250, 250);
    translate(100, 0);
    rotate(radians(30));
    scale(0.4);
    bear();
  }
  else if (count==2) {
    background(0, 191, 255, 200);
    fill(0, 0, 0, 127);
    textSize(26);
    text("Now...!", 400, 300);
    translate(-300, 300);
    rotate(radians(-30));
    scale(1);
    bear();
  }
  else if (count==3) {
    background(0, 191, 255, 200);
    textSize(30);
    fill(0);
    text("Do you talk about", 580, 450);
    text("D programming language", 520, 490);
    text("by any chance?", 580, 530);
    translate(-1100, -550);
    scale(3);
    bear();
    count=0;
  }
}

