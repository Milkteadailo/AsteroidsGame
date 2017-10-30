SpaceShip flybaby;
Stars [] airport;
public void setup() 
{
  size(800,800);
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
}

public void keyPressed()
{
 
  if (key == 'w')
  {
    flybaby.accelerate(.5);
  }
  if (key == 's')
  {
    flybaby.accelerate(-.5);
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
    flybaby.setX((int)(Math.random()*800));
    flybaby.setY((int)(Math.random()*800));
    flybaby.setDirectionX(0);
    flybaby.setDirectionY(0);
    flybaby.setPointDirection((int)(Math.random()*360));
  }
}