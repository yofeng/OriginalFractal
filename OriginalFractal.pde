public void setup()
{
	size(500,500);
	background(250);
}

public void draw()
{
	fill(250,250,30);
	myFractal(0,250,250,250);
	fill(0,0,255); 
	myFractal(250,250,90,180);
	fill(255,0,0);
	myFractal(250,250,270,270);
}

public void mouseDragged()
{

}

public void myFractal(int x, int y, int x2, int y2)
{
	if(y2<=100)
		line(x, y, x2, y2);
	else
	{
		//y2 = (int)Math.PI/6;
		myFractal(x/2, y/2, x+10, y+10);
		myFractal(x/2, y/2, x-20, y-20);
		myFractal(x/3, y/3, x2, y2);
		//myFractal(x/8, y/8, x+siz/3, y+siz/3);
		//myFractal();
		//myFractal();		
	}
}