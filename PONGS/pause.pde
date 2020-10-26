void pause() {
  intro.pause();
  textSize(150);
  fill(255, 0, 0);
  text("PAUSED", 230, 320);
}

void pauseClicks() {
  if (mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600);
  mode=GAME;
  intro.play();
} 
