class Vector2
{
  // vector's x and y coordinates
  float x, y;

  // initialize an instance of a Vector2 
  Vector2(float x, float y)
  {
    this.x = x; //instance variable is this.x
    this.y = y;
  }

  //returns the magnitude of the vector (hypotenuse)
  float magnitude() 
  {
    return sqrt(this.x*this.x + this.y*this.y);
  }

  //adding vector with Vector2 other
  Vector2 add(Vector2 other) 
  {
    return new Vector2(this.x+other.x, this.y+other.y);
  }

  //subtracting Vector2 other
  Vector2 subtract(Vector2 other) 
  {
    return new Vector2(this.x-other.x, this.y-other.y);
  }

  // inverse of Vector2 a
  Vector2 inverse() 
  {
    return new Vector2(-this.x, -this.y);
  }

  //Vector2 by scale s
  Vector2 inverse(float s) 
  {
    return new Vector2(s*this.x, s*this.y);
  }
}
