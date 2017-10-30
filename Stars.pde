class Stars //note that this class does NOT extend Floater
{
  int myColor;
  double myX, myY;
  public void Stars()
  {
  	myX = Math.random()*501;
  	myY = Math.random()*501;
  	myColor = 255;
  }
  public void show()
  {
  	noStroke();
  	fill(mycolor);

  }
}
