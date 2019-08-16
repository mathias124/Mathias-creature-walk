int x=10;
int y=10;
int speed=3;
void setup(){
background(0,0,255);
size(500,500);
}
void draw(){
move();
display();
}
void move()
{
x=x+speed;
y=y+speed;
}
void display()
{
clear();
  ellipse(x,y,40,40);
ellipse(x,y-25,25,25);
ellipse(x,y-23,7,7); 
}
