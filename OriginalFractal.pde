float h,a;
public void setup()
{
  size (600,600);
  rectMode(CENTER);
  colorMode(HSB);
}
public void draw()
{
  background(h,100,255);
  squareFractal(300,300,275);
  if(h>=265)
    h=0;
  else
    h++;
  
}


public void squareFractal(int x, int y, int len)
 {
  a=(h-(10*x/y))%256;
  strokeWeight(2);
  fill(a,255,255);
  rect(x,y,len,len,50);
  if(len > 20){
    squareFractal(x+len/2, y-len/2, len/2);
    squareFractal(x-len/2, y-len/2, len/2);
    squareFractal(x+len/2, y+len/2, len/2);
    squareFractal(x-len/2, y+len/2, len/2);
    squareFractal(x-len/2, y+len/2, len/2);
  }
}