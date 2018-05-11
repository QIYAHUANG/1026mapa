boolean[] keys;
float player,pSpeed;
ArrayList balls,removeThese;
int score,highScore;
float diff = 1;
float death;
float[][] xs;
PFont arial;
boolean lost,drawAvg;

void setup()
{
  size(400, 400);
  lost = false;
  drawAvg = false;
  keys = new boolean[4];
  player = width/2-5;
  pSpeed = 2;
  balls = new ArrayList();
  removeThese = new ArrayList();
  xs = new float[width/1][2];
  arial = loadFont("Arial.vlw");
  textFont(arial,12);
}

void draw()
{
  if(lost)
  {
    death = 0;
    balls.clear();
    player = width/2-5;
    removeThese.clear();
    xs = new float[width/1][2];
    score = 0;
    diff = 0;
    lost = false;
  }
  diff+=.001;
  death+=.05;
  background(205);
  if(score>highScore)
    highScore = score;
  handleKeys();
  handleBounds();
  if((int)random(100)<diff)
    balls.add(new Ball());
  render();
  if(player<death)
    lost = true;
  println(score);
  if(drawAvg)
    for(int i=1;i<xs.length;i++)
      if(xs[i][1]>0)
        line((i-1)*1,xs[i-1][0]/xs[i-1][1],i*1,xs[i][0]/xs[i][1]);
  fill(0);
  text("Score: "+score,width-62,20);
  text("High Score: "+highScore,width-91,35);
}

void keyPressed()
{
  switch(key)
  {
    case 'a': drawAvg = !drawAvg; break;
  }
  switch(keyCode)
  {
    case UP: keys[0] = true; break;
    case DOWN: keys[1] = true; break;
    case LEFT: keys[2] = true; break;
    case RIGHT: keys[3] = true; break;
  }
}

void keyReleased()
{
  switch(keyCode)
  {
    case UP: keys[0] = false; break;
    case DOWN: keys[1] = false; break;
    case LEFT: keys[2] = false; break;
    case RIGHT: keys[3] = false; break;
  }
}

void handleKeys()
{
  if(keys[2])
    player-=pSpeed;
  if(keys[3])
    player+=pSpeed;
}

void render()
{
  fill(255);
  rect(player,height-20,10,20);
  for(int i=0;i<balls.size();i++)
  {
    Ball temp = (Ball) balls.get(i);
    temp.h = map(dist(temp.pos.x,temp.pos.y,player,height-20),0,200,0,180);
    temp.update(xs);
    for(int x=0;x<=10;x+=10)
      if(dist(temp.pos.x,temp.pos.y,player+x,height-20)<temp.radius/2)
        lost = true;
    if(temp.pos.x>width+temp.radius)
    {
      score++;
      removeThese.add(0,i);
    }
  }
  for(int i=0;i<removeThese.size();i++)
  {
    Integer index = (Integer) removeThese.get(i);
    balls.remove(index.intValue());
  }
  removeThese.clear();
  fill(255,0,0,50);
  noStroke();
  rect(0,0,death,height);
  fill(255);
  stroke(0);
}

void handleBounds()
{
  if(player<30)
    player = 30;
  if(player>width-10)
    player = width-10;
}