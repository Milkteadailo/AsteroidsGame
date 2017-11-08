class Asteroid extends Floater{
  private int rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*9)-4;
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*700);
    corners = 8;
    int[] xC = {-6,6,12,12,6,-6,-12,-12};
    int[] yC = {12,12,6,-6,-12,-12,-6,6};
    xCorners = xC;
    yCorners = yC;
    myDirectionX=Math.random();
    myDirectionY=Math.random();
    myColor=(#d3d3d3); 
    
  }
  public void move(){
    rotate(rotSpeed);
    super.move();
  }
  //setters
  public void setX(int x){myCenterX = x;}  
  public void setY(int y){myCenterY = y;}   
  public void setDirectionX(double x){myDirectionX = (double)x;} 
  public void setDirectionY(double y){myDirectionY = (double)y;}  
  public void setPointDirection(int degrees){myPointDirection = degrees;}  
  //getters 
  public int getY(){return (int)myCenterY;}  
  public int getX(){return (int)myCenterX;}
  public double getDirectionX(){return myDirectionX;}  
  public double getDirectionY(){return myDirectionY;}   
  public double getPointDirection(){return myPointDirection;} 
}