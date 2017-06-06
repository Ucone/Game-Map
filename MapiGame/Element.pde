
//public enum ElementType {BUILDING, BLOCK, UNIT};

//ElementType elementType = ElementType.BLOCK;

class Element{
  
  
  PImage image;
  float xPos;
  float yPos;
  Menu menu;
  String type;
  
  int x;
  int y;
  
  Element(float xPos, float yPos, String str){
    this.xPos= xPos;
    this.yPos = yPos;    
  }
  
  //Element(float xPos, float yPos){
  //  this.xPos= xPos;
  //  this.yPos = yPos;    
  //}
  
  Element(int x, int y){
     this.x = x;
     this.y = y;
     this.xPos = x*blockDimension;
     this.yPos = y*blockDimension;
     if(checkAvailable(x, y)){
       println("object created!");
       obj[x][y] = this;
     }
  }
  
  public boolean checkAvailable(int x, int y){
    if(obj[x][y] != null){
      println("ERROR ON CREATION, OBJ[" +x +"][" + y +"] ALREADY OCCUPEED");
      return false;
    }else
      return true;
    
  }
  //public ElementType getElementType(){
  //  return elementType;    
  //}
  
  void upDate(){
     this.xPos = x*blockDimension;
     this.yPos = y*blockDimension;
  }
  
  void draw(){
    upDate();
    
    fill(#ff0000);
    ellipse(xPos + blockDimension/2, yPos + blockDimension, blockDimension, 20);
    image(image, xPos, yPos);  
  }
  
}