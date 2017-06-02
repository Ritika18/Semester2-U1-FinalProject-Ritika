class Entity
{
  private PVector _location;
  private PVector _size;
  private int _speed;
  private PImage _img;

  Entity(PVector location, PVector size, int speed, PImage img)
  {
    _location = location;
    _size= size;
    _speed = speed;
    _img = img;
  }
  
  Entity(PVector location, PImage img)
  {
    _location = location;
    _img = img;
  }

}