//your variable declarations here
Spaceship bob = new Spaceship();
Star[] space = new Star[500];
public void setup(){
  size(500,500);
  for (int i=0; i <space.length; i++){
    space[i] = new Star();
  }
}
public void draw(){
  background(0);

  for(int i =0; i<space.length; i++){
    space[i].show();
  }
  
  bob.show();

}
