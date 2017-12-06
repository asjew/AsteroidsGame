Spaceship dragon = new Spaceship();
Stars[] twinkle;
ArrayList <Asteroid> obstacle;
ArrayList <Bullet> pew;

public void setup() 
{
  size(500, 500);
  twinkle = new Stars[150];
  for(int i = 0; i < twinkle.length; i++)
  {
  	twinkle[i] = new Stars();
  }
  obstacle = new ArrayList <Asteroid>();
  for(int i = 0; i < 30; i++)
  {
  	obstacle.add(new Asteroid());
  }
  pew = new ArrayList <Bullet>();
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
      for (int nI = 0; nI < pew.size(); nI++)
      {
        if(dist(pew.get(nI).getX(), pew.get(nI).getY(), obstacle.get(i).getX(), obstacle.get(i).getY()) <= 20)
        {
          pew.remove(nI);
          obstacle.remove(i);
          break;
        }
      }
  	}
    for (int nI = 0; nI < pew.size(); nI++)
    {
      if(pew.get(nI).getX() > 490 || pew.get(nI).getX() < 0)
        {
          pew.remove(nI);
          break;
        }
      else if (pew.get(nI).getY() > 490 || pew.get(nI).getY() < 0)
        {
          pew.remove(nI);
          break;
        }
      pew.get(nI).show();
      pew.get(nI).move();
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
		else if(keyCode == UP)
		{
			dragon.accelerate(3);
		}
		else if(keyCode == SHIFT)
		{
			dragon.setPointDirection((int)(Math.random()*361));
			dragon.setDirectionX(Math.random()*0);
			dragon.setDirectionY(Math.random()*0);
			dragon.setX((int)(Math.random()*501));
			dragon.setY((int)(Math.random()*501));
		}
	}
}
public void mousePressed()
{
  pew.add(new Bullet(dragon));
  obstacle.add(new Asteroid());
}
