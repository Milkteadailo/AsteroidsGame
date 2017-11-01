SpaceShip flybaby;
Stars [] airport;
public void setup() 
{
  size(1200,800);
  flybaby = new SpaceShip();
  airport = new Stars[50];
}
public void draw() 
{
  background(0);
  flybaby.show();
  flybaby.move();
  for (int i = 0; i < 50; i++){
  airport[i]= new Stars();
  airport[i].show();
}
  fill(255);
  textSize(20);
  text("My speed: "+ flybaby.getDirectionX(), 20,50);
  text("My point direction : " + flybaby.getPointDirection(),20,70);
  text("My x: " + flybaby.getX(), 20,90);
  text("My y: " + flybaby.getY(), 20,110);
  text("Welcome To Asteroids",20,30);

}

public void keyPressed()
{
 
  if (key == 'w')
  {
    flybaby.accelerate(.05);
  }
  if (key == 's')
  {
    flybaby.accelerate(-.05);
  }
  if (key == 'a')
  {
    flybaby.turn(-12);
  }
  if (key == 'd')
  {
    flybaby.turn(12);
  }
  if (key == 'h')
  {
    flybaby.setX((int)(Math.random()*1200));
    flybaby.setY((int)(Math.random()*800));
    flybaby.setDirectionX(0);
    flybaby.setDirectionY(0);
    flybaby.setPointDirection((int)(Math.random()*360));
    background(255);
  }
  if (key == 'b')
  {
    flybaby.setDirectionX(0);
    flybaby.setDirectionY(0);
  }
  if (key == '+')
  {
    flybaby.accelerate(50);
  }
  if (key == '-')
  {
    flybaby.accelerate(-50);
  }
  if (key == '8')
  {
    flybaby.setPointDirection(270);
  }
   if (key == '6')
  {
    flybaby.setPointDirection(0);
  }
   if (key == '4')
  {
    flybaby.setPointDirection(180);
  }
  if (key == '2')
  {
    flybaby.setPointDirection(90);
  }
  if (key =='r')
  {
    flybaby.setX(600);
    flybaby.setY(400);
    flybaby.setDirectionX(0);
    flybaby.setDirectionY(0);
    flybaby.setPointDirection(0);
  }
}