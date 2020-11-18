float x;
float y;
float g = 9.82;
float t;
float l = 0;
float E = 100;
float alpha = PI/4;
float A = sin(2*PI/360*alpha);
float v0 = 10;
float u0 = sqrt(2*E/(1+A*A));
float x0 = 50;
float y0 = -480;
float a = mouseY-y0;
float b = mouseX-x0;

void setup(){
  size(500,500);
}

void draw(){
 circle(x,y,20);
}


void mousePressed(){
  updateModel();
  println(x,y);
}

void updateModel(){
  x = u0*t+x0;
  y = (-0.5*g*t*t + v0*t + y0)*-1;
  t = t + 1;
}
