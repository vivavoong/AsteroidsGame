class Bullet extends Floater{
 public Bullet(){
      myCenterX = bob.getX();
      myCenterY = bob.getY();
      myXspeed = bob.getmyXspeed();
      myYspeed = bob.getmyYspeed();  
      myPointDirection = bob.getDirection();
      accelerate(6);
 }
   public double getX() {
      return myCenterX; 
    }
    public double getY() {
      return myCenterY;
    }
   public void show(){
     fill(255,0,0);
     ellipse((float)myCenterX, (float)myCenterY, 5,5); 
   }
}
