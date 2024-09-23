
PImage map;
 public Location[] buildings = new Location[19];
GraphWeighted graphWeighted = new GraphWeighted(false);

void settings()
{
  size(948,952);
  map = loadImage("https://1.bp.blogspot.com/-BSykm7IH-W0/YEqITGX8-SI/AAAAAAAABW4/25LM7lN2NcoUdA5HNzlD1lXx2R0tzazmACLcBGAsYHQ/s320/exetermap.png");
}

void setup()
{
          NodeWeighted Theater = new NodeWeighted(0, "Theater", buildings[0]);
          NodeWeighted Health = new NodeWeighted(1, "Health", buildings[1]);
          NodeWeighted Science = new NodeWeighted(2, "Science", buildings[2]);
          NodeWeighted Music = new NodeWeighted(3, "Music", buildings[3]);
          NodeWeighted Church = new NodeWeighted(4, "Church", buildings[4]);
          NodeWeighted Art = new NodeWeighted(5, "Art", buildings[5]);
          NodeWeighted EPAC = new NodeWeighted(6, "EPAC", buildings[6]);
          NodeWeighted JSmith = new NodeWeighted(7, "JSmith", buildings[7]);
          NodeWeighted Phillips_Hall = new NodeWeighted(8, "Phillips_Hall", buildings[8]);
          NodeWeighted Academy_Building = new NodeWeighted(9, "Academy_Building", buildings[9]);
          NodeWeighted Abbott = new NodeWeighted(10, "Abbott", buildings[10]);
          NodeWeighted Wheelwright = new NodeWeighted(11, "Wheelwright", buildings[11]);
          NodeWeighted Merill = new NodeWeighted(12, "Merill", buildings[12]);
          NodeWeighted Wetherell = new NodeWeighted(13, "Wetherell", buildings[13]);
          NodeWeighted Langdell = new NodeWeighted(14, "Langdell", buildings[14]);
          NodeWeighted Soule = new NodeWeighted(15, "Soule", buildings[15]);
          NodeWeighted Peabody = new NodeWeighted(16, "Peabody", buildings[16]);
          NodeWeighted Hoyt = new NodeWeighted(17, "Hoyt", buildings[17]);
          NodeWeighted Bookstore = new NodeWeighted(18, "Bookstore", buildings[18]);

          // Our addEdge method automatically adds Nodes as well.
          // The addNode method is only there for unconnected Nodes,
          
          graphWeighted.addEdge(Theater, Health, 132.69); 
          graphWeighted.addEdge(Theater, Science, 190.38);
          graphWeighted.addEdge(Theater, Music, 57.69); 
          graphWeighted.addEdge(Theater, Church, 328.84); 
          graphWeighted.addEdge(Health, Science, 57.69);
          graphWeighted.addEdge(Science, Music, 144.23);
          graphWeighted.addEdge(Music, Church, 98.07); 
          graphWeighted.addEdge(Art, Music, 57.69); 
          graphWeighted.addEdge(Art, EPAC, 80.7); 
          graphWeighted.addEdge(Art, Academy_Building, 49); 
          graphWeighted.addEdge(EPAC, Science, 75); 
          graphWeighted.addEdge(EPAC, JSmith, 103.85); 
          graphWeighted.addEdge(EPAC, Phillips_Hall, 115.38);
          graphWeighted.addEdge(EPAC, Academy_Building, 98.07); 
          graphWeighted.addEdge(JSmith, Wheelwright, 150);
          graphWeighted.addEdge(JSmith, Phillips_Hall, 103.85);
          graphWeighted.addEdge(Phillips_Hall, Academy_Building, 126.92);
          graphWeighted.addEdge(Phillips_Hall, Abbott, 92.3); 
          graphWeighted.addEdge(Phillips_Hall, Wheelwright, 92.3);
          graphWeighted.addEdge(Phillips_Hall, Merill, 132.69); 
          graphWeighted.addEdge(Phillips_Hall, Wetherell, 138.46); 
          graphWeighted.addEdge(Phillips_Hall, Langdell, 132.69); 
          graphWeighted.addEdge(Academy_Building, Abbott, 57.69); 
          graphWeighted.addEdge(Abbott, Soule, 57.69); 
          graphWeighted.addEdge(Wheelwright, Merill, 86.54); 
          graphWeighted.addEdge(Merill, Wetherell, 28.8);
          graphWeighted.addEdge(Wetherell, Langdell, 28.8);
          graphWeighted.addEdge(Langdell, Soule, 98.07);
          graphWeighted.addEdge(Langdell, Hoyt, 69.23);
          graphWeighted.addEdge(Soule, Peabody, 46.15); 
          graphWeighted.addEdge(Soule, Hoyt, 57.69); 
          graphWeighted.addEdge(Hoyt, Bookstore, 57.69); 

        
      buildings[0] = new Location("Theater",260,810,50,Theater);
      buildings[1] = new Location("Health",240,610,50, Health);
      buildings[2] = new Location("Science",340,640,50, Science);
      buildings[3] = new Location("Music",360,750,50, Music);
      buildings[4] = new Location("Church",424,828,50, Church);
      buildings[5] = new Location("Art",470,680,50, Art);
      buildings[6] = new Location("EPAC",390,510,50, EPAC);
      buildings[7] = new Location("JSmith",420,390,50, JSmith);
      buildings[8] = new Location("Phillips_Hall",540,430,50, Phillips_Hall);
      buildings[9] = new Location("Academy_Building",535,585,50, Academy_Building);
      buildings[10] = new Location("Abbott",605,530,50, Abbott);
      buildings[11] = new Location("Wheelwright",570,320,50, Wheelwright);
      buildings[12] = new Location("Merill",670,310,50, Merill);
      buildings[13] = new Location("Wetherell",700,350,50, Wetherell);
      buildings[14] = new Location("Langdell",680,400,50, Langdell);
      buildings[15] = new Location("Soule",700,490,50, Soule);
      buildings[16] = new Location("Peabody",740,570,50, Peabody);
      buildings[17] = new Location("Hoyt",800,440,50, Hoyt);
      buildings[18] = new Location("Bookstore",880,450,50, Bookstore);

}



