Spaceship dragon = new Spaceship();

public void setup() 
{
  size(500, 500);

}
public void draw() 
{
	background(0);
  dragon.show();
  dragon.move();
}
public void keyPressed()
{
	if (key == CODED)
	{
		if(keyCode == LEFT)	
		{
			dragon.turn(-10);
		}
		else if(keyCode == RIGHT)
		{
			dragon.turn(10);
		}
		else if(keyCode == SHIFT)
		{
			dragon.accelerate(5);
		}
	}
}

