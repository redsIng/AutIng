//+++++ 2D - PROCESSING STATICO ++++++
//size(500,500);
//background(142,0,118);
////line(0,0,width,height);
////è un sistema di riferimento sinistro
////y verso il basso
////x verso destra
///*
//   !----->x+
//   |
//   |
//   +y
//*/
//fill(255,0,0);
//ellipse(100,100,55,55);

//fill(0,255,0);
//stroke( 0,0,255 );
//ellipse(100,300,55,55);

//fill(0,0,255,125);
//noStroke( );
//ellipse(100,320,55,55);

//triangle(30,75,58,20,86,75);
//+++++ 3D-PROCESSING STATICO+++++
//size(500,500,P3D);
//background(120,120,120);
//translate(100,100,0);
//rotateY(PI/3);
////noFill();
//fill(0,0,255,100);
//box(100);
//Nel caso tridimensionale
///*
//   !----->x+
//   |
//   |
//   +y
//  z uscente dallo schermo
//*/
//rotateY(-PI/3);
//translate(100,100,0);
//fill(0,255,0,100);
//box(100);
float theta = PI/3;
float thetaVera= PI/3.0;
void setup() {
  size(500, 500, P3D);
  background(#40F5F0);
}

void draw() {
  //Rx(theta)=Ry(PI/2) Rz(theta)Ry(-PI/2)
  //background(#40F5F0);
  // translate(mouseX, mouseY, 0);
  //rotateY(PI/3);
  //fill(0, 0, 255, 100);
  //box(100);
  //background(#40F5F0);
  ////box di partenza
  //translate(width/2, height/2, 0);
  //fill(255, 255, 255);
  //box(50);
  //translate(-width/2, -height/2, 0);
  ////box 1
  //translate(width/3, height/2, 0);
  //fill(255, 0, 0, 100);
  //rotateX(theta);
  //box(50);
  //rotateX(-theta);
  //translate(-width/3, -height/2, 0);
  ////box2
  //translate(2*width/3, height/2, 0);
  //fill(0, 255, 0, 100);
  //rotateY(PI/2);
  //rotateZ(theta);
  //rotateY(-PI/2);
  //box(50);
  //rotateY(PI/2);
  //rotateZ(-theta);
  //rotateY(-PI/2);
  //translate(-2*width/3, -height/2, 0);
 thetaVera = thetaVera+0.01*(theta-thetaVera); 
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
  rotateX(thetaVera);
  box(50);
  popMatrix();
  //  rotateX(-theta);
  // translate(-width/3, -height/2, 0);
  //box2
  pushMatrix();  
  translate(2*width/3, height/2, 0);
  fill(0, 255, 0, 100);
  rotateY(PI/2);
  rotateZ(thetaVera);
  rotateY(-PI/2);
  box(50);
  //rotateY(PI/2);
  //rotateZ(-theta);
  //rotateY(-PI/2);
  //translate(-2*width/3, -height/2, 0);
  popMatrix();
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
