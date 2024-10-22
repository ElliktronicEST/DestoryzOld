void Stats(){
  textSize(50);
  fill(200);
  rect(1400,100,200,200);
  textAlign(CENTER);
  fill(150);
  text("menu",1400,100);
  fill(fill1);
  rect(width/4,height/1.3,400,100);
  fill(fill);
  rect(width/1.4,height/1.3,400,100);
  fill(0);
  text("Save Progress",width/4,height/1.25);
  text("Load Progress",width/1.4,height/1.25);
  textAlign(LEFT);
  fill(0);
  textSize(100);
  text("Blocks:",50,80);
  text(blocks,50,180);
  text("Upgrader:",50,280);
  text(upgrader,50,380);
  if(mousePressed){
    if(mouseX>1300 && mouseX<1600 && mouseY > 0 && mouseY < 200){
     Scene=0;
    }
  }
}