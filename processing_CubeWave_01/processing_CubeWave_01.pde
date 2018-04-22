float w = 40;
float numOfBlocksInRow = 15;

float start1 = 0;
float start2 = 0;

void setup() {
  size(600, 600, P3D);
  //ortho(-width/1.3, width/1.3, -height/1.3, height/1.3, -600, 600);
  smooth(8);
}

void draw() {
  background(0);
  stroke(255);
  fill(0);

  translate(width/2, height/2, -500); //To view the simulation in orthographic-view, replace -500 in this line with width/2, and uncomment the ortho(...) line in setup().
  rotateX(radians(-25));
  rotateY(PI/4);

  //Shows the center
  //fill(255, 0, 0);
  //ellipse(0, 0, 20, 20);
  //fill(200);
  
  float s1 = start1;
  for (int x=0; x < numOfBlocksInRow; x++) {
    float s2 = start2;
    for (int z=0; z < numOfBlocksInRow; z++) {
      pushMatrix();

      translate(x*w, 0, z*w);
      translate(-(numOfBlocksInRow*w/2) + w/2, 0, -(numOfBlocksInRow*w/2) + w/2);
      scale(1, map(sin(s1) + sin(s2), -2, 2, 1, 5), 1);
      box(w);

      popMatrix();
      s2 += 0.3; //waviness
    }
    s1 += 0.3; //waviness
  }
  start1 += 0.05; //speed
  start2 += 0.05; //speed
}
