
int depth=0;
float q1=0;
float q2=0;
float q3=0;

float q1v=0;
float q2v=0;
float q3v=0;

float angoloX=0;
float angoloY=0;
float angoloXp=0;
float angoloYp=0;

void setup()
{  
  size(1000, 1000, P3D);
  background(#58DBFA);
}

void draw()
{
  background(#58DBFA);
  translate(width/2, height/2, depth);
  rotateY(-angoloY);
  rotateX(angoloX);
  rotateY(PI/2.0);
  directionalLight(126, 126, 126, 0, 0, 0.7);
  ambientLight(200, 200, 200);
  fill(#F0D01D);
  noStroke();
  robot();
}

void robot() {
  link(q1, 100, -PI/2, 0);
  //link(q2, 100, PI/2, 0);
  //link(-PI/2,10*q3, 0, 0);
}


void link(float theta, float d, float alpha, float a) {
  rotateZ(theta);
  sphere(25);
  translate(0.0,0.0,d/2);
  box(25,25,d);
  translate(0.0,0.0,d/2);
  sphere(25);



}

void mousePressed() {
  angoloYp=angoloY+PI*mouseX/10000.0;
  angoloXp=angoloX+PI*mouseY/10000.0;
}

void mouseDragged() {
  angoloY=angoloY+PI*mouseX/10000.0;
  angoloX=angoloX+PI*mouseY/10000.0;
}
