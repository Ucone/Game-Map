class Building extends Element{
  

  boolean menuOn;
  
  Building(float xPos, float yPos){
    super(xPos, yPos);

  }
  
  
  void draw(){
    
    image(image, xPos, yPos); 
    if (menuOn){
      rect(mapDimension*blockDimension, 0, 200, 400);
      
    }
  }
  
}

class Castle extends Building{
  
 Castle(float xPos, float yPos){
   super(xPos, yPos);
   this.image = loadImage("./images/buildings/castle.png");
   this.image.resize(blockDimension, blockDimension);
   
 }
 
 void menu(){
   menuOn = true;
 }
 
}