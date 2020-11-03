void game() {
  background(0);

  // drawpaddles
  strokeWeight(5);
  stroke(0, 255, 0);
  fill(0);
  circle(px, py, pd); 

  //move paddle
  if (leftkey ==true) px = px - 5;
  if (rightkey == true) px = px +5;

  if (px < 100) {
    px = 100;
  }
  if (px > 700) {
    px = 700;
  }  



  //ball
  stroke(0, 255, 0);
  fill(0, 255, 0);
  circle(ballx, bally, balld);

  //ball move

  if (timer <0 ) {
    ballx=ballx+vx;
    bally=bally+vy;
  }

  //ball bounce
  if (dist(px, py, ballx, bally) <= pd/2 +balld/2) {
    vx=(ballx-px)/10;
    vy=(bally-py)/10;
  }

  //wall
  if (ballx < balld/2 || ballx >width -balld/2) {
    vx = vx * - 1;
  }

  if (bally < balld/2|| bally >800 -balld/2) {
    vy = vy * - 1;
  }

  //score

  timer = timer - 1;



 

  //bricks
 
  int i = 0; //starting page
  while (i < n) {//keep going until we get to the last page
  circle( x[i] , y[i], brickd);// draw the circle at page i

 if (dist(ballx, bally, x[i], y[i]) <= balld/2 +brickd/2) {//brick bounce
    vx=(ballx - x[i])/10;
    vy=(bally - y[i])/10;
  }
 
 i =i + 1;//go to next page
  }





}






void gameClicks() {
  
}
