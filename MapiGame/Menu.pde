class Menu{
  
 int slots;
 Element [] elements;
 //Variables para tamaño del menu proporcional?
 float [] rectCoordenates = {mapXDimension, 0 , 200, 200};
  
 Menu(int slots, Element [] elements){
   this.slots = slots;
   this.elements = elements;

 }
  
  // 200 = 20 + 70 + 20 + 70 + 20
  
 public void draw(){
   rect(rectCoordenates[0], rectCoordenates[1], rectCoordenates[2], rectCoordenates[3]);
   float margin = 20;
   float initialX = rectCoordenates[0] + margin;
   float initialY = rectCoordenates[1] + margin;
   float size = 70;

   for (int i = 0; i < slots; i++){
     rect(initialX, initialY, size, size);
     initialX += margin;
     initialY += margin;
     if(i%2 == 0){
       initialX = rectCoordenates[0] + margin;
     }
   }
   //rectCoordenates[2]/9;
   
 }
  
}