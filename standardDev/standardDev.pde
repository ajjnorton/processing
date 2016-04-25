float[] population = new float[12];

void setup(){
  fullScreen(1);
  pixelDensity(2);
  background(255);
  
  codeInfo();
  
  
  
}

void draw(){
  float sd = 200;
  float mean = width/2;
 float num = randomGaussian();
 float x = sd * num + mean;
 noStroke();
 fill(0,5);
 ellipse(x,height/2,40,40);
 noStroke();
println(x);
float a =0.5;
 if( x < 800){
   population[0]= population[0]+a;
 }else if((x > 800)&&(x<= 900)){
   population[1]= population[1]+a;
 }else if((x > 900)&&(x<= 1000)){
   population[2]= population[2]+a;
 }else if((x > 1000)&&(x<= 1100)){
   population[3]= population[3]+a;
 }else if((x > 1100)&&(x<= 1200)){
   population[4]= population[4]+a;
 }else if((x > 1200)&&(x<= 1300)){
   population[5]= population[5]+a;
 }else if((x > 1300)&&(x<= 1400)){
   population[6]= population[6]+a;
 }else if((x > 1400)&&(x<= 1500)){
   population[7]= population[7]+a;
 }else if((x > 1500)&&(x<= 1600)){
   population[8]= population[8]+a;
 }else if((x > 1600)&&(x<= 1700)){
   population[9]= population[9]+a;
 }else if((x > 1700)&&(x<= 1800)){
   population[10]= population[10]+a;
 }else if((x > 1800)&&(x<= 1900)){
   population[11]= population[11]+a;
 }
 printArray(population);
 int x_graph = 700;
 int y_graph = 500;
 int gap =100;
 int w = 20;
 fill(153,153,255);
 rect(x_graph + gap, y_graph, w, -population[0]);
 rect(x_graph + gap+100, y_graph, w, -population[1]);
 rect(x_graph + gap+200, y_graph, w, -population[2]);
 rect(x_graph + gap+300, y_graph, w, -population[3]);
 rect(x_graph + gap+400, y_graph, w, -population[4]);
 rect(x_graph + gap+500, y_graph, w, -population[5]);
 rect(x_graph + gap+600, y_graph, w, -population[6]);
 rect(x_graph + gap+700, y_graph, w, -population[7]);
 rect(x_graph + gap+800, y_graph, w, -population[8]);
 rect(x_graph + gap+800, y_graph, w, -population[9]);
 rect(x_graph + gap+900, y_graph, w, -population[10]);
 rect(x_graph + gap+1000, y_graph, w, -population[11]);
}