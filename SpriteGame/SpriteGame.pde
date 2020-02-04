
// this is your player, they're a blob and they're kinda boring.
Blob player;
Blob other;

void setup() //does this once
{
  background(255, 255, 255);
  size(500, 500);

  // Blob parameters are: 
  // x (px), y (px), radius (px), 
  // x-speed (px/frame), y-speed (px/frame), and color.
  player = new Blob(100, 100, 15, 4, 4, color(224, 65, 174));
  other = new Blob(50, 50, 14, 4, 4, color(56, 153, 201));
}

void draw() //loop
{
  //does not clear the background each time

  // make the player move automatically.
  //player.move();
  //both player and other follow the user's mouse
  player.followMouse();
  other.chase(player);

  // draw the player on the screen
  // only draws the player if the user presses the mouse down
  if (mousePressed == true) {
    player.drawSprite();
    other.drawSprite();
 }
}
