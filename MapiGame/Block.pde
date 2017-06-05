public class Block extends Element{
  
  
  
  Block(float xPos, float yPos){
    super(xPos, yPos);
    this.image = loadImage("./images/sprites/green.png");
    this.image.resize(blockDimension, blockDimension);
    
  }
  
  //void draw(){
  //   image(image, xPos, yPos);  
  //}
}

class Water extends Block{
  public Water(float xPos, float yPos){
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