/*Melanie Lopez
11/13/24
 Students will be able to use Math.random() in Java to generate random numbers within specified ranges and apply these random values to solve problems
*/
int startX = 250;
int startY = 0;
int endX = 250;
int endY = 500;
int r = (int)(Math.random()*255)+3;
int b = (int)(Math.random()*255);
int g = (int)(Math.random()*255)+225;
boolean hitSquare = false;
void setup()
{
  size(500,500);
  strokeWeight(15);
  //background(235, 219, 255);
  background(16, 16, 18);
}
void draw()
{
  noStroke();
  fill(0,15);
rect(0,0,500,500);
 stroke(r,b,g);
// stroke((int)(Math.random()*255)+3,(int)(Math.random()*255),(int)(Math.random()*255)+225);
while(endX>=0 && endX<500 && endY>=0 && endY<=500){
  endX= startX + (int) (Math.random()*100)-50;
  endY = startY + (int) (Math.random()*50);
   line(startX,startY,endX,endY); 
   startX= endX;
   startY=endY;
    println("Coordinates: "+startX+", "+startY+","+endX+", "+endY+"   ");
}
strokeWeight(10);
stroke(255);
fill(255);
if(endX>=0 && endX<101){ // adding more rectangles so what do I do to make it that each rect works independently and have its color changed
// also create new method for making colors stay after the if statelement is executed 
fill(r,b,g);
}
noStroke();
rect(0,450,100,50);
fill(255);
if(endX>100&& endX<201){
  fill(r,b,g);
}
noStroke();
rect(100,450,100,50);
fill(255);
if(endX>200&& endX<301){
  fill(r,b,g);
}
noStroke();
rect(200,450,100,50);
fill(255);
if(endX>300&& endX<401){
  fill(r,b,g);
}
noStroke();
rect(300,450,100,50);
fill(255);
if(endX>400&& endX<501){
  fill(r,b,g);
}
noStroke();
rect(400,450,100,50);
fill(255);
if(endY<450&&endY>350&&endX>450){
  fill(r,b,g);
}
rect(450,350,50,100);
fill(255);

if(endY<450&&endY>350){
  fill(r,b,g);
}
rect(0,350,50,100);
}


void mousePressed()
{
startX= 250;
startY = 0;
endX = 250;
endY = 500;
hitSquare = false;
setRandomColors();
afterStrike();
}

void setRandomColors(){
  r = (int)(Math.random()*255)+3;
  b = (int)(Math.random()*255);
  g = (int)(Math.random()*255)+225;
}
void afterStrike(){
  
}
