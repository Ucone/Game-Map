class Player{
  
  String name;
  int team;
  ArrayList<Element> posesions;
  
 Player(String name){
   this.name = name;
   this.posesions = new ArrayList<Element>();
 }
 
 public void addBuilding(Building building){
   posesions.add(building);
 }
 
 public void addUnit(Unit unit){
   posesions.add(unit);
 }
 
  
  
  
}