class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, starColR, starColG, starColB;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);    
    starColR = (int)(Math.random()*255);
    starColG = (int)(Math.random()*255);
    starColB = (int)(Math.random()*255);

  }
  public void show(){
    fill(starColR*3, starColG, starColB);
    noStroke();
    ellipse(myX, myY, 3, 3);
  }

}
