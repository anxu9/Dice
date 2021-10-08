int sum = 0;
void setup(){
  size (610,660);
  noLoop();
}
void draw (){
  background (230,215,255);
  for (int i = 10; i<560; i+=60){
    {
      for(int j= 10; j<560; j+=60){
        Die bob = new Die(i,j);
        bob.roll();
        bob.show();
        fill(0);
      }
    }
  }
  textSize(30);
  text("Total: " + sum, 250,640);
}
void mousePressed(){
  sum=0;
  redraw();
}

class Die{
  int myX, myY,r;
  Die(int x, int y)
  {
    myX=x;
    myY=y;
  }
  void roll(){
  r = (int)(Math.random()*6)+1;
  sum += r;
  }
  void show(){
    fill (255-(int)(Math.random()*100),255-(int)(Math.random()*100),255);
    rect (myX,myY,50,50);
    fill (0,0,0);
    if (r==1)
      ellipse (myX+25,myY+25,10,10);
    else if (r==2){
      ellipse (myX+10,myY+10,10,10);
      ellipse (myX+40,myY+40,10,10);
    }else if (r==3){
      ellipse (myX+10,myY+10,10,10);
      ellipse (myX+25,myY+25,10,10);
      ellipse (myX+40,myY+40,10,10);
    }else if (r==4){
      ellipse (myX+10,myY+10,10,10);
      ellipse (myX+40,myY+10,10,10);
      ellipse (myX+10,myY+40,10,10);
      ellipse (myX+40,myY+40,10,10);
    }else if (r==5){
      ellipse (myX+10,myY+10,10,10);
      ellipse (myX+40,myY+10,10,10);
      ellipse (myX+10,myY+40,10,10);
      ellipse (myX+40,myY+40,10,10);
      ellipse (myX+25,myY+25,10,10);
    }else{
      ellipse (myX+10,myY+10,10,10);
      ellipse (myX+40,myY+10,10,10);
      ellipse (myX+10,myY+40,10,10);
      ellipse (myX+40,myY+40,10,10);
      ellipse (myX+10,myY+25,10,10);
      ellipse (myX+40,myY+25,10,10);
    }
  }
}
