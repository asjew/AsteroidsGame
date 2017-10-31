class Stars //note that this class does NOT extend Floater
{
  private int myColor;
  private double myX, myY;
  public Stars()
  {
  	myX = Math.random()*501;
  	myY = Math.random()*501;
  	myColor = 255;
  }
  public void show()
  {
  	noStroke();
  	fill(myColor);
    ellipse((float)myX, (float)myY, 2, 2);

  }
}
