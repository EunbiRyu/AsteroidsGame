//your variable declarations here
Spaceship bob = new Spaceship();
Star[] space = new Star[500];
Asteroid yay = new Asteroid();

public void setup(){
  background(0);
  size(500,500);
  for (int i=0; i <space.length; i++){
    space[i] = new Star();
  }
}
public void draw(){
  background(0);
  textSize(15);
  fill(255);
  text("Welcome to the stars...", 20, 20);
  bob.move();
  bob.show();
  
  yay.move();
  yay.show();

  
  for(int i =0; i<space.length; i++){
    space[i].show();
  }


}
public void keyPressed(){
  if(key == 'h'){ // hyperspace
    bob.hyperspace();
  }
  if(key == 'a'){ // right
    bob.turn(5);
  }
  if(key == 's'){ // accelerate
    bob.accelerate(0.2);
  }
  if(key == 'd'){ // left
    bob.turn(-5);
  }
}
