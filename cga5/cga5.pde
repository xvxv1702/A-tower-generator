import controlP5.*;
ControlP5 cp5;
FloatDict metadata;//基本信息储存在字典里面
StringDict grammarDict;//字典内存id和对应语法
float shapeX=200;
float shapeY=150;
float originX,originY;
ArrayList<Shape> shapeList=new ArrayList<Shape>();
ArrayList<Shape> shapeListkid=new ArrayList<Shape>();

void setup(){
  size(800,900); 
  setMetadata();
  setGrammarDict();
  cp5 = new ControlP5(this);
  cp5.addSlider("shapeX",180,300,128,10,80,100,10);
  cp5.addSlider("shapeY",150,800,150,10,110,100,10); 
  //noLoop();
}
void draw(){
  background(255);
  originX=width/2-shapeX/2;
  originY=height/2-shapeY/2;
  //fill(255);
  //rect(originX,originY,shapeX,shapeY);
  //stroke(50);
  //设定初始图形
  Shape Parent=new Shape("O1",originX,originY,shapeX,shapeY);
  //进行垂直分隔
  splitY(Parent);
  //进行水平分隔
  int size=shapeList.size();
  for(int i=0;i<size;i++){
    splitX(shapeList.get(i));
    //shapeList.get(i).drawrect();
  }
  //显示
  int size1=shapeListkid.size();
  for(int i=0;i<size1;i++){
    shapeListkid.get(i).display();
  }
  //删除储存的图形
  for (int i=0; i < size ; i++) {
    shapeList.remove(size - 1-i);
  }
  for (int i=0; i < size1; i++) {
    shapeListkid.remove(size1 - 1-i);
  } 
}

void slider1(int theValue) {
  shapeX = theValue; 
}
void slider2(int theValue) {
  shapeY =theValue; 
}
