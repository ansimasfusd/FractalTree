private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .1;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,0);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle;
  int endX1 = (int)(branchLength*Math.cos(Math.PI/2-angle1) + x);
  int endY1 = (int)(-branchLength*Math.sin(Math.PI/2-angle1) + y);
  line(x,y,endX1,endY1);
  if(branchLength <=1)
  return;
  for (int i = 0; i<2; i++){
  drawBranches(endX1, endY1, branchLength/2, angle1+branchAngle*Math.random()*20);
  drawBranches(endX1, endY1, branchLength/2, angle-branchAngle*Math.random()*20);
  drawBranches(endX1, endY1, branchLength/2, angle+branchAngle);}
  
} 