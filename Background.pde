class Background{
  float posX = 400;
  Background(){
    
  }
  
  void show(){
    stroke(255);
    line(0, 300, width, 300);
    rect(posX, 265, 30, 30);
    posX -= 5;
    if(posX < 0){
      posX = random(400, 500);
    }
  }
  
}
