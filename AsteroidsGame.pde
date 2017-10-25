Spaceship dragon = new Spaceship();

public void setup() 
{
  size(500, 500);
  background(0);
}
public void draw() 
{
  dragon.show();
}
public void keyPressed()
{
	if (key == SHIFT) //accelerate
	{
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX += ((10)*Math.cos(dRadians));
		myDirectionY += ((10)*Math.sin(dRadians));
	else if (keyCode == LEFT)
		
	}
}

