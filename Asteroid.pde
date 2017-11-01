public class Asteroid extends Floater
{
	int rotSpeed;
	public Asteroid()
	{
		rotSpeed = 10;
		corners = 14;
  		xCorners = new int[corners];
 		yCorners = new int[corners];
  		xCorners = new int[] {};
  		yCorners = new int[] {};
  		myColor = 255;
  		myCenterX = 100;
  		myCenterY = 100;
  		myDirectionX = 0;  
  		myDirectionY = 0;
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
		super.move()
	}
}

