
PImage img;

void setup(){
  
  background(#FFFFFF);
  img = loadImage("Op art.png");
  size(800,400); 
  image(img,40,40);
  
  
  
}  

void draw(){ 
  
  fill(0);
  rect(450,35,320,297);
  
  for (int i = 50; i < 334; i = i+15) {
    
  strokeWeight(7);
  stroke(#FFFFFF);
  line(460, i, 760, i);
}

for (int j=0; j<width; j =+6) {
   
   stroke(0,0,0);
   line (j,0,j,200);
  
}
   
}
