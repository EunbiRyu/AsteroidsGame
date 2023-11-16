class Spaceship extends Floater  
{   
  public Spaceship(){
      corners = 7;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8+100;
      yCorners[0] = -8+100;
      xCorners[1] = 16+100;
      yCorners[1] = 0+100;
      xCorners[2] = -8+100;
      yCorners[2] = 8+100;
      xCorners[3] = -2+100;
      yCorners[3] = 0+100;
      xCorners[4] = 0+100; //(0,0)
      yCorners[4] = 0+100;
      xCorners[5] = 0+100; //(
      yCorners[5] = -16+100;
      xCorners[6] = 0+100; //(
      yCorners[6] = 16+100;
      //xCorners[4] = 
      //yCorners[4] = 
      //xCorners[5] = 
      //yCorners[5] =
      
    }
    public void show(){
      fill(255);
      triangle(xCorners[5], yCorners[5], xCorners[1], yCorners[1], xCorners[4], yCorners[4]);
      triangle(xCorners[4], yCorners[4], xCorners[1], yCorners[1], xCorners[6], yCorners[6]);
      triangle(xCorners[0], yCorners[0], xCorners[1], yCorners[1], xCorners[3], yCorners[3]);
      triangle(xCorners[3], yCorners[3], xCorners[1], yCorners[1], xCorners[2], yCorners[2]);
    }  
    
    public void hyperspace(){
      for(int i =0; i < corners; i++){
        xCorners[i] += (int)(Math.random()*90);
        yCorners[i] += (int)(Math.random()*90);
      }
    }
    public void moveleft(){
      for(int i =0; i < corners; i++){
        xCorners[i] -= 20;
      }
    
    }
    public void moveright(){
     for(int i =0; i < corners; i++){
       xCorners[i] += 20;
    }
    public void accelerate(){
    
    }

    }
}
