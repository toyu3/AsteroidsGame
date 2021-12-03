SpaceShip bob = new SpaceShip();
Star [] sue= new Star[200];
public void setup() { 
size(500,500);
background(0);
for (int i = 0; i < sue.length; i ++)
sue[i] = new Star();         
}

public void draw() {
background(0);
for (int i = 0; i < sue.length; i ++){
sue[i].draw();
}
bob.move();
bob.show();
}

public void keyPressed() {
// ship enters hyperspace
if (key == 'q'||key=='Q') {
bob.setDirectionX(0);
bob.setDirectionY(0);
bob.setX((int)(Math.random()*500));
bob.setY((int)(Math.random()*500));
bob.setPointDirection((int) (Math.random()*360));
} 
// ship moves left
if (key == 'a'||key == 'A')
bob.turn(-5);
//ship moves right
if (key == 'd'||key == 'D')
bob.turn(5);
//ship moves forward
if (key == 'w'||key == 'W')
bob.accelerate(.1);
//ship moves backward
if (key == 's'||key == 'S')
bob.accelerate(- .1);
}