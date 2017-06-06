class Unit extends Element{
  
  int movementRang;
  
  Unit(int xPos, int yPos){
    super(xPos, yPos);
    
  }
  
  
  public void moveLeft(){
      this.xPos = xPos - blockDimension;
  }

}

class Soldier extends Unit{
  
   Soldier(int xPos, int yPos){
   super(xPos, yPos);
   movementRang = 4;
   this.image = loadImage("./images/units/swordSoldier.jpg");
   this.image.resize(blockDimension, blockDimension);
   type = "UNIT";
   }
  
  
}