void draw()
{
  image(map,0,0,948,952);
  
  for (int i=0;i<buildings.length;i++)
  {
     if (buildings[i].proximity()==true) {
       cursor(HAND);
       fill(0);
       textSize(32);
       text(buildings[i].bldgName, buildings[i].xCoordinate, buildings[i].yCoordinate, 300, 100);
     }
   }
   
   /*line(child.building.xCoordinate, child.building.yCoordinate, parent.building.yCoordinate, parent.building.xCoordinate);
   stroke(0);
   strokeWeight(4);*/
     
  /*fill(192,0); //void
  noStroke();
  rect(380, 583, 10, 90);
  pushMatrix();
  // move the origin to the pivot point
  translate(380, 583); 
  // then pivot the grid
  rotate(radians(-118));
  // and draw the square at the origin
  fill(200,0,0);
  rect(0, 0, 10, 90);
  popMatrix();*/
  
  if(ppath.indexOf("EPAC -> Academy_Building")>-1||ppath.indexOf("Academy_Building -> EPAC")>-1){
  fill(192,0); //epac to academy
  noStroke();
  rect(450, 548, 10, 60);
  pushMatrix();
  translate(450, 548); 
  rotate(radians(-118));
  fill(200,0,0);
  rect(0, 0, 10, 60);
  popMatrix();}
  
  if(ppath.indexOf("EPAC -> Art")>-1||ppath.indexOf("Art -> EPAC")>-1){
  fill(192,0); //epac to art
  noStroke();
  rect(450, 548, 10, 60);
  pushMatrix();
  translate(450, 548); 
  rotate(radians(-28));
  fill(200,0,0);
  rect(0, 0, 10, 60);
  popMatrix();
  }
  
  if(ppath.indexOf("Academy_Building")>-1){
  fill(192,0);  //enter academy
  noStroke();
  rect(490, 518, 10, 40);
  pushMatrix();
  translate(490, 518); 
  rotate(radians(-28));
  fill(200,0,0);
  rect(0, 0, 10, 40);
  popMatrix();
  }
  
  if(ppath.indexOf("Art -> Academy_Building")>-1||ppath.indexOf("Academy_Building -> Art")>-1){
  fill(192,0); //art to academy
  noStroke();
  rect(450, 628, 10, 60);
  pushMatrix();
  translate(450, 628); 
  rotate(radians(-118));
  fill(200,0,0);
  rect(0, 0, 10, 60);
  popMatrix();
  }
  
  if(ppath.indexOf("Abbott -> Academy_Building")>-1||ppath.indexOf("Academy_Building -> Abbott")>-1){
  fill(192,0); //academy to abbott p1
  noStroke();
  rect(500, 523, 10, 90);
  pushMatrix();
  translate(500, 523); 
  rotate(radians(-118));
  fill(200,0,0);
  rect(0, 0, 10, 90);
  popMatrix();
  }
  
  if(ppath.indexOf("JSmith -> Academy_Building")>-1||ppath.indexOf("Academy_Building -> JSmith")>-1){
  fill(192,0); //academy to jsmith
  noStroke();
  rect(500, 523, 10, 140);
  pushMatrix();
  translate(500, 523); 
  rotate(radians(-208));
  fill(200,100,0);
  rect(0, 0, 10, 140);
  popMatrix();
  }
  
  if(ppath.indexOf("EPAC -> Academy_Building")>-1||ppath.indexOf("Academy_Building -> EPAC")>-1){
  fill(192,0); //epac to academy
  noStroke();
  rect(500, 523, 10, 70);
  pushMatrix();
  translate(500, 523); 
  rotate(radians(-248));
  fill(200,100,0);
  rect(0, 0, 10, 70);
  popMatrix();
  }
  
  if(ppath.indexOf("Phillips_Hall -> Academy_Building")>-1||ppath.indexOf("Academy_Building -> Phillips")>-1){
  fill(192,0); //academy to phillips
  noStroke();
  rect(500, 523, 10, 70);
  pushMatrix();
  translate(500, 523); 
  rotate(radians(-168));
  fill(200,100,0);
  rect(0, 0, 10, 70);
  popMatrix();
  }
  
  if(ppath.indexOf("EPAC -> Phillips_Hall")>-1||ppath.indexOf("Phillips_Hall -> EPAC")>-1){
  fill(192,0); //epac to phillips
  noStroke();
  rect(430, 493, 10, 90);
  pushMatrix();
  translate(430, 493); 
  rotate(radians(-118));
  fill(200,0,0);
  rect(0, 0, 10, 90);
  popMatrix();
  }
  
  if(ppath.indexOf("JSmith -> Wheelwright")>-1||ppath.indexOf("Wheelwright -> JSmith")>-1){
  fill(192,0); //jsmith to wheelwright
  noStroke();
  rect(440, 403, 10, 120);
  pushMatrix();
  translate(440, 403); 
  rotate(radians(-113));
  fill(200,0,0);
  rect(0, 0, 10, 120);
  popMatrix();
  }
  
  if(ppath.indexOf("JSmith -> Phillips_Hall")>-1||ppath.indexOf("Phillips_Hall -> JSmith")>-1){
  fill(192,0); //jsmith to phillips
  noStroke();
  rect(440, 409, 10, 70);
  pushMatrix();
  translate(440, 409); 
  rotate(radians(-58));
  fill(200,0,0);
  rect(0, 0, 10, 70);
  popMatrix();
  }
  
  if(ppath.indexOf("JSmith -> EPAC")>-1||ppath.indexOf("EPAC -> JSmith")>-1){
  fill(192,0); //epac to jsmith
  noStroke();
  rect(431, 393, 10, 90);
  pushMatrix();
  translate(431, 393); 
  rotate(radians(8));
  fill(200,0,0);
  rect(0, 0, 10, 90);
  popMatrix();
  }
  
  if(ppath.indexOf("Wheelwright -> Abbott")>-1||ppath.indexOf("Wheelwright -> Soule")>-1||(ppath.indexOf("Abbott -> Wheelwright")>-1||ppath.indexOf("Soule -> Wheelwright")>-1)){
  fill(192,0); //wheelwright to abbott+soule
  noStroke();
  rect(627, 443, 10, 120);
  pushMatrix();
  translate(627, 443); 
  rotate(radians(-208));
  fill(200,100,0);
  rect(0, 0, 10, 120);
  popMatrix();
  }
  
  if(ppath.indexOf("Phillips_Hall -> Abbott")>-1||ppath.indexOf("Phillips_Hall -> Soule")>-1||(ppath.indexOf("Abbott -> Phillips_Hall")>-1||ppath.indexOf("Soule -> Phillips_Hall")>-1)){
  fill(192,0); //phillips to a+s
  noStroke();
  rect(630, 448, 10, 70);
  pushMatrix();
  translate(630, 448); 
  rotate(radians(-248));
  fill(200,100,0);
  rect(0, 0, 10, 70);
  popMatrix();
  }
  
  if(ppath.indexOf("Merill -> Abbott")>-1||ppath.indexOf("Merill -> Soule")>-1||(ppath.indexOf("Abbott -> Merill")>-1||ppath.indexOf("Soule -> Merill")>-1)||ppath.indexOf("Wetherell -> Abbott")>-1||ppath.indexOf("Wetherell -> Soule")>-1||(ppath.indexOf("Abbott -> Wetherell")>-1||ppath.indexOf("Soule -> Wetherell")>-1)||ppath.indexOf("Langdell -> Abbott")>-1||ppath.indexOf("Langdell -> Soule")>-1||(ppath.indexOf("Abbott -> Langdell")>-1||ppath.indexOf("Soule -> Langdell")>-1)){
  fill(192,0); //m+w+l to a+S
  noStroke();
  rect(630, 453, 10, 70);
  pushMatrix();
  translate(630, 453); 
  rotate(radians(-163));
  fill(200,100,0);
  rect(0, 0, 10, 70);
  popMatrix();
  }
  
  if(ppath.indexOf("Merill -> Phillips_Hall")>-1||ppath.indexOf("Phillips_Hall -> Merill")>-1||ppath.indexOf("Wetherell -> Phillips_Hall")>-1||ppath.indexOf("Phillips_Hall -> Wetherell")>-1||ppath.indexOf("Langdell -> Phillips_Hall")>-1||ppath.indexOf("Phillips_Hall -> Langdell")>-1){
  fill(192,0); //phillips to m+w+l
  noStroke();
  rect(555, 433, 10, 140);
  pushMatrix();
  translate(555, 433); 
  rotate(radians(-118));
  fill(200,0,0);
  rect(0, 0, 10, 140);
  popMatrix();
  }
  
  if(ppath.indexOf("Merill -> Wheelwright")>-1||ppath.indexOf("Wheelwright -> Merill")>-1||ppath.indexOf("Wetherell -> Wheelwright")>-1||ppath.indexOf("Wheelwright -> Wetherell")>-1||ppath.indexOf("Langdell -> Wheelwright")>-1||ppath.indexOf("Wheelwright -> Langdell")>-1){
  fill(192,0); //wheelwright to m+w+l
  noStroke();
  rect(570, 339, 10, 70);
  pushMatrix();
  translate(570, 339); 
  rotate(radians(-58));
  fill(200,0,0);
  rect(0, 0, 10, 70);
  popMatrix();
  }
  
  if(ppath.indexOf("Phillips_Hall -> Wheelwright")>-1||ppath.indexOf("Wheelwright -> Phillips_Hall")>-1){
  fill(192,0); //phillips to wheelwright
  noStroke();
  rect(561, 328, 10, 90);
  pushMatrix();
  translate(561, 328); 
  rotate(radians(8));
  fill(200,0,0);
  rect(0, 0, 10, 90);
  popMatrix();
  }
  
  if(ppath.indexOf("Abbott -> Academy_Building")>-1||ppath.indexOf("Academy_Building -> Abbott")>-1){
  fill(192,0); //academy to abbott p2
  noStroke();
  rect(555, 493, 10, 80);
  pushMatrix();
  translate(555, 493); 
  rotate(radians(-118));
  fill(200,0,0);
  rect(0, 0, 10, 80);
  popMatrix();
  }
  
  if(ppath.indexOf("Abbott")>-1||ppath.indexOf("Soule")>-1){
  fill(192,0); //enter a+s
  noStroke();
  rect(687, 543, 10, 120);
  pushMatrix();
  translate(687, 543); 
  rotate(radians(-208));
  fill(200,100,0);
  rect(0, 0, 10, 120);
  popMatrix();
  }
  
  /*fill(192,0); //void
  noStroke();
  rect(635, 453, 10, 80);
  pushMatrix();
  translate(635, 453); 
  rotate(radians(-118));
  fill(200,0,0);
  rect(0, 0, 10, 80);
  popMatrix();*/
  
  if(ppath.indexOf("Soule -> Langdell")>-1||ppath.indexOf("Langdell -> Soule")>-1||ppath.indexOf("Peabody -> Langdell")>-1||ppath.indexOf("Langdell -> Peabody")>-1||ppath.indexOf("Langdell -> Hoyt")>-1||(ppath.indexOf("Hoyt -> Langdell")>-1)){
  fill(192,0); //langdell to soule+peabody+hoyt
  noStroke();
  rect(767, 513, 10, 120);
  pushMatrix();
  translate(767, 513); 
  rotate(radians(-208));
  fill(200,100,0);
  rect(0, 0, 10, 120);
  popMatrix();
  }
  
  if(ppath.indexOf("Abbott -> Hoyt")>-1||ppath.indexOf("Hoyt -> Abbott")>-1||ppath.indexOf("Soule -> Hoyt")>-1||ppath.indexOf("Hoyt -> Soule")>-1||ppath.indexOf("Hoyt -> Peabody")>-1||(ppath.indexOf("Peabody -> Hoyt")>-1)){
  fill(192,0); //hoyt to abbott+soule+peabody
  noStroke();
  rect(687, 543, 10, 120);
  pushMatrix();
  translate(687, 543); 
  rotate(radians(-118));
  fill(200,100,0);
  rect(0, 0, 10, 120);
  popMatrix();
  }
  
  if(ppath.indexOf("Hoyt -> Bookstore")>-1||ppath.indexOf("Bookstore -> Hoyt")>-1){
  fill(192,0); //hoyt to bookstore
  noStroke();
  rect(820, 443, 10, 30);
  pushMatrix();
  translate(820, 443); 
  rotate(radians(-118));
  fill(200,100,0);
  rect(0, 0, 10, 30);
  popMatrix();
  }
  
  /*fill(192,0); //void
  noStroke();
  rect(600, 553, 10, 80);
  pushMatrix();
  translate(600, 553); 
  rotate(radians(-208));
  fill(200,100,0);
  rect(0, 0, 10, 80);
  popMatrix();*/
  
  if(ppath.indexOf("Health -> Science")>-1||ppath.indexOf("Science -> Health")>-1){
  fill(192,0); //health to science
  noStroke();
  rect(260, 643, 10, 50);
  pushMatrix();
  translate(260, 643); 
  rotate(radians(-118));
  fill(200,100,0);
  rect(0, 0, 10, 50);
  popMatrix();
  }
  
  if(ppath.indexOf("Theater -> Music")>-1||ppath.indexOf("Music -> Theater")>-1){
  fill(192,0); //theater to music
  noStroke();
  rect(240, 773, 10, 70);
  pushMatrix();
  translate(240, 773); 
  rotate(radians(-118));
  fill(200,100,0);
  rect(0, 0, 10, 70);
  popMatrix();
  }
  
  if(ppath.indexOf("Theater -> Health")>-1||ppath.indexOf("Health -> Theater")>-1){
  fill(192,0); //theater to health
  noStroke();
  rect(240, 773, 10, 120);
  pushMatrix();
  translate(240, 773); 
  rotate(radians(-170));
  fill(200,100,0);
  rect(0, 0, 10, 120);
  popMatrix();
  }
  
  if(ppath.indexOf("Science -> Music")>-1||ppath.indexOf("Music -> Science")>-1){
  fill(192,0); //music to science
  noStroke();
  rect(360, 603, 10, 130);
  pushMatrix();
  translate(360, 603); 
  rotate(radians(-28));
  fill(200,100,0);
  rect(0, 0, 10, 130);
  popMatrix();
  }
  
  if(ppath.indexOf("Art -> Music")>-1||ppath.indexOf("Music -> Art")>-1){
  fill(192,0); //music to art
  noStroke();
  rect(420, 723, 10, 40);
  pushMatrix();
  translate(420, 723); 
  rotate(radians(-118));
  fill(200,100,0);
  rect(0, 0, 10, 40);
  popMatrix();
  }
  
  if(ppath.indexOf("Science -> EPAC")>-1||ppath.indexOf("EPAC -> Science")>-1){
  fill(192,0); //science to epac
  noStroke();
  rect(360, 603, 10, 40);
  pushMatrix();
  translate(360, 603); 
  rotate(radians(-118));
  fill(200,100,0);
  rect(0, 0, 10, 40);
  popMatrix();
}
}
  int clickcount = 0;
  NodeWeighted beginning;
  NodeWeighted destination;

void mouseClicked(){
  for (int a=0; a< buildings.length; a++) {
    
    if (buildings[a].proximity() == true) {
       clickcount += 1;
       if (clickcount == 1) {
       System.out.println("Beginning: " + buildings[a].bldgName);
       beginning = buildings[a].node;
        }
        if (clickcount == 2){
       System.out.println("Destination: " + buildings[a].bldgName);
       destination = buildings[a].node;

          graphWeighted.DijkstraShortestPath(beginning, destination);
        }
       }
  }
}
