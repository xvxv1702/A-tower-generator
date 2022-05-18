//垂直分割用到的函数
void splitY(Shape myParent){
  String[] y_grammar=get_grammar(myParent.id);
  float fixed_len=cal_fixed_len(y_grammar);//计算固定组件的总长度
  //println(fixed_len);
  int num=cal_num(y_grammar,fixed_len,myParent.sizey);//计算可无限复制组件的个数
  //println(num);
  float pscale=cal_pscale(y_grammar,num,fixed_len,myParent.sizey);//计算缩放系数
  //println(pscale);
  create_xparent(myParent,y_grammar,num,pscale);//生成x轴方向的框
}

void create_xparent(Shape myParent,String[] grammar,int num0,float pscale){
  float top=myParent.y;
  float xscale=1.0;//逐层收缩
  for(String text :grammar ){
    float myscale=1.0;
    char[] textchar=text.toCharArray();
    int size=text.length();
    if(textchar[size-1]=='*')myscale=pscale;
    
    int mynum=1;
    if(textchar[0]=='['){
      String[] text1=split(text,"]");
      mynum=parseInt(text1[1].substring(0,1));
    }else if(textchar[0]=='('){
      mynum=num0;
    }
    
    String id=get_id(text);
    
    float sizey=metadata.get(id+"l")*myscale;
    
    for(int i=0;i<mynum;i++){
      xscale*=1.02;
      Shape myshape=new Shape(id,myParent.x-myParent.sizex*(xscale-1)/2,top,myParent.sizex*xscale,sizey);
      //Shape myshape=new Shape(id,myParent.x-myParent.sizex*xscale,top,myParent.sizex*xscale,sizey);//使用逐层收缩效果
      shapeList.add(myshape);
      top+=sizey;
    }
  }
}
