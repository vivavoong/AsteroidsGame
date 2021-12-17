class Bullet extends Floater{
 public Bullet(){
      myCenterX = bob.getX();
      myCenterY = bob.getY();
      myXspeed = bob.getmyXspeed();
      myYspeed = bob.getmyYspeed();  
      myPointDirection = 0;
      accelerate(6);
 }
   public double getX() {
      return myCenterX; 
    }
    public double getY() {
      return myCenterY;
    }
}
