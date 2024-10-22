
PImage bronzekubok;
JSONObject blockSave;
JSONObject upgradeSave;
JSONObject ucSave;
int check=0;
int Bw = 1700;
int Bh = 1700;
int[][] map = new int[15][15];
int sizeW = Bw/map[1].length;
int sizeH = Bh/map.length;
int selected = 0;
int blocks=0;
boolean clear;
int fill = 205;
int upgrader = 1;
int Scene = 0;
int fill1 =205;
int onebuc = 600;
int bronze=1;
void setup(){
  size(1500,800,P2D);
  rectMode(CENTER);
  frameRate(120);
}
void draw(){
  if(Scene==1){
  textAlign(LEFT);
  background(50);
  drawmap();
  put();
  menu();
  textSize(50);
  fill(255);
  text("blocks:",200,50);
  text(blocks,200,100);
  }
  if(Scene==0){
    background(150);
    Gamemenu();
  }
  if(Scene==2){
    background(150);
    Stats();
  }
  if(Scene==3){
    background(150);
    shop();
  }
  
  fill(255);
}
void drawmap(){
  for(int i=0;i<map.length;i++){
    for(int j=0;j<map[i].length;j++){
      if(map[i][j]==1){
        if(selected==0){
          fill(50);
        }
        if(selected==1){
          fill(100);
        }
        if(selected==2){
          fill(150);
        }
        if(selected==3){
          fill(80);
        }
      }else{
        fill(100);
      }
      if(mouseX>=j*sizeW && mouseX <= (j+1) * sizeW && mouseY >= i*sizeH && mouseY<=(i+1)*sizeH){
        fill(200);
      }
      rect(j*sizeW,i*sizeH,150,150);
    }
  }
}
void put(){
  if(mousePressed){
    int iIndex = int(mouseY/sizeW);
    int jIndex = int(mouseX/sizeH);
    try{
    if(map[iIndex][jIndex]==0){
      map[iIndex][jIndex] =1;
      blocks+=upgrader;
    }else{
      
    }
  }catch(Exception e){
    
  }
 }
}
void menu(){
  textSize(50);
  fill(50);
  //rect(1000,0,1600,400);
  fill(fill);
  rect(100,100,200,200);
  fill(200);
  rect(1400,100,200,200);
  fill(150);
  textAlign(CENTER);
  text("menu",1400,100);
  textAlign(LEFT);
  fill(fill-50);
  text("erase",35,110);
  //if(mousePressed){
   // if(mouseX>0 && mouseX<200 && mouseY > 0 && mouseY < 200){
    // clear=true;
   //  fill = 100;
   //  map = new int[15][15];
   //  blocks-=upgrader;
    //}
  //}else{
  //  fill=200;
  //}
}
