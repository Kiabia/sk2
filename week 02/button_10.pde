int checkstates(float _bx,float _by,float _w,float _h){
int result;

if(mouseX > _bx && mouseX < _bx+_w &&
    mouseY > _by && mouseY < _by+_h){
      result = 1;
if (mousePressed) {
      result = 2;
    }
  } else {
    result = 0;
  } 
  return result;
}
int button1Color;
int bx=20;
int by=20;
int w=20;
int h=20;

void setup(){
  size(100,100);
  noStroke();
}
void draw(){
  for(int by = 0;by < height; by += 2*h){
  for (int bx = 0;bx < width; bx +=2*w){
  





  
  //check
  int check = checkstates(bx,by,w,h);
  switch(check) {
  case 0:
    button1Color = color(100);
    break;
  case 1:
    button1Color = color(255, 0, 0);
    break;
  case 2:
    button1Color = color(random(255),random(255),random(255));
    break;
  }
fill(button1Color);
rect(bx,by,w,h);
  }
  }
}