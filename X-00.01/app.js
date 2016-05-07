var y = 0;
var x = 0;

function setup() {
    var myCanvas = createCanvas(windowWidth, 400);
    myCanvas.parent('can');
}

function draw() {
    //background(255);
    step();

}

function windowResized() {
    //resizeCanvas(windowWidth, windowHeight);
    //resizeCanvas(windowWidth/2, 400);
}

function step() {

    choice = int(random(8));
   

    var z = 1;

    if (choice == 0) {
    	// Move east
        x += z;
    } else if (choice == 1) {
    	// Move west
        x -= z;
    } else if (choice == 2) {
    	// Move north
        y += z;
    } else if (choice == 3) {
    	// Move south
        y -= z;
    } else if (choice == 4) {
    	// Move north east
        y += z;
        x += z;
    } else if (choice == 5) {
    	// Move south west
        y -= z;
        x -= z;
    } else if (choice == 6) {
    	// Move south east
        y -= z;
        x += z;
    } else if (choice == 7) {
    	// Move north west
        y += z;
        x -= z;
    }

    //x = constrain(x,400,width);
    y = constrain(y, -200, height);

    stroke(0, 0, 0, 50);

    ellipse(x + 400, y + height / 2, 10, 10);

}
