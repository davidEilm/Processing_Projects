int scale = 1;
int w,h;

void setup(){
  size(400,400, P3D);
  w=400;
  h=400;
  frameRate(10);
}

void draw(){
  background(240);
  noStroke();
  
  //fill(0);
  //text(floor(frameRate) + " fps", 0, 10);
  
  fill(190);
  text("Is this\nthe end?", w-55,h-20);
  //text("Is this\nthe end?", 30,200, -5);
  
  for(int x = 0; x < w / scale; x++){
    for(int y = 1; y < h / scale; y++){
      fill(random(255), 37);
      rect(x*scale,y*scale,scale,scale);
    }
  }
}
