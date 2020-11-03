int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameOver = 3;
final int options = 4;


//bricks
int brickd;
int n;

//arrays
int[] x;
int[] y;



//paddle 
float px, py, pd;
//keys
boolean leftkey, rightkey;
//target vareable
float ballx, bally, balld, vx, vy;

//entity variables
int timer;

void setup() {
  brickd =100;
  n = 4;
  x = new int [n];
  y = new int [n];

  x[0] = 100;
  y[0] = 100;

  x[1] = 400;
  y[1] = 100;

  x[2] = 700;
  y[2] = 100;

  x[3] = 100;
  y[3] = 200;
  
  
  mode = intro;
  size(800, 800);  
 


  //initalize paddle
  px = width/2;
  py = 800;
  pd = 150;

  //initalize keyboard
  leftkey = rightkey = false;

  //initalize ball
  ballx = width/2;
  bally = height/2;
  balld = 20;
  vx = 0;
  vy = 7;
  timer=100;
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
