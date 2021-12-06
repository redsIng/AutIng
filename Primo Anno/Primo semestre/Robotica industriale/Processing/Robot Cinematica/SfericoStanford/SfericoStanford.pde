
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

  q1v=q1v-0.02*(q1v-q1);
  q2v=q2v-0.02*(q2v-q2);

  q3v=q3v-0.02*(q3v-q3);


  rotateY(-angoloY);
  rotateX(angoloX);
  rotateY(PI/2.0);
  rotateX(PI/2.0);
  rotateZ(PI/2.0);

  directionalLight(126, 126, 126, 0, 0, 0.7);
  ambientLight(200, 200, 200);
  fill(#F0D01D, 100);
  noStroke();
  pushMatrix();
  robot(q1, q2, q3);
  popMatrix();
  fill(0, 255, 0);

  robot(q1v, q2v, q3v);
}

void robot(float a1, float a2, float a3) {
  //link(a1, 100, -PI/2, 0);
  //link(a2, 100, PI/2, 0);
  //link(-PI/2, 10*a3, 0, 0);
    link(a1, 100, -PI/2, 0);
  link(a2, 0, 0, 100.0);
  link(a3, 0, 0, 100.0); 
  
}


void link(float theta, float d, float alpha, float a) {
  rotateZ(theta);
  sphere(25);
  translate(0.0, 0.0, d/2);
  box(25, 25, d);
  translate(0.0, 0.0, d/2);
  sphere(25);
  rotateX(alpha);
  translate(a/2, 0.0, 0.0);
  box(a, 25, 25);
  translate(a/2, 0.0, 0.0);
}

void mousePressed() {
  angoloYp=angoloY+PI*mouseX/10000.0;
  angoloXp=angoloX+PI*mouseY/10000.0;
}

void mouseDragged() {
  angoloY=angoloY+PI*mouseX/10000.0;
  angoloX=angoloX+PI*mouseY/10000.0;
}

void keyPressed() {
  if(keyCode==ENTER){q1=0.0;q2=0.0;q3=0.0;}
  if (keyCode=='1') {
    q1=q1+0.5;
  }
  if (keyCode=='2') {
    q2=q2+0.5;
  }
  if (keyCode=='3') {
    q3=q3+0.5;
  }
  if (keyCode=='9') {
    q1=q1-0.5;
  }
  if (keyCode=='8') {
    q2=q2-0.5;
  }
  if (keyCode=='7') {
    q3=q3-0.5;
  }
}
