class Stars //note that this class does NOT extend Floater
{
  int starX;
  int starY;
  int theSize;
  int theColor;

  public Stars()
  {
    theSize = (int)(Math.random()*8);
    theColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    starX = (int)(Math.random()*1500);
    starY = (int)(Math.random()*800);
  }

  public void show()
  {
    noStroke();
    fill(theColor);
    ellipse(starX, starY, theSize, theSize);
  }
}

