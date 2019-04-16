float h;
boolean increasing;
public void setup()
{
  smooth();
  size(700,700);
  frameRate(400);
  rectMode(CENTER);
  increasing=true;
  h=-10;
}
public void draw()
{
  background(0);
  //squareFractal(350,350,11);
  squareFractal(175,175,10);
  squareFractal(350,350,10);
  squareFractal(525,525,10);
  squareFractal(175,350,10);
  squareFractal(175,525,10);
  squareFractal(350,175,10);
  squareFractal(350,525,10);
  squareFractal(525,175,10);
  squareFractal(525,350,10);
  if(increasing)
    h+=1;
  else
    h-=1;
  if(h==100)
    increasing=false;
  else if(h==-10){
    increasing=true; 
  }
}


public void squareFractal(int x, int y, int len)
 {
  strokeWeight(2);
  stroke(3*x/8,3*y/8,x*y,h);
  noFill();
  rect(x,y,len,len,5);
  //if(len < 320){
  if(len < 100){
    squareFractal(x, y-len/2, len*2);
    squareFractal(x-len/2, y, len*2);
    squareFractal(x, y+len/2, len*2);
    squareFractal(x+len/2, y, len*2);
  }
}