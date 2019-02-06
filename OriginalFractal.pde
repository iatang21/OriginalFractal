float h,a;
boolean increasing;
public void setup()
{
  size (600,600);
  rectMode(CENTER);
  increasing=true;
  //colorMode(HSB);
}
public void draw()
{
  background(0);
  //background(h,100,255);
  squareFractal(300,300,275);
  /*if(h>=265)
    h=0;
  else
    h++;*/
  if(increasing)
    h+=1;
  else
    h-=1;
  if(h==256)
    increasing=false;
  else if(h==-1)
    increasing=true;  
}


public void squareFractal(int x, int y, int len)
 {
  //a=(h-(10*x/y))%256;
  strokeWeight(2);
  stroke(0,0,0,150);
  fill(x/2,y/2,x*y,h);
  //fill(a,255,255);
  rect(x,y,len,len,5);
  if(len > 20){
    squareFractal(x+len/2, y-len/2, len/2);
    squareFractal(x-len/2, y-len/2, len/2);
    squareFractal(x+len/2, y+len/2, len/2);
    squareFractal(x-len/2, y+len/2, len/2);
    squareFractal(x-len/2, y+len/2, len/2);
  }
}