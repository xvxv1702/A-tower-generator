//这个文件用于定义模块
void C1(float x,float y,float sizex,float sizey){
  fill(255);
  //rect(x,y,sizex,sizey);
  rect(x+sizex*0.5,y,sizex*0.5,sizey*0.05);
  fill(50);//roof
  quad(x+sizex*0.5,y+sizey*0.05,x+sizex,y+sizey*0.05,x+sizex,y+sizey*0.25,x,y+sizey*0.25);
  //rect(x,y+sizey*0.05,sizex,sizey*0.2);
  fill(255);
  rect(x+sizex*0.5,y+sizey*0.25,sizex,sizey*0.05);
  //柱子
  rect(x+sizex*0.6,y+sizey*0.3,sizex*0.2,sizey*0.7);
  line(x+sizex*0.9,y+sizey*0.3,x+sizex*0.9,y+sizey);
    //栏杆
  fill(255);
  rect(x+sizex*0.5,y+sizey*0.85,sizex,sizey*0.03);
  rect(x+sizex*0.66,y+sizey*0.88,sizex*0.05,sizey*0.12);
  line(x+sizex*0.5,y+sizey,x+sizex,y+sizey);
}
void C2(float x,float y,float sizex,float sizey){
  fill(255);
  //rect(x,y,sizex,sizey);
  rect(x,y,sizex*0.5,sizey*0.05);
  fill(50);//roof
  quad(x+sizex*0.5,y+sizey*0.05,x,y+sizey*0.05,x,y+sizey*0.25,x+sizex,y+sizey*0.25);
  //rect(x,y+sizey*0.05,sizex,sizey*0.2);
  fill(255);
  rect(x,y+sizey*0.25,sizex*0.5,sizey*0.05);
  //柱子
  rect(x+sizex*0.2,y+sizey*0.3,sizex*0.2,sizey*0.7);
  line(x+sizex*0.1,y+sizey*0.3,x+sizex*0.1,y+sizey);
  //栏杆
  fill(255);
  rect(x,y+sizey*0.85,sizex*0.5,sizey*0.03);
  rect(x+sizex*0.33,y+sizey*0.88,sizex*0.05,sizey*0.12);
  line(x,y+sizey,x+sizex*0.5,y+sizey);
}
//没有顶的角部
void C3(float x,float y,float sizex,float sizey){
  fill(255);
  rect(x+sizex*0.5,y,sizex*0.5,sizey*0.1);
  //柱子
  rect(x+sizex*0.6,y+sizey*0.1,sizex*0.2,sizey*0.9);
  line(x+sizex*0.9,y+sizey*0.1,x+sizex*0.9,y+sizey);
  //栏杆
  fill(255);
  rect(x+sizex*0.5,y+sizey*0.8,sizex*0.5,sizey*0.05);
  rect(x+sizex*0.66,y+sizey*0.85,sizex*0.05,sizey*0.15);
  line(x+sizex*0.5,y+sizey,x+sizex,y+sizey);
}
void C4(float x,float y,float sizex,float sizey){
  fill(255);
  rect(x,y,sizex*0.5,sizey*0.1);
  //柱子
  rect(x+sizex*0.2,y+sizey*0.1,sizex*0.2,sizey*0.9);
  line(x+sizex*0.1,y+sizey*0.1,x+sizex*0.1,y+sizey);
  //栏杆
  fill(255);
  rect(x,y+sizey*0.8,sizex*0.5,sizey*0.05);
  rect(x+sizex*0.33,y+sizey*0.85,sizex*0.05,sizey*0.15);
  line(x,y+sizey,x+sizex*0.5,y+sizey);
}
void D1(float x,float y,float sizex,float sizey){
  fill(255);
  //rect(x,y,sizex,sizey);
  rect(x,y,sizex,sizey*0.05);
  fill(50);//roof
  rect(x,y+sizey*0.05,sizex,sizey*0.2);
  fill(255);
  rect(x,y+sizey*0.25,sizex,sizey*0.05);
  fill(100);//window
  rect(x+sizex*0.2,y+sizey*0.35,sizex*0.6,sizey*0.2);
  fill(200);//door
  rect(x+sizex*0.2,y+sizey*0.6,sizex*0.6,sizey*0.4);
  line(x+sizex*0.1,y+sizey*0.3,x+sizex*0.1,y+sizey);
  line(x+sizex*0.9,y+sizey*0.3,x+sizex*0.9,y+sizey);
  fill(255);
  rect(x,y+sizey*0.85,sizex,sizey*0.03);
  rect(x+sizex*0.33,y+sizey*0.88,sizex*0.05,sizey*0.12);
  rect(x+sizex*0.66,y+sizey*0.88,sizex*0.05,sizey*0.12);
  line(x,y+sizey,x+sizex,y+sizey);
}
void D2(float x,float y,float sizex,float sizey){
  fill(255);
  //rect(x,y,sizex,sizey);
  rect(x,y,sizex,sizey*0.05);
  fill(50);//roof
  rect(x,y+sizey*0.05,sizex,sizey*0.2);
  fill(255);
  rect(x,y+sizey*0.25,sizex,sizey*0.05);
  fill(100);//window
  rect(x+sizex*0.2,y+sizey*0.35,sizex*0.6,sizey*0.2);
  fill(200);//door
  rect(x+sizex*0.2,y+sizey*0.6,sizex*0.6,sizey*0.4);
  line(x+sizex*0.1,y+sizey*0.3,x+sizex*0.1,y+sizey);
  line(x+sizex*0.9,y+sizey*0.3,x+sizex*0.9,y+sizey);
  line(x,y+sizey,x+sizex,y+sizey);
}
//有屋顶窗户
void W1(float x,float y,float sizex,float sizey){
  fill(255);
  //rect(x,y,sizex,sizey);
  rect(x,y,sizex,sizey*0.05);
  fill(50);
  rect(x,y+sizey*0.05,sizex,sizey*0.2);
  fill(255);
  rect(x,y+sizey*0.25,sizex,sizey*0.05);
  fill(100);
  rect(x+sizex*0.2,y+sizey*0.35,sizex*0.6,sizey*0.2);
  rect(x+sizex*0.2,y+sizey*0.6,sizex*0.6,sizey*0.2);
  line(x+sizex*0.1,y+sizey*0.3,x+sizex*0.1,y+sizey);
  line(x+sizex*0.9,y+sizey*0.3,x+sizex*0.9,y+sizey);
  fill(255);
  rect(x,y+sizey*0.85,sizex,sizey*0.03);
  rect(x+sizex*0.33,y+sizey*0.88,sizex*0.05,sizey*0.12);
  rect(x+sizex*0.66,y+sizey*0.88,sizex*0.05,sizey*0.12);
  line(x,y+sizey,x+sizex,y+sizey);
}
//没有屋顶的窗户
void W2(float x,float y,float sizex,float sizey){
  fill(255);
  rect(x,y,sizex,sizey*0.1);
  fill(100);
  rect(x+sizex*0.2,y+sizey*0.2,sizex*0.6,sizey*0.25);
  rect(x+sizex*0.2,y+sizey*0.5,sizex*0.6,sizey*0.25);
  line(x+sizex*0.1,y+sizey*0.1,x+sizex*0.1,y+sizey);
  line(x+sizex*0.9,y+sizey*0.1,x+sizex*0.9,y+sizey);
  fill(255);
  rect(x,y+sizey*0.8,sizex,sizey*0.05);
  rect(x+sizex*0.33,y+sizey*0.85,sizex*0.05,sizey*0.15);
  rect(x+sizex*0.66,y+sizey*0.85,sizex*0.05,sizey*0.15);
  line(x,y+sizey,x+sizex,y+sizey);
}



