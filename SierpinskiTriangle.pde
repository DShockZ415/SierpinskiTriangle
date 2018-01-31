public void setup()
{
  int z;
  size(500,500);
}
public void draw()
{
  sierpinski(0,500,1000);
}
public void keyTyped()//optional
{
  if(key=='a'||key=='A')
  {
    len=len/2;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=10)
  {    
    triangle(x+(len/2),y-len,x,y,x+len,y);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+(len/2),y,len/2);
    sierpinski(x+(len/4),y-(len/2),len/2);
  }
}