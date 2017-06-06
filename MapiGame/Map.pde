class Map{
  
 //Block [][] blocks; 
 
  
 Map(){
   mapi = new Block [mapDimension][mapDimension];
   Block blockIn;
   for (int i = 0; i< mapDimension; i++){
     for(int j = 0; j<mapDimension; j++){
       if (i == 5){
         blockIn= new Water(i, j);
         
       }else{  
         blockIn= new Block(i, j);
       }

     }
   }
     
  //castle = new Castle(0*blockDimension, 5*blockDimension);
  //obj[0][5] = castle;
  ////DANGER!!! QUE PASA SI BORRAS EL EDIFICIO?!! has sobreescrito obj castle encima del terreno
  
   
 }
 
 void draw(){
   drawMap();
   drawElements();
      
 }
 
 public void drawMap(){
   for (int i = 0; i< mapDimension; i++){
     for(int j = 0; j<mapDimension; j++){
       mapi[i][j].draw();
     }
   }
 }
 
 public void drawElements(){
   for (int i = 0; i< mapDimension; i++){
     for(int j = 0; j<mapXDimension; j++){ //Seguro que aqui es mapXdimension??
       if (obj[i][j] != null){
         obj[i][j].draw();
         println("pintando obj");
       }
     }
   }
   
 }
 
  
  
}