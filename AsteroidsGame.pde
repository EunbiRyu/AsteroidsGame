//your variable declarations here
Spaceship bob = new Spaceship();
Star[] space = new Star[500];
ArrayList <Asteroid> yay = new ArrayList<Asteroid>();
ArrayList <Bullet> ack = new ArrayList<Bullet>();

///
int hp = 5;
int score = 0;
///

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
  textSize(20);
  text("HP: " +hp,20,40);
  text("Score: " +score,20,60);
  
  bob.move();
  bob.show();
  
  for(int i=0; i< ack.size();i++){
    ack.get(i).move();
    ack.get(i).show();
    for(int j=0; j< yay.size();j++){
      float e = dist((float)ack.get(i).getX(), (float)ack.get(i).getY(), (float)yay.get(j).getX(), (float)yay.get(j).getY());
      if(e<20){
        yay.remove(j);
        ack.remove(i);
        score++;
        break;
      }
    }
  }
  for(int i=0; i< yay.size();i++){
    yay.get(i).move();
    yay.get(i).show();
    
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)yay.get(i).getX(), (float)yay.get(i).getY());
    if(d<20){
      yay.remove(i);
      if(hp > 0)
        hp--;
    }
  }
  
 if(hp <=0){
   fill(#022850);
   rect(0,0,500,500);
   fill(255);
   textSize(26);
   text("Better luck on your next journey", 50, 250);
  }
 if(score >=25){
   fill(#EDBE00);
   rect(0,0,500,500);
   fill(0);
   textSize(26);
   text("Congradulations, you have survived!", 20, 250);
   
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
