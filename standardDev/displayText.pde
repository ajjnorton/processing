void codeInfo(){
  //println(PFont.list());
  PFont f;
  f = createFont("ProximaNovaA-Light",16,true); // Arial, 16 point, anti-aliasing on;
  
  String author = "anthony@modularity.works";
  String date = "Fri 22 April 2016";
  String title = "Standard Deviation";
  String desc = "Standard deviation is a measure of how spread out numbers are. The formula id the square root of the varience. "
  +"The varience is the average of the squared differences from the mean.";
  
  int paraGap = 40;
  int y_titleGap = 20;
  
  int y_authorTitle =50;
  int y_authorText = y_authorTitle + y_titleGap;
  
  int y_dateTitle = y_authorText + paraGap;
  int y_dateText = y_dateTitle + y_titleGap;
  
  int y_titleTitle = y_dateText + paraGap;
  int y_titleText = y_titleTitle + y_titleGap;
  
  int y_descTitle = y_titleText + paraGap;
  int y_descText = y_descTitle + y_titleGap;
  
  int textCol=0;
  
  textFont(f,12);
  fill(112,138,144);
  textLeading(20);
  text("Author",2200,y_authorTitle,100,100);
  
  fill(textCol);
  text(author,2200, y_authorText,300,100);
  
  
  fill(112,138,144);
  text("Date",2200,y_dateTitle,300,100);
  
  fill(textCol);
  text(date,2200,y_dateText,300,100);
  
  fill(112,138,144);
  text("Title",2200,y_titleTitle,300,300);

  fill(textCol);
  text(title,2200,y_titleText,300,300);
  
  fill(112,138,144);
  text("Description",2200,y_descTitle,300,300);
  
  fill(textCol);
  text(desc,2200,y_descText,300,300); 
}