void B1(float x,float y,float sizex,float sizey){
  fill(255);
  //rect(x,y,sizex,sizey);
  rect(x-sizex*0.1,y,sizex*1.2,sizey);
  line(x-sizex*0.4,y+sizey,x+sizex*1.4,y+sizey);
}
//屋顶
void T1(float x,float y,float sizex,float sizey){
  fill(255);
  triangle(x+sizex*0.5,y,x+sizex*0.48,y+sizey*0.1,x+sizex*0.52,y+sizey*0.1);
  ellipse(x+sizex*0.5,y+sizey*0.1,sizey*0.1,sizey*0.1);
  for(float i=0.0;i<0.99;i+=0.1){
    float x1=x+sizex*0.48;float x2=x+sizex*0.52;float y1=y+sizey*0.2;float y2=y+sizey*0.2;
    float total_x=sizex*0.05;float total_y=sizey*0.5;
    x1-=total_x*i;
    x2+=total_x*i;
    y1+=total_y*i;
    y2=y1;
    line(x1,y1,x2,y2);
  }
  rect(x+sizex*0.495,y+sizey*0.15,sizex*0.01,sizey*0.45);
  rect(x+sizex*0.43,y+sizey*0.6,sizex*0.14,sizey*0.15);
  fill(50);//roof
  quad(x+sizex*0.43,y+sizey*0.75,x+sizex*0.57,y+sizey*0.75,x+sizex,y+sizey,x,y+sizey);
}
