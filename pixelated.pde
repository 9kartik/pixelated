PImage img;

void setup() {
  
  img = loadImage("ponyo.png");
  size(img.width,img.height);  
  img.loadPixels();
  loadPixels();
}
int wh=0;
void draw() {
  for(int i=0;i<img.width;i++)
    for(int j=0;j<img.height;j++)
      pixels[j*width+i]=img.pixels[(wh+1)*(j/(wh+1))*img.width+(wh+1)*(i/(wh+1))];
  updatePixels();     
}

void mouseWheel(MouseEvent event) {
  float e=event.getCount();
  println(e+"|"+wh);
  if(e>0)wh=(wh+1)%10;
  else wh=(wh+9)%10;
}
