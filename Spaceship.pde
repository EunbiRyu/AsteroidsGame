class Spaceship extends Floater  
{
  public Spaceship(){
    corners = 7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    xCorners[4] = 0; 
    yCorners[4] = 0;
    xCorners[5] = 0; 
    yCorners[5] = -16;
    xCorners[6] = 5;
    yCorners[6] = 16;
    
    myColor = 255;
    myCenterX = 200;
    myCenterY = 300;
    
    myXspeed = 0;
    myYspeed = 0; 
    
    myPointDirection = 0;
      
  }
  //public void show(){
  //  fill(myColor);
  //  triangle(xCorners[5], yCorners[5], xCorners[1], yCorners[1], xCorners[4], yCorners[4]);
  //  triangle(xCorners[4], yCorners[4], xCorners[1], yCorners[1], xCorners[6], yCorners[6]);
  //  triangle(xCorners[0], yCorners[0], xCorners[1], yCorners[1], xCorners[3], yCorners[3]);
  //  triangle(xCorners[3], yCorners[3], xCorners[1], yCorners[1], xCorners[2], yCorners[2]);
  //}
  public void hyperspace(){
    myXspeed = 0;
    int randomx = (int)(Math.random()*180)-90;
    int randomy = (int)(Math.random()*180)-90;
    if (((xCorners[0]+randomx)!=500)&&((xCorners[0]+randomx)!=0)){
      if(((yCorners[0]+randomy)!=500)&&((yCorners[0]+randomy)!=0)){
        for(int i =0; i < corners; i++){
          xCorners[i] += randomx;
          yCorners[i] += randomy;
        }
      }
    }

  }

}
