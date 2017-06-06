public class Block{
  
    
  int x;
  int y;
  PImage image;
  
  Block(int x, int y){
    this.x = x;
    this.y = y;
    this.image = loadImage("./images/sprites/green.png");
    this.image.resize(blockDimension, blockDimension);
    mapi[x][y] = this;
    
  }
  
  void draw(){
    image(image, x*blockDimension, y*blockDimension);  
  }
  
  //void draw(){
  //   image(image, xPos, yPos);  
  //}
}

class Water extends Block{
  public Water(int xPos, int yPos){
    super(xPos, yPos);
    this.image = loadImage("./images/sprites/water.png");
    this.image.resize(blockDimension, blockDimension);
  }
  
}


//class Green extends Block{
//  public Green(){
//    //this.image = getImage("./sprites/Water.png", 20, 20);
//  }
  
//}