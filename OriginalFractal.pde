float h,a;
int n;
boolean increasing;
public void setup()
{
  smooth();
  size(900,900);
  rectMode(CENTER);
  increasing=true;
  n=15;
  //colorMode(HSB);
}
public void draw()
{
  background(0);
  //background(h,100,255);
  squareFractal(450,450,n);
  n++;
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
  else if(h==-15){
    increasing=true;
    n=15;  
  }
}


public void squareFractal(int x, int y, int len)
 {
  //a=(h-(10*x/y))%256;
  strokeWeight(2);
  stroke(0,0,0,150);
  fill(x/3,y/3,x*y,h);
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