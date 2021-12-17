class Asteroids extends Floater{
   private double rotSpeed; //randomly + or -
   public Asteroids(){
   corners = 6; 
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = -11;
   yCorners[0] = -8;
   xCorners[1] = 7;
   yCorners[1] = -8;
   xCorners[2] = 13;
   yCorners[2] = 0;
   xCorners[3] = 6;
   yCorners[3] = 10;
   xCorners[4] = -11;
   yCorners[4] = 8;
   xCorners[5] = -5;
   yCorners[5] = 0;
   myCenterX = Math.random()*600;
   myCenterY = Math.random()*600;   
   myXspeed = (Math.random()*5)-3;
   myYspeed = (Math.random()*5)-3; 
   myColor = #4B4242;
 }
   public void move(){
   turn(rotSpeed);
   myCenterX += myXspeed;
   myCenterY += myYspeed;
   if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
   }
    public double getX() {
      return myCenterX; 
    }
    public double getY() {
      return myCenterY;
    }
}
