class Projectile extends Entity
{
  //Member Variables
  PVector _pos = new PVector (0,height/2);
  
  Projectile(PVector location, PVector size, int speed, PImage img)
  {
    super(location,size,speed,img);
    speed = 0;
    size = new PVector(100,10);
    location = _pos;
  }
  
  //Member Functions
  public void Draw()
  {
    fill( (int)random(0,255),0,0);
    ellipse(_pos.x, _pos.x, super._size.x, super._size.x);
  }

  private void Update()
  {
    Move();
  }

  private void Move()
  {
    _pos.x += super._speed;
    
    if(keyPressed)
    {
      if(key == 'w')
      {
        _pos.y = _pos.y - 5;
      }
      
      if(key == 's')
      {
        _pos.y = _pos.y + 5;
      }
      
      if(key == 'd')
      {
        _pos.x = _pos.x + 5;
      }
      
      if(key == 'a')
      {
        _pos.x = _pos.x - 5;
      }
    }
  }
  
  //Getters
  int GetSpeed() 
  { 
    return super._speed;
  }

  //Setters
  private void SetSpeed(int newSpeed) 
  { 
    newSpeed = super._speed;
  }
}