//Posizioni robot
float xx=0;
float yy=0;
//Posizione robot inseguitore
float XX=200;
float YY=200;
//Velocità
float xx_p=10;
float yy_p=10;
//Accelerazioni
float xx_pp=0;
float yy_pp=0;
//Passo di campionamento: 30 frame secondo
float T=1.0/30.0;
//Fattore di scala
float K=2.0;

//++++MODELLO PARTICELLA CHE SI MUOVE NEL PIANO++++
/// MOdello: xx_pp = 0 (pp= derivata seconda
//xx := posizione
//xx_p := velocità (derivata di xx)
//xx_pp:= accelerazione (derivara di xx_p)
//Sostituendo con il rapporto incrementale posso calcolare la velocità dalla posizione
//xx_p = (x(t+1)-x(t))/T
// Risolvendo:
//x(t+T) = x(t)+T*xx_p; T:=passo di campionamento
//xx_p(t+T)=xx_p(t)+T*xx_pp(t)

void setup()
{
  size(500, 500);
  background(#45E6EA);
}

void draw()
{
  //cambiamento nei frame successivi
  //Discretizzazione di Eulero per la massa in moto libero
  xx=xx+T*xx_p;
  yy=yy+T*yy_p;
  xx_p=xx_p+T*xx_pp;
  yy_p=yy_p+T*yy_pp;
  //Controllore proporzionale massa inseguitrice
  XX=XX+K*T*(xx-XX);
  YY=YY+K*T*(yy-YY);
  background(#45E6EA);
  translate(xx, yy);
  robot(100, 255, 0, 0);
  translate(-xx, -yy);

  translate(XX, YY);  
  robot(100, 0, 255, 0);
}


void robot(int R, int r, int g, int b)
{
  fill(r, g, b); 
  circle(0, 0, R);
  line(0, 0, R, 0);
  line(0, 0, 0, R);
}

void mousePressed()
{
  xx=mouseX;
  yy=mouseY;
}

void keyPressed()
{
  if (keyCode == RIGHT) xx_pp=xx_pp+1;
  if (keyCode == LEFT)  xx_pp=xx_pp-1;
  if (keyCode == UP)  yy_pp=yy_pp+1;
  if (keyCode == DOWN)  yy_pp=yy_pp-1;
  if(keyCode ==ENTER) {
    xx=0;
    yy=0;
    xx_p=0;
    yy_p=0;
  }
}
