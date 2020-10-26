void intro() {
  textSize(150);
  textFont(A);
 intro.play();
  background(0);

  strokeWeight(1);
  fill(255); 
  textSize(200);
  text("PONG", 200, 250);
  fill(255);
  tactileintro(400, 450, 200, 80);
  rect(440, 450, 200, 80);
  textSize(40);
  fill(0);
  textFont (B);
  text("2 PLAYER", 450, 510);
  fill(255);
  tactileintro(140, 450, 200, 80);
  rect(140, 450, 200, 80);
  fill(0);
  text("1 PLAYER", 150, 510);
}


void introClicks() {
  //1 player
  if (mouseX>440&&mouseX<640&&mouseY>450&&mouseY<530) {
    mode=GAME;
    AI = false;
  }
  //2 player 
  if (mouseX>140&&mouseX<340&&mouseY>450&&mouseY<530) {
    mode=GAME;
    AI = true;
  }
}

void tactileintro(int x, int y, int w, int h) {
  if (mouseX>x&&mouseX<x+w&& mouseY>y&&mouseY<y+h) {
    stroke(252, 171, 171);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(2);
  }
}
