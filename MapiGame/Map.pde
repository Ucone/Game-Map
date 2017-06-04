class Map{
  
 Block [][] blocks; 
 Castle castle;

  
  
 Map(){
   blocks = new Block [mapDimension][mapDimension];
   Block blockIn;
   for (int i = 0; i< mapDimension; i++){
     for(int j = 0; j<mapDimension; j++){
       if (i == 5){
         blockIn= new Water(i*blockDimension, j*blockDimension);
         
       }else{
         blockIn= new Block(i*blockDimension, j*blockDimension);
       }
       blocks[i][j] = blockIn;
       mapi[i][j] = blockIn;
     }
   }
     
  castle = new Castle(0*blockDimension, 5*blockDimension);
  obj[0][5] = castle;
  //DANGER!!! QUE PASA SI BORRAS EL EDIFICIO?!! has sobreescrito obj castle encima del terreno
  
   
 }
 
 void draw(){
   for (int i = 0; i< mapDimension; i++){
     for(int j = 0; j<mapDimension; j++){
       blocks[i][j].draw();
     }
   }
   
   castle.draw();
 }  
 
 void On(){
   
  castle.menu(); 
 }
  
}