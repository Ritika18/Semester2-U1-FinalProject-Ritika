/*
Using Vectors
Name: Bullet Game
How does it work: There are two players in this game, each standing at both sides of the
screen. Behind them, they have targets which the other player needs to try and hit. 
While the people are defending their targets, they also have to try and shoot the other 
peron's targets in order to win.
*/

Projectile bullets[];
Target targetRight;
Target targetLeft;

int bulletNum = 0;

PImage object;

void setup()
{
  fullScreen();
  bullets = new Projectile[50];
  
  object = loadImage("target.png");
  object.resize(100, 100);
  
  targetRight = new Target(new PVector(width - 50, random(0,height)), object);
  targetLeft = new Target(new PVector(50, random(0,height)), object);
}

void draw()
{
  background(0);
  
  targetRight.Display();
  targetLeft.Display();

  for(int i =0; i < bulletNum; i++)
  {
    bullets[i].Draw();
    bullets[i].Move();
    println("SHOOTIN!");

    targetRight.Collisions(bullets[i]);
    targetLeft.Collisions(bullets[i]);
  }
}

void keyPressed()
{
  if (key == ' ')
  {
    if (bulletNum < 50 )
    {
      //bullets[bulletNum] = new Projectile();
      bullets[bulletNum].SetSpeed(10);
      println("Making bullet#: "+bulletNum);
      bulletNum++;
    }
    else
    {
      bulletNum = 0;
    }
  }
  
}