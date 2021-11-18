//your variable declarations here
Star[] nightSky = new Star[240];
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(600,600);
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
}
public void keyPressed(){
  if (key == '1') {
    bob.brake();
  }
  if (key == '2') {
    bob.hyperspace();
  }
  if (key == '3') {
    bob.accelerate(0.3);
  }
  if (key == '4'){
    bob.turn(-10);
  }
  if (key == '5'){
    bob.turn(10);
  }
}
