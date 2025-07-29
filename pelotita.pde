int velx = 10;
int vely = 10;
int x = 50;
int y = 50;
int score = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(0, 100, 0);
   text("score: "+score, 0,50);
   textSize(50);
  circle(x, y, 53);
  rect(mouseX, 500, 200, 25);
  
  // Rebotar con bordes de la pantalla
  if (y > height - 26 || y < 26) {
    vely *= -1;
  }
  if (x > width - 26 || x < 26) {
    velx *= -1;
  }

  // Colisión con el rectángulo
  if (y + 26 >= 500 && y + 26 <= 500 + 10 && 
      x + 26 > mouseX && x - 26 < mouseX + 200 && vely > 0) {
    vely *= -1;
    score=score+1;
    y = 500 - 26;
  }
 
  x += velx;
  y += vely;
}
