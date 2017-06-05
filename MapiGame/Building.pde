class Building extends Element{
  

  boolean menuOn;
  int slots;

  Element [] elements; //Elementos que contiene el menu
  
  
  Building(float xPos, float yPos){
    super(xPos, yPos);
    //elementType = ElementType.BLOCK;
    menu = new Menu(6, null);

  }
  
  
  //void draw(){
    
  //  image(image, xPos, yPos); 
  //  if (menuOn){
  //    rect(mapDimension*blockDimension, 0, 200, 400);
  //    menu.draw();
      
  //  }
  //}

  
}

class Castle extends Building{
  
 Castle(float xPos, float yPos){
   super(xPos, yPos);
   this.image = loadImage("./images/buildings/castle.png");
   this.image.resize(blockDimension, blockDimension);
   slots = 6;
   elements = new Element [0];
   menu = new Menu(6, elements);
   type = "BUILDING";
 }
 
 //void menu(){
 //  menuOn = true;
 //}
 

 
 
 
}