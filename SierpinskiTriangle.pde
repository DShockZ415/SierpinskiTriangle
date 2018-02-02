int lul=10;
public void setup()
{
  size(500,500);
}
public void draw()
{
  sierpinski(0,500,500);
}

public void keyTyped()//optional
{
  if(key=='a'||key=='A')
  {
    if(lul>2)
    lul=lul/2;
    else
    lul=lul*1;
  }
  if(key=='d'||key=='D')
  {
    if(lul<500)
    lul=lul*2;
    else
    lul=lul*1;
  }
}

public void sierpinski(int x, int y, int len) 
{
  if(len<=lul)
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