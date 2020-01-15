scanline l1 = new scanline(35, 0, 5);
scanline l2 = new scanline(15, 1, 3);
scanline l3 = new scanline(50, 0, 1);
scanline l4 = new scanline(65, 1, 9);
scanline l5 = new scanline(height, 1, 10);
scanline l6 = new scanline(height - 30, 0, 3);

int storeX = 0;
int storeY = 0;
int day;
int month;
int year;


void setup() {
  frameRate(60);
  fullScreen();
  storeX = mouseX;
  storeY = mouseY;
  noCursor();
}

void draw() {

  background(255);
  fill(0);
  l1.DrawScanLine();  
  l2.DrawScanLine();
  l3.DrawScanLine();
  l4.DrawScanLine();
  l5.DrawScanLine();
  l6.DrawScanLine();
  
  textSize(15);
  text(hour() + ":" + minute() + ":" + second(), width / 2, (height / 2) - 30);
  text(day() + ", " + month() + ", " + year(), width / 2, height / 2);
  
}

void mouseClicked() {
 exit(); 
}

class scanline {
  int y;
  int direction;
  int speed;
  scanline(int ypos, int d, int s) { 
    y = ypos;
    direction = d;
    speed = s;
  }
  
  void DrawScanLine () {
    line(0, y, width, y);
    
    if (direction == 0) { 
      y+= speed; 
    } else if (direction == 1) {
      y-= speed; 
    }
    
    if (y > height) { direction = 1; } 
    if (y < 0) {      direction = 0; }
    
  }
}
