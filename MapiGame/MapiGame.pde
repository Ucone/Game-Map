
int blockDimension = 50;
int mapYDimension = 10;
int mapXDimension = 10;

Map map;
PImage im;

Element [][] obj;
Block [][] mapi;
Element elementSelected;

//Units
Castle castle;
Unit unit;

void setup(){
  
  im = loadImage("./images/sprites/green.png");
  size(800 ,800);
  background(0);
  
  //for (int i = 0; i< mapDimension; i++){
  //   for(int j = 0; j<mapDimension; j++){
  //     //obj[i][j] = null;
  //     mapi[i][j] = null;
  //   }
  //}
  
  obj = new Element [mapYDimension][mapYDimension];
  mapi = new Block[mapYDimension][mapYDimension];
    
  map = new Map();
  
  castle = new Castle(0, 5);
  
  unit = new Soldier(3, 3);
}


void draw(){  
  map.draw();
}

public void drawSelection(int i, int j){

  if(obj[i][j] != null){
    image(obj[i][j].image, 0, mapYDimension*blockDimension);
  }else{
    image(mapi[i][j].image, 0, mapYDimension*blockDimension);
  }
  /*Hacer un switch,
  Si TIPO  (o la imagen == tal)
  sacar características 
  */
}

void mousePressed(){
    
  //Pincha en el tablero
  if(mouseX < 0 || mouseX > mapYDimension*blockDimension || mouseY < 0 || mouseY > mapYDimension*blockDimension){
    //Fuera del tablero  
  }else{
     println("x es: " + mouseX/blockDimension);
     println("y es: " + mouseY/blockDimension);
     if (obj[mouseX/blockDimension][mouseY/blockDimension] != null){
       elementSelected = obj[mouseX/blockDimension][mouseY/blockDimension];
       
       if (elementSelected.type == "BUILDING" ){
         elementSelected.menu.draw();
         println("draw menu");
       }
       
      //println("Element Selected type: " + elementSelected.type);
     }else{
       elementSelected = null; 
     }
     
     drawSelection(mouseX/blockDimension, mouseY/blockDimension);
  }
  
}

void keyPressed(){
  if(elementSelected != null){
    println("Element Selected type: " + elementSelected.type);
    if(elementSelected.type == "UNIT"){
      Unit uni = (Unit) elementSelected;
      if ( key == CODED){
        switch(keyCode){
         case LEFT:
            uni.moveLeft();            
            break;
         case RIGHT:
            uni.moveRight();
            break;
         case UP:
             uni.moveUp();
            break;
         case DOWN:
            uni.moveDown();
            break; 
        }
      }
      uni.printStatus();
    }
  }

}