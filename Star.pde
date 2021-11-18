class Star //note that this class does NOT extend Floater
{
int myX, myY;
Star() {
  myX = (int)(Math.random()*600);
  myY = (int)(Math.random()*600);
}
void show () {
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  ellipse(myX, myY, (int)(Math.random()*3)+1, (int)(Math.random()*3)+1);
}
}
