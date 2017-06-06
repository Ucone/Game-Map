
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
  
  Element(float xPos, float yPos){
    this.xPos= xPos;
    this.yPos = yPos;    
  }
  
  Element(int x, int y){
     this.x = x;
     this.y = y;
     this.xPos = x*blockDimension;
     this.yPos = y*blockDimension;
  }
  //public ElementType getElementType(){
  //  return elementType;    
  //}
  
  void draw(){
    image(image, xPos, yPos);  
  }
  
}