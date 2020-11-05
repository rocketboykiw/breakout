void game() {
  background(0);

  //score
  textSize(50);
  fill(0, 255, 0);
  text ("LIVES"+lives, 100, 700);
  text ("SCORE"+score, 750, 700);
  timer = timer - 1;

  if (bally>800) {
    lives =lives - 1;
    bally= height/2+100;
    ballx= width/2;
  }

  if (lives == 0) {
    mode = gameOver;
  }
  if (score == 32) {
    mode = gameOver;
  }





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
if (px > 800) {
  px = 800;
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
  beep.play();
  vx=(ballx-px)/10;
  vy=(bally-py)/10;
  beep.rewind();
}

//wall
if (ballx < balld/2 || ballx >width -balld/2) {
  beep.play();
  vx = vx * - 1;
  beep.rewind();
}

if (bally < balld/2) {
  beep.play();
  vy = vy * - 1;
  beep.rewind();
}



timer = timer - 1;





//bricks

int i = 0; //starting page
while (i < n) {//keep going until we get to the last page
  if (alive [i] ==true) {
    manageBrick(i);
  }
  i = i + 1;//go to next page
}

//pause
stroke(0);
strokeWeight(1);
if (dist(mouseX, mouseY, 50, 50)<25) {
  fill(255, 0, 0);
} else {
  fill(0);
}
stroke(0, 255, 0);
circle(50, 50, 50);
fill(0, 255, 0);
rect(35, 35, 10, 30);
rect(55, 35, 10, 30);
}






void gameClicks() {
  if (dist(mouseX, mouseY, 50, 50)<25) {
    boop.play();
    mode = pause;
    boop.rewind();
  }
}

void manageBrick(int i) {

  if (y[i] == 100) {
    fill(255, 0, 0); 
    stroke(188, 30, 30);
  }
  if (y[i] == 200) {
    fill(0, 255, 0);
    stroke(26, 183, 24);
  }
  if (y[i] == 300) {
    fill(255, 0, 0);
    stroke(188, 30, 30);
  }
  if (y[i] == 400) {
    fill(0, 255, 0);
    stroke(26, 183, 24);
  }
  circle( x[i], y[i], brickd);// draw the circle at page i
  if (dist(ballx, bally, x[i], y[i]) <= balld/2 +brickd/2) {//brick bounce
    vx=(ballx - x[i])/5;
    vy=(bally - y[i])/5;
    alive[i]=false;
    bre.play();
    score++;
    bre.rewind();
  }
}
