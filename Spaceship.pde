class Spaceship extends Floater  
{  
	public int corners, myColor;
	public int[] xCorners, yCorners; 
	public double myCenterX, myCenterY, myDirectionX, myDirectionY, myPointDirection;
	public Spaceship()
	{
		corners = 14;
  		xCorners = new int[corners];
 		yCorners = new int[corners];
  		xCorners = {-4, -2, -4, -2, 0, 3, 2, 8, 2, 3, 0, -2, -4, -2};
  		yCorners = {0, 2, 4, 10, 4, 5, 2, 0, -2, -5, -4, -10, -4, -2};
  		myColor = (255);
  		myCenterX = 250;
  		myCenterY = 250;
  		myDirectionX = 0;  
  		myDirectionY = 0;
  		myPointDirection = 0;
	}

	public void setX(int x) {myCenterX = x;}
	public int getX() {return myCenterX;}
	public void setY(int y) {myCenterY = y;}   
	public int getY() {return myCenterY;}
	public void setDirectionX(double x) {myDirectionX = x;}   
  	public double getDirectionX() {return myDirectionX;}
  	public void setDirectionY(double y) {myDirectionY = y;}   
	public double getDirectionY() {return myDirectionY;}
	public void setPointDirection(int degrees) {myPointDirection = degrees;}
	public double getPointDirection() {return myPointDirection;}
}
