void gameOver() {
    background(0);
  if (lives == 0) {
    fill(0, 255, 0);
    text("GAME OVER YOU LOSE", 450, 400);
fail.play();

}else{

  

    text("GAME OVER YOU WIN", 450, 400);
 win.play(); 
}
}

void gameOverClicks() {
  mode = intro;
 boop.play();
  lives = 3;
 boop.rewind();
  score =0;
  int i=0;
  while(i<n){
    alive[i] = true;
 i++;
}
}
