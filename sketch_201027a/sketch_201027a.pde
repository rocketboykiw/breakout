import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameOver = 3;


//sound variable
Minim minim;
AudioPlayer beep, boop, bre, win, fail;

//bricks
int brickd;
int n;

//arrays
boolean[]alive;
int[] x;
int[] y;
int tempx, tempy;


//paddle 
float px, py, pd;
//keys
boolean leftkey, rightkey;
//target vareable
float ballx, bally, balld, vx, vy;

//entity variables
int score, lives, timer;

//gif
PImage[] gif;
int NP;
int f;

void setup() {
  //minim
  minim = new Minim(this);
  beep = minim.loadFile("beep.wav");
  boop =  minim.loadFile("boop.wav");
  bre =  minim.loadFile("bre.wav");
  fail =  minim.loadFile("fail.wav");
  win =  minim.loadFile("win.wav");

  textAlign(CENTER, CENTER);
  brickd =40;
  n = 32;
  x = new int [n];
  y = new int [n];
  alive = new boolean [n];
  tempx = 100;
  tempy =100;

  NP = 45 ;
  gif = new PImage [NP];  

  int j = 0;
  while (j < NP) {  
    gif[j]=loadImage("frame_"+j+"_delay-0.03s.gif");
    j++;
  }

  int i =0;
  while (i<n) {
    x[i]= tempx;
    y[i]= tempy;
    alive[i] =true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempy = tempy +100;
      tempx=100;
    }
    i=i+1;
  }


  mode = intro;
  size(900, 800);  



  //initalize paddle
  px = width/2;
  py = 800;
  pd = 150;

  //initalize keyboard
  leftkey = rightkey = false;

  //initalize ball
  ballx = width/2;
  bally = height/2+100;
  balld = 20;
  vx = 0;
  vy = 7;
  timer=100;
  score =0;
  lives = 3;
}


void draw () {

  if (mode == intro) {
    intro();
  } else if (mode == game ) {
    game();
  } else if (mode == pause ) {
    pause();
  } else if (mode == gameOver ) {
    gameOver();
  } else {
    println("error:mode = " + mode);
  }
}
