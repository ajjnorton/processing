import processing.pdf.*;

// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Walker w;

void setup() {

  pixelDensity(2);

  
 
  //size(1200, 800);

  fullScreen();
  //pixelDensity(2);
  smooth();
 beginRecord(PDF, "filename.pdf"); 
  background(255);
  // Create a walker object
  w = new Walker();
  codeInfo();

  
 
  

  
}


void codeInfo(){
  //println(PFont.list());
  PFont f;
  f = createFont("ProximaNovaA-Light",16,true); // Arial, 16 point, anti-aliasing on;
  
  String author = "anthony@modularity.works";
  String date = "Fri 22 April 2016";
  String title = "A random walk";
  String desc = "Uses the the random() function to pick a value in the range zero to eight. Each of the eight values corresponds "
  + "to a direction as defined by the points on a compass. For example 0=North, 1=North East, etc. \nFor each iterat a random direction "
  + "is chosen and a new ellipse is drawn in that location.\n"
  + "The random numbers we get from from the random() function are not truly random and are therefore known as pseudo-random. "
  + "They are the result of a mathematical function. Over time it would yield a repeating pattern.";
  
  int x_text =width-340;
  
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
  text("Author",x_text,y_authorTitle,100,100);
  
  fill(textCol);
  text(author,x_text, y_authorText,300,100);
  
  
  fill(112,138,144);
  text("Date",x_text,y_dateTitle,300,100);
  
  fill(textCol);
  text(date,x_text,y_dateText,300,100);
  
  fill(112,138,144);
  text("Title",x_text,y_titleTitle,300,300);

  fill(textCol);
  text(title,x_text,y_titleText,300,300);
  
  fill(112,138,144);
  text("Description",x_text,y_descTitle,300,300);
  
  fill(textCol);
  text(desc,x_text,y_descText,300,300); 
}

void draw() {
 
  // Run the walker object
  w.step();
  w.render();
  
  
}

void mouseClicked() {
  endRecord();
}