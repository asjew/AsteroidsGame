public class Spaceship extends Floater  
{  
	public Spaceship()
	{
		corners = 14;
  		xCorners = new int[corners];
 		yCorners = new int[corners];
  		xCorners = new int[] {-4, -2, -4, -2, 0, 3, 2, 8, 2, 3, 0, -2, -4, -2};
  		yCorners = new int[] {0, 2, 4, 10, 4, 5, 2, 0, -2, -5, -4, -10, -4, -2};
  		myColor = 255;
  		myCenterX = 250;
  		myCenterY = 250;
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
}
