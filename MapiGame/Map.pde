class Map{
  
 //Block [][] blocks; 
 
  
 Map(){
   mapi = new Block [mapYDimension][mapYDimension];
   Block blockIn;
   for (int i = 0; i< mapYDimension; i++){
     for(int j = 0; j<mapYDimension; j++){
       if (i == 5){
         blockIn= new Water(i, j);         
       }else{  
         blockIn= new Block(i, j);
       }
     }
   }
     
 }
 
 void draw(){
   drawMap();
   drawElements();
      
 }
 
 public void drawMap(){
   for (int i = 0; i< mapYDimension; i++){
     for(int j = 0; j<mapYDimension; j++){
       mapi[i][j].draw();
     }
   }
 }
 
 public void drawElements(){
   for (int i = 0; i< mapYDimension; i++){
     for(int j = 0; j<mapXDimension; j++){ //Seguro que aqui es mapXdimension??
       if (obj[i][j] != null){
         obj[i][j].draw();
       }
     }
   }
   
 }
 
  
  
}