int y=50;int vely=10;int x=50;int velx=10; 
void setup(){
size(800,600);
}
void draw(){
 background(0,0,0);
 //
circle(x,y,50);
rect(mouseX,500,100,10);
//I´m, gong to kill myself soon
if(y>550 || y<50){
vely = vely *(-1);
}
if(x > mouseX && x < mouseX+100 && y > 475){
vely = vely *(-1); 
//sumar pts
print("toco");

}
if(x>750 || x<50)
{
velx = velx *(-1);
}
y=y+vely;
x=x+velx;

}
