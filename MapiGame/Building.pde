class Building extends Element{
  

  boolean menuOn;
  int slots;
  
  
  Building(float xPos, float yPos){
    super(xPos, yPos);

  }
  
  
  void draw(){
    
    image(image, xPos, yPos); 
    if (menuOn){
      rect(mapDimension*blockDimension, 0, 200, 400);
      dibujarSlots();
      
    }
  }
  
  public void dibujarSlots(){
     for (int i = 0; i< slots; i++){
        
     }
  }
  
}

class Castle extends Building{
  
 Castle(float xPos, float yPos){
   super(xPos, yPos);
   this.image = loadImage("./images/buildings/castle.png");
   this.image.resize(blockDimension, blockDimension);
   slots = 6;
   
 }
 
 void menu(){
   menuOn = true;
 }
 

 
 
 
}