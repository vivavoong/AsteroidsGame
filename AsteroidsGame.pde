//your variable declarations here
Star[] nightSky = new Star[240];
ArrayList <Asteroids> asteroids = new ArrayList <Asteroids> ();
Spaceship bob = new Spaceship();
ArrayList <Bullet> bullets = new ArrayList <Bullet> ();
public void setup() 
{
  //your code here
  size(600,600);
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 10; i++){
    asteroids.add(new Asteroids());    
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
  for (int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
  for (int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
  }
  
  for(int i = 0; i < asteroids.size(); i++){
    for(int j = 0; j < bullets.size(); j++){
      float d = dist((float)bullets.get(j).getX(), (float)bullets.get(j).getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());  
      if (d < 7){
      asteroids.remove(i);
      bullets.remove(j);
      break;
    }
    }
  }
  
  bob.show();
  bob.move();
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
  if (key == '6'){
    bullets.add(new Bullet());
  }
}
