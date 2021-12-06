float theta = PI/3;
float thetaVera= PI/3.0;
float thetaP=PI/3.0;
float alpha=0.0;
float alphaP=0.0;
void setup() {
  size(500, 500, P3D);
  background(#40F5F0);
}

void draw() {

  //  thetaVera = thetaVera+0.02*(theta-thetaVera); 
  //Sistema A.S. con autovalore = 0.9 che tende ad inseguire l'ingresso (theta)
  background(#40F5F0);
  //box di partenza
  pushMatrix();  
  translate(width/2, height/2, 0);
  fill(255, 255, 255);
  box(50);
  popMatrix();
  //translate(-width/2, -height/2, 0);
  //box 1
  pushMatrix();  
  translate(width/3, height/2, 0);
  fill(255, 0, 0, 100);
  rotateX(theta);
  rotateY(alpha);
  box(50);
  popMatrix();
  //  rotateX(-theta);
  // translate(-width/3, -height/2, 0);
  //box2
  //pushMatrix();  
  //translate(2*width/3, height/2, 0);
  //fill(0, 255, 0, 100);
  //rotateY(PI/2);
  //rotateZ(thetaVera);
  //rotateY(-PI/2);
  //box(50);
  ////rotateY(PI/2);
  ////rotateZ(-theta);
  ////rotateY(-PI/2);
  ////translate(-2*width/3, -height/2, 0);
  //popMatrix();
}

void keyPressed() {
  if (keyCode == RIGHT) 
  {
    theta=theta+PI/5;
  }
  if (keyCode == LEFT) 
  {
    theta=theta-PI/5;
  }
}

void mousePressed()
{
  thetaP= theta+PI*mouseX/500.0;
  alphaP=alpha+PI*mouseY/500.0;
}

void mouseDragged()
{
  theta= thetaP+PI*mouseX/500.0;
  alpha=alphaP+PI*mouseY/500.0;
}
