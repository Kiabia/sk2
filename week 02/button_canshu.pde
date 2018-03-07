int button1Color;
int button2Color;
int x;
int y;

void setup(){
  size(80,80);
  noStroke();
}
void draw(){
    fill(button1Color);
  rect(x,y,20,20);
  if (mouseX > x && mouseX < y+20&&
    mouseY >x && mouseY < y+20) {
    button1Color = color(255, 
    0, 0);
  } else {
    button1Color = color(100);
  }
// click
if (mouseX >x&& mouseX < y+20 &&
    mouseY > x && mouseY < y+20) {//hover
    button1Color = color(255, 0, 0);
    if(mousePressed){//click
         button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }
}