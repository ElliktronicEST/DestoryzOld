
void Gamemenu(){
  if(bronze==1){
    imageMode(CENTER);
      bronzekubok=createImage(200,200,ARGB);
      bronzekubok=loadImage("kuboknnbbb.png");
  }
  textAlign(CENTER);
  textMode(CENTER);
  fill(255);
  rect(width/2,height/2,500,100);
  rect(width/2,height/1.5,500,100);
  rect(width/2,height/1.2,500,100);
  fill(0);
  textSize(80);
  text("Start",width/2,height/1.9);
  text("Stats",width/2,height/1.45);
  text("Shop",width/2,height/1.15);
  textSize(120);
  text("Destroyz",width/2,height/5);
  if(mousePressed){
    if(mouseX <width/2+300 && mouseX > width/2-300 && mouseY < height/2+50 && mouseY > height/2-50){
      Scene=1;
    }
    if(mouseX <width/2+300 && mouseX > width/2-300 && mouseY < height/1.5+50 && mouseY > height/1.5-50){
      Scene=2;
    }
    if(mouseX <width/2+300 && mouseX > width/2-300 && mouseY < height/1.2+50 && mouseY > height/1.2-50){
      Scene=3;
    }
  }
}