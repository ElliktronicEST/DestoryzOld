void shop(){
  textSize(50);
  fill(200);
  rect(1400,100,200,200);
  textAlign(CENTER);
  fill(150);
  text("menu",1400,100);
  fill(fill1);
  rect(width/6,height/7.5,450,120);
  fill(50);
  textSize(50);
  text("+1 block =",width/8,height/6.4);
  text(onebuc,width/4,height/6.4);
  if(mousePressed){
    if(mouseX>1300 && mouseX<1600 && mouseY > 0 && mouseY < 200){
     Scene=0;
    }
   
  }
}
void touchStarted(){
  if(Scene==3){
    if(mouseX>width/6-250 && mouseX<width/6+250 && mouseY > height/7.4-50 && mouseY < height/7.4+50){
     if(blocks>onebuc){  
     upgrader++;
     fill1=100;
     onebuc+=600;
     }
    }
 }
 if(Scene==2){
   if(mouseX>width/4-250 && mouseX<width/4+250 && mouseY > height/1.3-50 && mouseY < height/1.3+50){
     fill1=100;
     blockSave = new JSONObject();
     blockSave.setInt("num",blocks);
     saveJSONObject(blockSave,"block.dat");
     upgradeSave = new JSONObject();
     upgradeSave.setInt("num2",upgrader);
     saveJSONObject(upgradeSave,"upgrade.dat");
     ucSave = new JSONObject();
     ucSave.setInt("num3",onebuc);
     saveJSONObject(ucSave,"upgradecost.dat");
 }
 if(mouseX>width/1.4-250 && mouseX<width/1.4+250 && mouseY > height/1.3-50 && mouseY < height/1.3+50){
     fill=100;
     blockSave = loadJSONObject("block.dat");
     blocks=blockSave.getInt("num");
     upgradeSave = loadJSONObject("upgrade.dat");
     upgrader=upgradeSave.getInt("num2");
     ucSave = loadJSONObject("upgradecost.dat");
     onebuc=ucSave.getInt("num3");
     
 }
}
if(Scene==1){
  if(mouseX>0 && mouseX<200 && mouseY > 0 && mouseY < 200){
     clear=true;
     fill = 100;
     map = new int[15][15];
     blocks-=upgrader;
    }
    if(mouseX>1300 && mouseX<1600 && mouseY > 0 && mouseY < 200){
     Scene=0;
    }
}
}
void touchEnded(){
  fill1=205;
  fill=205;
}