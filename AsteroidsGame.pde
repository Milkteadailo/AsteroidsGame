SpaceShip flybaby;
Stars [] airport;
Asteroid[] proverty;
public void setup() 
{
  size(1200,800);
  flybaby = new SpaceShip();
  proverty = new Asteroid[500];
  for (int i = 0; i < 500; i++)
  {
    proverty[i]= new Asteroid();
  }
  airport = new Stars[500];
  for (int i = 0; i < 500; i++)
  {
    airport[i]= new Stars();
  }
}
public void draw() 
{
  background(0);
  flybaby.show();
  flybaby.move();
  fill(255);
  textSize(20);
  text("My Speed: "+ flybaby.getDirectionX(), 20,50);
  text("My Altitude: "+ (-1*(flybaby.getDirectionY())), 20,70);
  text("My Point Direction : " + flybaby.getPointDirection(),20,90);
  text("My X: " + flybaby.getX(), 20,110);
  text("My Y: " + flybaby.getY(), 20,130);
  text("Welcome To Asteroids",20,30);
  for (int i = 0; i < 500; i++)
  {
  airport[i].show();
  }
  for (int i = 0; i < 500; i++)
  {
  proverty[i].move();
  proverty[i].show();
  proverty[i].turn(50);
  if (proverty[i].getDirectionX()==0 && proverty[i].getDirectionY()==0)
   {

    proverty[i].setDirectionX(Math.random());
    proverty[i].setDirectionY(Math.random());
  }
  }

}

public void keyPressed()
{
 
  if (key == 'w')
  {
    flybaby.accelerate(.1);
  }
  if (key == 's')
  {
    flybaby.accelerate(-.1);
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
    flybaby.accelerate(10);
  }
  if (key == '-')
  {
    flybaby.accelerate(-10);
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