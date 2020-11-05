void intro(){

  image(gif[f],0,0,width,height);
//modulus or mod:%
if (frameCount % 2 == 0) f++;
f++;
if (f == NP) f = 0;

  
  stroke(0,255,0);
  
  //background(0);
if(mouseX > 200 && mouseX < 600 && mouseY > 300 && mouseY <500) {
  strokeWeight(5);
}else{
 strokeWeight(1);
}
fill(0);
rect (250,300,400,200);
fill(0,255,0);
textSize(100);
textAlign(CENTER,CENTER);
text("start",450,390);
}

void introClicks(){
   if(mouseX > 200 && mouseX < 600 && mouseY > 300 && mouseY <500)
 mode = game;
boop.play();
fail.rewind();
win.rewind();
boop.rewind();
}
