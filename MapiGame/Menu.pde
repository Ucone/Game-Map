class Menu{
  
 int slots;
 Element [] elements;
 //Variables para tamaño del menu proporcional?
 float margin = 20;
 float size = 70;
 // 200 = 20 + 70 + 20 + 70 + 20
  
  
 float [] rectCoordenates = {mapXDimension*blockDimension, 0 , 200, 200}; //Estos dos ultimos valores no se están untilizando
  
 Menu(int slots, Element [] elements){
   this.slots = slots;
   this.elements = elements;

 }

  
 public void draw(){
   rect(rectCoordenates[0], rectCoordenates[1], rectCoordenates[2], (4*margin + slots/2*size + (slots/2-1)*margin));

   float initialX = rectCoordenates[0] + margin;
   float initialY = rectCoordenates[1] + 2*margin;


   for (int i = 1; i <= slots; i++){
     rect(initialX, initialY, size, size);
     initialX += margin + size;

     if(i%2 == 0){
       initialX = rectCoordenates[0] + margin;
       initialY += margin + size;
     }
   }
   
   println("weasdae" +(4*margin + slots/2*size + (slots-1)*margin));
   //rectCoordenates[2]/9;
   
 }
  
}