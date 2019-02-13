float h;
boolean increasing;
public void setup()
{
  smooth();
  size(700,700);
  frameRate(200);
  rectMode(CENTER);
  increasing=true;
  h=-10;
}
public void draw()
{
  background(0);
  squareFractal(350,350,11);
  if(increasing)
    h+=1;
  else
    h-=1;
  if(h==300)
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
  if(len < 320){
    squareFractal(x, y-len/2, len*2);
    squareFractal(x-len/2, y, len*2);
    squareFractal(x, y+len/2, len*2);
    squareFractal(x+len/2, y, len*2);
  }
}