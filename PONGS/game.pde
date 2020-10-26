void game() {


  background(90, 49, 37); 
  //draw paddles
  fill(203, 25, 18);
  circle(leftx, lefty, leftd);
  fill(14, 149, 92);
  circle(rightx, righty, rightd);

  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //scoreboard
  textSize(50);
  fill(203, 25, 1);
  text(leftscore, width/4, 100);
  fill(14, 149, 92);
  text(rightscore, 3*width/4, 100);
  // text(timer, 3*width/4, 550);
  timer=timer-1;

  //ball
  fill(255, 190, 93);
  circle(x, y, r);


  //ball movement
  if (timer<0) {
    x=x+vx;
    y=y+vy;
  }


  //hit target
  if (dist(leftx, lefty, x, y)<=leftd/2+r/2) {
    vx=(x-leftx)/15;
    vy=(y-lefty)/15;
    leftpaddle.play();
    leftpaddle.rewind();
  }
  if (dist(rightx, righty, x, y)<=rightd/2+r/2) {
    vx=(x-rightx)/15;
    vy=(y-righty)/15;
    rightpaddle.play();
    rightpaddle.rewind();
  }


  //paddles limitation
  if (lefty<150)lefty=150;
  if (lefty>450)lefty=450;
  if (righty<150)righty=150;
  if (righty>450)righty=450;

  //move paddles
  if (wkey==true)lefty=lefty-5;
  if (skey==true)lefty=lefty+5;

  //one player mode
  if (AI== false) {
    if (upkey==true) righty=righty-5; 
    if (downkey==true)righty=righty+5;
  } else {

    if (y>righty&&x>400)righty=righty+3; 
    if (y<righty&&x>400)righty=righty-3;
  }

  if (y>=550 || y<=50) {
    vy=vy*-1;
    wall.play();
    wall.rewind();
  }

  //scoring
  if (x<-60) {
    rightscore++;
    score.play();
    score.rewind();
    x=width/2;
    y=height/2;
    timer=100;
  }
  if (x>860) {
    leftscore++;
    score.play();
    score.rewind();
    x=width/2;
    y=height/2;
    timer=100;
  }

  if (leftscore==3||rightscore==3) {
    mode=GAMEOVER;
    clap.rewind();
  } else {
    mode=GAME;
  }
}


void gameClicks() {
  if (mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600);
  mode=PAUSE;
}
