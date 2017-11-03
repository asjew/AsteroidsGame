public class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		rotSpeed = (int)(Math.random()*21)-10;
		corners = 6;
  		xCorners = new int[corners];
 		yCorners = new int[corners];
  		xCorners = new int[] {-10, -5, 5, 10, 5, -5};
  		yCorners = new int[] {0, 5, 5, 0, -5, -5};
  		myColor = 255;
  		myCenterX = (int)(Math.random()*501);
  		myCenterY = (int)(Math.random()*501);
  		myDirectionX = (int)(Math.random()*3)-1;  
  		myDirectionY = (int)(Math.random()*3)-1;
  		myPointDirection = 0;
	}	

	public void setX(int x) {myCenterX = x;}
	public int getX() {return (int) myCenterX;}
	public void setY(int y) {myCenterY = y;}   
	public int getY() {return (int) myCenterY;}
	public void setDirectionX(double x) {myDirectionX = x;}   
  	public double getDirectionX() {return myDirectionX;}
  	public void setDirectionY(double y) {myDirectionY = y;}   
	public double getDirectionY() {return myDirectionY;}
	public void setPointDirection(int degrees) {myPointDirection = degrees;}
	public double getPointDirection() {return myPointDirection;}
	
	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
}

