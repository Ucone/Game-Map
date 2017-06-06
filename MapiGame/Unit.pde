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
   }
  
  
}