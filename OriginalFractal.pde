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
  square(300,300,275);
  if(h>=255)
    h=0;
  else
    h++;
  
}


public void square(int x, int y, int len)
 {
  a=(h-(10*x/y))%256;
  strokeWeight(2);
  fill(a,255,255);
  rect(x,y,len,len,50);
  if(len > 20){
    square(x+len/2, y-len/2, len/2);
    square(x-len/2, y-len/2, len/2);
    square(x+len/2, y+len/2, len/2);
    square(x-len/2, y+len/2, len/2);
    square(x-len/2, y+len/2, len/2);
  }
}