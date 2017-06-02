class Target extends Entity
{
  private float m = millis();
  private float _move = 1;
  
  Target(PVector location, PImage img)
  {
    super(location,img);
  }
  
  public void Display()
  {
    image(super._img, super._location.x, super._location.y);
    imageMode(CENTER);
  }
  
  public void Collisions(Projectile bullet)
  {
    if(dist(bullet._pos.x, bullet._pos.y, super._location.x, 
    super._location.y) < 50)
    {
      super._location.y = random(0,height);
      
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
 
    if(m > 500)
    {
      super._location.y = super._location.y + _move;
    }
    
    if(super._location.y > height)
    {
      _move = _move * -1;
    }
    
    if(super._location.y < 0)
    {
      _move = _move * -1;  
    }
  }
}