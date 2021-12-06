import java.awt.event.KeyEvent;
int depth=0;
float q1=0;
float q2=0;
float q3=0;
float q4=0;
float q5=0;
float q6=0;
String input="";
String robotName="";
float q1v=0;
float q2v=0;
float q3v=0;
float q4v=0;
float q5v=0;
float q6v=0;
float Kp=0.01;
float Kchar=1.0;

float angoloX=0;
float angoloY=0;
float angoloXp=0;
float angoloYp=0;

float L1=80;
float D1=50;
float D2=50;
float D4=50;
float D6=50;
float L2=80;
float L3=80;
float L6 = 80;
void setup()
{  
  size(1000, 1000, P3D);
  background(#607d8b);
}

void draw()
{
  background(#607d8b);
  details(q1, q2, q3,q4, q5, q6, q1v, q2v, q3v,q4v, q5v, q6v);
  translate(width/2, height/2, depth);

  q1v=q1v-Kp*(q1v-q1);
  q2v=q2v-Kp*(q2v-q2);
  q3v=q3v-Kp*(q3v-q3);
  q4v=q4v-Kp*(q4v-q4);
  q5v=q5v-Kp*(q5v-q5);
  q6v=q6v-Kp*(q6v-q6);

  rotateY(-angoloY);
  rotateX(angoloX);
  rotateY(PI/2.0);
  rotateX(PI/2.0);
  rotateZ(PI/2.0);

  directionalLight(126, 126, 126, 0, 0, 0.7);
  ambientLight(200, 200, 200);
  fill(#f4511e);
  base();
  fill(#F0D01D, 100);
  noStroke();
  pushMatrix();
  robot(q1, q2, q3,q4,q5,q6);
  popMatrix();
  fill(0, 255, 0);

  robot(q1v, q2v, q3v,q4v,q5v,q6v);
}
/*
  Implementazione di tutti i robot utilizzando la tabella di Denavit-Hartenberg
*/
void robot(float a1, float a2, float a3,float a4,float a5,float a6) {
  switch(robotName) {
  case "cartesiano":
    link(0, a1, -PI/2, 0);
    link(-PI/2, a2, -PI/2, 0);
    link(0, a3, 0, 0);
    break;
  case "cilindrico":
link(a1,L1, 0, 0);
    link(0, a2, -PI/2, 0);
    link(0, a3, 0, 0);
    break;
  case "scara":
    link(a1,L1, 0, D1);
    link(a2,0,0, D2);
    link(0, a3, 0, 0);

    break;
  case "sfericoI":
    link(a1,L1, PI/2, 0);
    link(a2,0,PI/2, L2);
    link(0, a3, 0, 0);
    break;
  case "sfericoII":
    link(a1,L1, -PI/2, 0);
    link(a2,L2,PI/2,0);
    link(-PI/2, a3, 0, 0);

    break;
  case "antropomorfo":
        link(a1,L1, PI/2, 0);
    link(a2,0,0,L2);
    link( a3,0, 0, L3);

    break;
  case "puma":
        link(a1,D1, -PI/2, 0);
    link(a2,0,0,L2);
    link( a3,0, PI/2, 0);
        link(a4,D4, -PI/2, 0);
    link(a5,0,PI/2,0);
    link(a6, D6, 0, 0);

    break;
  case "stanford":
   link(a1,L1, -PI/2, 0);
    link(a2,L2,PI/2,0);
    link(-PI/2, a3, 0, 0);
        link(a4,0, -PI/2, 0);
    link(a5,0,PI/2,0);
    link(a6, L6, 0, 0);

    break;

  default:
    robotName="";
    break;
  }

}
/*
 La funzione details() contiene tutte le informazioni visualizzate a schermo
*/
void details(float a1, float a2, float a3, float a4,float a5,float a6,float a1v, float a2v, float a3v,float a4v,float a5v,float a6v) {
  String line="q1="+a1+"\nq2=+"+a2+"\nq3="+a3+"\nq4="+a4+"\nq5="+a5+"\nq6="+a6;
  String lineV="q1v="+a1v+"\nq2v=+"+a2v+"\nq3v="+a3v+"\nq4v="+a4v+"\nq5v="+a5v+"\nq6v="+a6v;
  String car="Kp="+Kp+"\nKchar="+Kchar+"\n";
  String options="-cartesiano(D)\n-cilindrico(F)\n-scara(G)\n-sfericoI(H)\n-sfericoStanford(J)\n-antropomorfo(S)\n-puma(L)\n-stanfordCompleto(K)\nchar:=aumenta/diminuisce (up/down) variazione di q1,q2,q3\nKp:=aumenta/diminuisce (right/left) velocità di inseguimento";
  textSize(20);
  textLeading(20);
  fill(#b71c1c);
  text(robotName, 5, 30);
  fill(#F0D01D);
  textLeading(20);
  text(line, 5, 70);
  textLeading(20);
  fill(0, 255, 0);
  text(lineV, 150, 70);
  fill(0);
  textLeading(20);
  text(car, 350, 70);
  textLeading(20);
  fill(255, 0, 0);
  text("Options:\n", 5, 700);
  textLeading(20);
  fill(0);
  textLeading(20);
  text(options, 5, 725);
}

void base() {
  pushMatrix();
  translate(0, 0, -100);
  box(80, 80, 20);
  popMatrix();
  pushMatrix();
  translate(0, 0, -50);
  box(25, 25, 80);
  popMatrix();
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
  angoloYp=angoloY+PI*mouseX/100000.0;
  angoloXp=angoloX+PI*mouseY/100000.0;
}

void mouseDragged() {
  angoloY=angoloY+PI*mouseX/100000.0;
  angoloX=angoloX+PI*mouseY/100000.0;
}

void keyPressed() {
  if (keyCode=='R') {
    q1=0.0;
    q2=0.0;
    q3=0.0;
    angoloX=0;
    angoloY=0;
    Kp=0.02;
    Kchar=1;
  }
  if (keyCode=='1') {
    q1+=Kchar*1;
  }
  if (keyCode=='2') {
    q2+=Kchar*1;
  }
  if (keyCode=='3') {
    q3+=Kchar*1;
  }
   if (keyCode=='4') {
    q4+=Kchar*1;
  }
  if (keyCode=='5') {
    q5+=Kchar*1;
  }
  if (keyCode=='6') {
    q6+=Kchar*1;
  }
  if (keyCode=='9') {
    q1-=Kchar*1;
  }
  if (keyCode=='8') {
    q2-=Kchar*1;
  }
  if (keyCode=='7') {
    q3-=Kchar*1;
  }
   if (keyCode=='Z') {
    q4-=Kchar*1;
  }
  if (keyCode=='X') {
    q5-=Kchar*1;
  }
  if (keyCode=='Y') {
    q6-=Kchar*1;
  }
  if (keyCode==LEFT) {
    Kp+=0.001;
  }
  if (keyCode==RIGHT) {
    Kp-=0.001;
  }
  if (keyCode==UP) {
    Kchar+=1;
  }
  if (keyCode==DOWN) {
    Kchar-=1;
  }
  
  if (keyCode=='D') {
    robotName="cartesiano";
  }
  if (keyCode=='F') {
    robotName="cilindrico";
  }
  if (keyCode=='G') {
    robotName="scara";
  }
  if (keyCode=='H') {
    robotName="sfericoI";
  }
  if (keyCode=='J') {
    robotName="sfericoII";
  }
  if (keyCode=='K') {
    robotName="stanford";
  }
  if (keyCode=='L') {
    robotName="puma";
  }
  if (keyCode=='S') {
    robotName="antropomorfo";
  }
  
  
}
