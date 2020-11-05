void pause() {
  fill(255);
  rect (365, 300, 50, 200);
  rect (465, 300, 50, 200);

  if (dist(mouseX, mouseY, 50, 50)<25) {
    fill(0, 255, 0);
  } else {
    fill(0);
  }
 stroke(255,0,0);
  circle(50, 50, 50);
  fill(255, 0, 0);
  triangle(40, 30, 40, 70, 70, 50);

 if (dist(mouseX, mouseY, 150, 50)<30) {
    fill(0, 255, 0);
  } else {
    fill(0);
  }
stroke(255,0,0);
circle(150,50,60);
fill(255, 0, 0);
textSize(20);
text("QUIT",150,50);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 50, 50)<25) {
 boop.play();  
 mode = game;
 boop.rewind();
}

 if (dist(mouseX, mouseY, 150, 50)<30) {
 boop.play();  
 mode = intro;
 boop.rewind();
 lives =3;
 score =0;
  int i=0;
  while(i<n){
    alive[i] = true;
 i++;
}
}
 }
