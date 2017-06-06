class Unit extends Element{
  
  int movementRang;
  
  Unit(float xPos, float yPos){
    super(xPos, yPos);
    
  }
  
  
  public void moveLeft(){
      this.xPos = xPos - blockDimension;
  }

}

class Soldier extends Unit{
  
   Soldier(float xPos, float yPos){
   super(xPos, yPos);
   movementRang = 4;
   this.image = loadImage("./images/units/swordSoldier.jpg");
   this.image.resize(blockDimension, blockDimension);
   type = "UNIT";
   }
  
  
}