class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      //nine variables initialized
      myColor = 255;   
      myCenterX = myCenterY = 300;   
      myXspeed = myYspeed = 0;  
      myPointDirection = 0;
      corners = 12;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 30;
      yCorners[0] = 0; 
      xCorners[1] = 14;
      yCorners[1] = 12; 
      xCorners[2] = -30;
      yCorners[2] = 4; 
      xCorners[3] = -36;
      yCorners[3] = 8; 
      xCorners[4] = -34;
      yCorners[4] = 6; 
      xCorners[5] = -36;
      yCorners[5] = 2; 
      xCorners[6] = -34;
      yCorners[6] = 0; 
      xCorners[7] = -36;
      yCorners[7] = -2; 
      xCorners[8] = -34;
      yCorners[8] = -4; 
      xCorners[9] = -36;
      yCorners[9] = -8; 
      xCorners[10] = -30;
      yCorners[10] = -4; 
      xCorners[11] = 14;
      yCorners[11] = -12; 
    }
    public void hyperspace() {
      myCenterX = Math.random()*600;
      myCenterY = Math.random()*600;
      myPointDirection = Math.random()*361;
      myXspeed = myYspeed = 0;
    }
    public void brake() {
      myXspeed = .9*myXspeed;
      myYspeed = .9*myYspeed;
    }
}
