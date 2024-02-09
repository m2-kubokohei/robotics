float a=0;
float b=0;
float c=0;
float d=0.005;
float e=0;
float f=0.001;
int g=0;
int h=0;
float i=0.01;

void setup(){
  size(1000, 1000, P3D);
  stroke(0);
}

void draw(){
  background(255);
  
  translate(width/2-250, 830, 0);
  fill(63, 127, 255);
  rotateY(a);
  box(50, 300, 50);
  if((a>=PI/2)||(a<=0)){
    h=0;
  }
  if (keyPressed){
    if(key=='h'){
      h=1;
    }
    if(key=='H'){
      h=-1;
    }
  }
  a+=h*i;
  
  translate(0,-150,0);
  rotateZ(-b);
  translate(200+50*sin(b),0, 0); 
  fill(0, 127, 20);
  box(450, 30, 30);
  
  translate(225,15,0);
  rotateZ(b);
  fill(40,70,18);
  box(120,4,120);
  
  if(abs(b)>=PI/6){
    g=0;
  } 
  if(keyPressed){
    if(key=='1'){
      g=1;
    }
    
    if(key=='2'){
      g=0;
    }
    if(key=='3'){
      g=-1;
    }
  }

  b+=d*g;
  
  translate(-55,0,-55);
  pushMatrix();
  rotateY(-PI/4*e);
  rotateZ(-PI/4*e);
  translate(0, 40, 0);
  fill(255, 59, 200);
  box(10, 80, 10);
  popMatrix();

  translate(110,0,0);
  pushMatrix();
  rotateY(PI/4*e);
  rotateZ(PI/4*e);
  translate(0,40,0);
  box(10,80,10);
  popMatrix();
  
  translate(0,0,110);
  pushMatrix();
  rotateY(-PI/4*e);
  rotateZ(PI/4*e);
  translate(0,40,0); 
  box(10,80,10);
  popMatrix();
  
  
  translate(-110,0,0);
  pushMatrix();
  rotateY(PI/4*e);
  rotateZ(-PI/4*e);
  translate(0,40,0);
  box(10,80,10);
  popMatrix();
  
  
  if(keyPressed){
    if(key=='c'){
  if(e<=1){
   e+=0.3;}
  if(e>=1){
   e=1;}
  }
  if(key=='o'){
   if(e>=0){
     e-=0.3;}
   if(e<=0){
     e=0;}
  }
  }
  
}
