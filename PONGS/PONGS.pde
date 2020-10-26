PFont A;
PFont B;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//IRIS ZHAO
//1-1 A


//mode framework
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;//paddles
float x, y, r;//ball
float vx, vy;//SPEED
boolean AI;

//keyboard variables
boolean wkey, skey, upkey, downkey;


//score variables
int leftscore, rightscore, timer;

//soudn variables
Minim minim;
AudioPlayer clap, wall, score, leftpaddle, rightpaddle, intro;

void setup() {
    A=createFont("SVR.ttf", 100);
  B=createFont("HPU.ttf", 70);
  size(800, 600);
  mode=INTRO;

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
  vx= random(-5,5);
  vy= random(-5, 5);

  //initialize score
  leftscore=rightscore=0;
  timer=100;

  //initialize keyboard vars
  wkey = skey=upkey=downkey=false;

  //minim
  minim=new Minim(this);

  clap= minim.loadFile("clapping.wav");
  wall= minim.loadFile("wall.wav");
  score= minim.loadFile("score.wav");
  leftpaddle= minim.loadFile("leftpaddle.wav");
  rightpaddle= minim.loadFile("rightpaddle.wav");
  intro= minim.loadFile("intro.mp3");
}


void draw() {
  if (mode== INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {   
    gameover();
  } else {
    println("Mode error:"+mode);
  }
}
