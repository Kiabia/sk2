class Button {
  float x, y, w, h;
  int result = 0;
  color buttonColor = color(100);
  Button(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
  void checkDistance() {
    //float distance = dist(x, y, mouseX, mouseY);
    if ( mouseX > x && mouseX < x+w &&
      mouseY > y && mouseY < y+h) { //mouse hover
      result = 1;
      if (mousePressed) {
        result = 2;
      }
    } else {
      result = 0;
    }
  }
  void updateColor() {
    switch(result) {
    case 0:
      buttonColor = color(100);
      break;
    case 1:
      buttonColor = color(255, 0, 0);
      break;
    case 2:
      buttonColor = color(random(255), random(255), random(255));
      break;
    }
  }
  void display() {
    fill(buttonColor);
    rect(x, y, w, h);
  }
   void run(){
   checkDistance();
   updateColor();
   display();
  
  }
}