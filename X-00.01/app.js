var x=0;
var y=0;
var o=0;

function setup(){
	var myCanvas = createCanvas(windowWidth, windowHeight);
	myCanvas.parent('can');

	
}

function draw(){
	//background(255);
	var n = sin(x)*100;
	var c = cos(y)*100;
	stroke(0);
	ellipse(n+(windowWidth/2),c+200,50,50);
	x=x+0.05+o;
	y=y+0.05+o;
	o=o+0.001;
	stroke(255);
	fill(0);
	//text(o,100,100);
	fill(255);

}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}