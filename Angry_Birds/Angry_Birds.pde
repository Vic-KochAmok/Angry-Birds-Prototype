float x;
float y;
float g = 9.82;
float t;
float x0 = 100;
float y0 = 400;
float a;
float b;
float l;
float E;
float A;
float u0;
float v0;

void setup(){
  size(500,500);
}

void draw(){
  clear();
  stroke(255);
 circle(x0,y0,20);
 circle(x,y,25);
  a = mouseY-y0;
  b = mouseX-x0;
  l = dist(mouseX,mouseY,x0,y0);
  E = 0.1*l*l;
  A = atan(a/b);
  u0 = sqrt(2*E/(1+A*A));
  v0 = A*u0;
  line(mouseX,mouseY,x0,y0);
}


void mousePressed(){
  updateModel();
  println(x,y);
}

void updateModel(){
  x = u0*t+x0;
  y = 0.5*g*t*t + v0*t + y0;
  t = t + 1;
}
