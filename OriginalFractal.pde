public void setup()
{
	size(550,625);
	background(55,0,55);
}
public void draw()
{
	noStroke();
	//fill(200,200,200);
	//sierpinski(205,480,100,100);
	sierpinski(105,670,650);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=25)
	{
		ellipse(x, y, len, len);
		triangle(x, y+len, x+len, y-len, x+len, y-len);	
	}
	else
	{
		sierpinski(x-len/6, y+len/2, len/3);
		sierpinski(x-len/2, y-len/2, len/2);
		sierpinski(x+len/3, y-len/2, len/2);
		//sierpinski(x+len+3,y+len/2,len/2);	
		//sierpinski(x+len*3,y+len/3,len/2);	
	}
}