Button button1, button2;
void setup() {
  size(400, 400);
  noStroke();
  button1 = new Button(width/2, height/3, 100,100);
  button2 = new Button(width/2, 2*height/3, 50,50);
}
void draw() {
  background(225);
  button1.run();
  button2.run();
}