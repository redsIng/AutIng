float angolo1=0.0;
float angolo2=0.0;

float angolo1v=0.0;
float angolo2v=0.0;

float K =0.01;
void setup()
{
  size(1000, 1000);
  background(#45E6EA);
}

void draw()
{
  //Leggi di controllo
  angolo1v=angolo1v+K*(angolo1-angolo1v);
  angolo2v=angolo2v+K*(angolo2-angolo2v);

  background(#45E6EA);
  pushMatrix();
  translate(500, 500);
  dueDOF(angolo1, angolo2, 255, 0, 0, 100);
  popMatrix();

  pushMatrix();
  translate(500, 500);
  dueDOF(angolo1v, angolo2v, 0, 255, 0, 100);
  popMatrix();
}

void dueDOF(float q1, float q2, int r, int g, int b, int t)
{
  rotate(q1);
  link(50, 50, 100, r, g, b, t);
  translate(0, 100);
  rotate(q2);
  link(50, 50, 100, r, g, b, t);
}

void link(int R, int larg, int lung, int r, int g, int b, int t)
{
  fill(r, g, b, t);
  circle(0, 0, R);
  circle(0, lung, R);
  rect(-R/2, 0, larg, lung);
}


void keyPressed()
{
  if (keyCode == '1') angolo1 = angolo1+0.5;
  if (keyCode == '2') angolo2 = angolo2+0.5;
  if (keyCode == '8') angolo1 = angolo1-0.5;
  if (keyCode == '9') angolo2 = angolo2-0.5;
  if (keyCode == ENTER) {
    angolo1=0;
    angolo2=0;
  }
}
