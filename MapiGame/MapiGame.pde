
int blockDimension = 50;
int mapDimension = 10;
Map map;
PImage im;

Element [][] obj;
Element [][] mapi;

void setup(){
  
  im = loadImage("./images/sprites/green.png");
  size(800 ,800);
  background(0);
  
  obj = new Element [mapDimension][mapDimension];
  mapi = new Element [mapDimension][mapDimension];
    
  map = new Map();
  

  
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
     drawSelection(mouseX/blockDimension, mouseY/blockDimension);
  }
  
}

void keyPressed(){

  
 map.On(); 
}