import java.lang.reflect.Array; 
public class Location {
  public String bldgName;
  public int xCoordinate;
  public int yCoordinate;
  public int radius;
  public NodeWeighted node;
  
  public Location(String bldgName,int xCoordinate,int yCoordinate,int radius, NodeWeighted node) 
  {
    this.bldgName = bldgName;
    this.xCoordinate = xCoordinate;
    this.yCoordinate = yCoordinate;
    this.radius = radius;
    this.node = node;
  }
  
  //this method turns the cursor into a grabbing hand whenever it hovers over a building
  public boolean proximity() {
    float distance = sqrt(sq(mouseX - xCoordinate) + sq(mouseY - yCoordinate));
    return (distance<= radius); 
    }
}
