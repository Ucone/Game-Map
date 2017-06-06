
int blockDimension = 50;
int mapDimension = 10;
int mapXDimension = 10;

Map map;
PImage im;

Element [][] obj;
Element [][] mapi;
Element elementSelected;

//Units
Castle castle;
Unit unit;

void setup(){
  
  im = loadImage("./images/sprites/green.png");
  size(800 ,800);
  background(0);
  
  obj = new Element [mapDimension][mapDimension];
  mapi = new Element [mapDimension][mapDimension];
    
  map = new Map();
  
  castle = new Castle(0*blockDimension, 5*blockDimension);
  obj[0][5] = castle;
  
  unit = new Soldier(3*blockDimension, 3*blockDimension);
  obj[3][3] = unit;
}


void draw(){  
  map.draw();
}

public void drawSelection(int i, int j){

  if(obj[i][j] != null){
    image(obj[i][j].image, 0, mapDimension*blockDimension);
  }else{
    image(mapi[i][j].image, 0, mapDimension*blockDimension);
  }
  /*Hacer un switch,
  Si TIPO  (o la imagen == tal)
  sacar características 
  */
}

void mousePressed(){
    
  //Pincha en el tablero
  if(mouseX < 0 || mouseX > mapDimension*blockDimension || mouseY < 0 || mouseY > mapDimension*blockDimension){
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
       
     }    
     
     drawSelection(mouseX/blockDimension, mouseY/blockDimension);
  }
  
}

void keyPressed(){
  if(elementSelected != null){
    if(elementSelected.type == "UNIT"){
      if ( key == CODED){
        switch(keyCode){
         case LEFT:
            
            break;
         case RIGHT:
            
            break;
         case UP:
         
            break;
         case DOWN:
         
            break; 
        }
      }
    }
  }

}