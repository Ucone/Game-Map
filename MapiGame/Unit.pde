class Unit extends Element{
  
  int movementRang;
  
  Unit(int xPos, int yPos){
    super(xPos, yPos);
    
  }
  
  public void delete(int x, int y){
    obj[x][y]= null;
  }
  
  //public void upDate(int x, int y){
  //  this.x = x;
  //  this.y = y;
    
  //}
  
  
  public void moveLeft(){
    if(x>0 && obj[x-1][y] == null){
      obj[x-1][y] = this;
      obj[x][y]= null;
      this.x = this.x - 1;
      println("moviendo left " + x +" xPos:" + xPos);
    }else{
      //Poner waring message en forma text
      println("Casilla ocupada, cant move left this unit"); 
    }

    //upDate(x, y);
  }

  public void moveRight(){
   if(x< mapXDimension-1 && obj[x+1][y] == null){
      obj[x+1][y] = this;
      obj[x][y]= null;
      this.x = this.x + 1; 
      //println("moviendo Right " + x +" xPos:" + xPos);
    }else{
      //Poner waring message en forma text
      println("Casilla ocupada, cant move Right this unit"); 
    }
  }

  public void moveUp(){
     if(y > 0 && obj[x][y - 1] == null){
        obj[x][y-1] = this;
        obj[x][y]= null;
       this.y -= 1;      
     }else{
       println("can't move up, block occupied"); 
     }

  }
  
  public void moveDown(){
     if(y < mapYDimension-1 && obj[x][y + 1] == null){
       obj[x][y+1] = this;
       obj[x][y]= null;
       this.y += 1;      
     }else{
       println("can't move up, block occupied"); 
     }
  }
  
  public void printStatus(){
     println("Casilla x: " + x + " casilla y: " + y); 
    
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