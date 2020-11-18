float x;
float y;
float g = 9.82;
float m = 1;
float t;
float l = 0;
float E = 1;
float alpha = PI/4;
float A = sin(2*PI/360*alpha);
float v0 = 10;
float u0 = sqrt(2*E/(1+A*A));
float x0 = 100;
float y0 = -300;
float a = mouseY-y0;
float b = mouseX-x0;



void draw(){

}


void mousePressed(){
  updateModel();
  println(x,y);
}

void updateModel(){
  x = u0*t;
  y = (-0.5*g*t*t + v0*t + y0)*-1;
  t = t + 1;
}
