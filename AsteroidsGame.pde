//your variable declarations here
Spaceship bob = new Spaceship();
Star[] space = new Star[500];
ArrayList <Asteroid> yay = new ArrayList<Asteroid>();
ArrayList <Bullet> ack = new ArrayList<Bullet>();

public void setup(){
  background(0);
  size(500,500);
  for (int i=0; i <space.length; i++){
    space[i] = new Star();
  }
  for(int i=0; i< 30;i++){
    yay.add(new Asteroid());
  }
}
public void draw(){
  background(0);
  textSize(15);
  fill(255);
  text("Welcome to the stars...", 20, 20);
  bob.move();
  bob.show();
  
  for(int i=0; i< ack.size();i++){
    ack.get(i).move();
    ack.get(i).show();
  }
  for(int i=0; i< yay.size();i++){
    yay.get(i).move();
    yay.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)yay.get(i).getX(), (float)yay.get(i).getY());
    if(d<20)
      yay.remove(i);
  }
  for(int i =0; i<space.length; i++){
    space[i].show();
  }


}
public void keyPressed(){
  if(key == 'h'){ // hyperspace
    bob.hyperspace();
  }
  else if(key == 'a'){ // right
    bob.turn(5);
  }
  else if(key == 'd'){ // left
    bob.turn(-5);
  }
  else if(key == 's'){ // accelerate
    bob.accelerate(0.2);
  }

  else if(key == ' ')
    ack.add(new Bullet(bob));
}
