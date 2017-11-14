Spaceship dragon = new Spaceship();
Stars[] twinkle;
ArrayList <Asteroid> obstacle;

public void setup() 
{
  size(500, 500);
  twinkle = new Stars[150];
  for(int i = 0; i < twinkle.length; i++)
  {
  	twinkle[i] = new Stars();
  }
  obstacle = new ArrayList <Asteroid>();
  for(int i = 0; i < 20; i++)
  {
  	obstacle.add(new Asteroid());
  }

}
public void draw() 
{
	background(0);
  	for (int i = 0; i < twinkle.length; i++)
  	{
  		twinkle[i].show();
  	}
  	dragon.show();
  	dragon.move();
  	for (int i = 0; i < obstacle.size(); i++)
  	{
  		obstacle.get(i).show();
  		if (dist(dragon.getX(), dragon.getY(), obstacle.get(i).getX(), obstacle.get(i).getY()) <= 10)
  		{
  			obstacle.remove(i);
  		}
  		else
  		{
  			obstacle.get(i).move();
  		}
  	}
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
		else if(keyCode == UP)
		{
			dragon.setPointDirection((int)(Math.random()*361));
			dragon.setDirectionX(Math.random()*0);
			dragon.setDirectionY(Math.random()*0);
			dragon.setX((int)(Math.random()*501));
			dragon.setY((int)(Math.random()*501));
		}
	}
}

