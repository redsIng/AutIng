float q1=PI/2.0;
float q2=0.0;
float angolo1=0.0;
float angolo2=0.0;
int link1=100;
float angolo1v=0.0;
float angolo2v=0.0;
float x=0;
float y=0;
int target_r=255;
int target_g=255;
int target_b=255;
float K =0.01;
float gomito = 1.0;

void setup()
{
  size(1000, 1000);
  background(#45E6EA);
}

void draw()
{
  float s_12=sin(q2+q1);
  float c_12=cos(q2+q1);
  float L_1=100;
  float L_2=100;
  float s_1 = sin(q1);
  float s_2 = sin(q2);
  
  if(abs(s_2)<0.01) s_2=0.01;
  
  float c_1=cos(q1);
  float c_2=cos(q2);
  float Q1=(s_12*(y-L_2*s_12-L_1*s_1))/(L_1*s_2)+(c_12*(x-L_2*c_12-L_1*c_1))/(L_1*s_2);
  float Q2=((-L_2*s_12-L_1*s_1)*(y-L_2*s_12-L_1*s_1))/(L_1*L_2*s_2)+((-L_2*c_12-L_1*c_1)*(x-L_2*c_12-L_1*c_1))/(L_1*L_2*s_2);
  
  float kk=0.1; //-lambda/2
  q1=q1+kk*Q1;
  q2=q2+kk*Q2;
  
  //Leggi di controllo
  angolo1v=angolo1v+K*(q1-PI/2-angolo1v);
  angolo2v=angolo2v+K*(q2-angolo2v);

  background(#45E6EA);
  pushMatrix();
  translate(500, 500);
  fill(255);
  circle(0, 0, 2*2*link1);

  pushMatrix();
  translate(x, y);
  target(50);
  popMatrix();

  dueDOF(angolo1, angolo2, 255, 0, 0, link1);
  popMatrix();

  pushMatrix();
  translate(500, 500);
  dueDOF(angolo1v, angolo2v, 0, 255, 0, link1);
  popMatrix();
  
  pushMatrix();
  translate(500, 500);
  dueDOF(q1-PI/2, q2, 0, 0, 255, link1);
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

void target(int R) {
  fill(target_r, target_g, target_b);
  circle(0, 0, R);
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
  if (keyCode == 'G') {
    gomito=-gomito;
    mousePressed();
  }
}

void mousePressed() {
  x=mouseX-500;
  y=mouseY-500;
  println(x, y);
  if (x*x+y*y<link1*link1+link1*link1) {
    target_b=0;
    target_r=0;
    target_g=255;
  } else {
    target_b=0;
    target_r=255;
    target_g=0;
  }

  float a=(x*x+y*y-link1*link1-link1*link1)/(2*link1*link1);
  float c2=a;
  float s2=gomito*sqrt(abs(1-a*a));
  float b1=link1+c2*link1;
  float b2=link1*s2;
  float c1=b1*x+b2*y;
  float s1=-b2*x+b1*y;
  angolo1 = atan2(s1, c1)-PI/2;
  angolo2 = atan2(s2, c2); 
}
