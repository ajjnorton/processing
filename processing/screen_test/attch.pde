// A random walker object!

class Walker {
  int x,y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    
    noStroke();
    //noFill();
    int r = int(random(255));
    int g = int(random(255));
    int b = int(random(255));
    int a = int(random(50));
    //strokeWeight(random(10));
    //stroke(r,g,b,a);
    
     fill(r,g,b,a);
    int size=int(random(60));
     //int size=50;
    ellipse(x,y,size,size);
    //rect(x, y, 50, 50);
    
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {
    
    int choice = int(random(8));
    //int z = int(random(50));
    int z = 50;
    
    if (choice == 0) {
      x+=z;
    } else if (choice == 1) {
      x-=z;
    } else if (choice == 2) {
      y+=z;
    } else if(choice == 3) {
      y-=z;
    }else if(choice == 4) {
      y+=z;
      x+=z;
    }else if(choice == 5) {
      y-=z;
      x-=z;
    }else if(choice == 6) {
      y-=z;
      x+=z;
    }else if(choice == 7) {
      y+=z;
      x-=z;
    }
    
    x = constrain(x,0,width-400);
    y = constrain(y,0,height-1);

  }
}