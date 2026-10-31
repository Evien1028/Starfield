//blob in center, spread, stop and start circling
//your code here
Particle [] blue = new Particle[300];
OddballParticle [] white = new OddballParticle[6];
void setup()
{
  size(400,400);
  for(int i = 0; i < blue.length; i++)
    blue[i] = new Particle();
  for(int i = 0; i < white.length; i++)
    white[i] = new OddballParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i < blue.length; i++){
    blue[i].show();
    blue[i].move();
  }
  for(int i = 0; i < white.length; i++){
    white[i].show();
    white[i].spiral();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  Particle(){
    myX = myY = 200;
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*2)+0.01;
  }
  void show(){
    noStroke();
    fill(0,0,255);
    ellipse((float)myX, (float)myY, 10.0, 10.0);
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
    if(mySpeed > 0.1)
      mySpeed = mySpeed*0.99;
  }
  //void spiral(){
  
  //}
}

class OddballParticle extends Particle
{
  OddballParticle(){
    myX = myY = 200;
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*2)+0.01;
  }
  void show(){
    noStroke();
    fill(255);
    ellipse((float)myX, (float)myY, 30.0, 30.0);
  }
  void spiral(){
    myX = 200 + 15*Math.cos(myAngle);
    myY = 200 + 15*Math.sin(myAngle);
    myAngle = myAngle + 0.1;
  }
}
