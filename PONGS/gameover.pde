void gameover() {

  clap.play();
  intro.pause();
  if (leftscore==3) {
    textSize(200);
    fill(206, 4, 41);
    text("LEFT", 270, 250);
    text("WINS!!", 270, 400);
  } else {
    fill(45, 100, 0);
    textSize(200);
    text("RIGHT", 270, 250);
    text("WINS!!", 270, 400);
  }
}

void gameoverClicks() {
  reset();
  if (mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600);
  mode=INTRO;
}

void reset() {

  intro.rewind();
  clap.pause();
  //initialize paddles
  leftx=0;
  lefty= height/2;
  leftd=200;
  rightx=width;
  righty=height/2;
  rightd=200;


  //initialize ball
  x=width/2;
  y=height/2;
  r=50;
  vx= random(-5, 5);
  vy= random(-5, 5);

  //initialize score
  leftscore=rightscore=0;
  timer=100;

  //initialize keyboard vars
  wkey = skey=upkey=downkey=false;
}
