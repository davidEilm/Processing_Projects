//import peasy.*;
//import peasy.org.apache.commons.math.*;
//import peasy.org.apache.commons.math.geometry.*;

float incrementValue = 0.01;
float movingSpeed = 4;
int width = 600;
int height = 600;
float start = 0;

//PeasyCam cam;

void setup() {
  size(600, 600);
  noiseDetail(4);
  
  //cam = new PeasyCam(this, 520);
  //cam.lookAt(width/2,height/2,0);
  //cam.setResetOnDoubleClick(false);
}

void draw() {
  background(240);
  
  fill(0);
  text(floor(frameRate) + " fps", 0, 10);
  fill(255);

  stroke(200, 0, 0, 100);
  line(0, height / 2, width, height / 2);
  stroke(0);
  
  noFill();

  float xOff = start;
  beginShape();
  for (int x = 0; x < width; x++) {
    float y = f(xOff); //Replace f(xOff) with g(xOff), h(xOff) or some other created functions.
    vertex(x, y);
    xOff += incrementValue;
  }
  endShape();

  start += incrementValue * movingSpeed;
}

//Perlin-Noise
private float f(float x) {
  return map(noise(x), 0, 1, (float)height, 0);
}

//Sine
private float g(float x) {
  return map((float)Math.sin(x), -1, 1, (float)height, 0);
}

//Tangent
private float h(float x) {
  return map((float)Math.tan(x), -50, 50, (float)height, 0);
}
