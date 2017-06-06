class Unit extends Element{
  
  int movementRang;
  
  Unit(int xPos, int yPos){
    super(xPos, yPos);
    
  }
  
  
  public void moveLeft(){
    if(obj[x-1][y] != null){
      x -= 1; 
    }
    println("moviendo left");

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