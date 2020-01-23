
// this is your player, they're a blob and they're kinda boring.
Blob player;
Blob other;

void setup() //does this once
{
  background(255,255,255);
  size(500, 500);
  
  // Blob parameters are: 
  // x (px), y (px), radius (px), 
  // x-speed (px/frame), y-speed (px/frame), and color.
  player = new Blob(100, 100, 15, 2, 1.5, color(224, 65, 174));
  other = new Blob(50, 50, 15, 2, 1, color(56, 153, 201));
}

void draw() //loop
{
  
  
  // make the player move automatically.
  //player.move();
  player.followMouse();
  other.chase(player);
  
  // draw the player on the screen.
  player.drawSprite();
  other.drawSprite();
}
