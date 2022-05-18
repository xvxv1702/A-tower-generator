//水平分割用到的函数

//这个函数用于计算固定数目的构件的总长度
float cal_fixed_len(String[] grammar){
  float len=0;
  for(String text :grammar ){
    char[] textchar=text.toCharArray();
    String id=get_id(text);
    if(textchar[0]=='['){
      String[] text1=split(text,"]");
      int num=parseInt(text1[1].substring(0,1));
      len+=metadata.get(id+"l")*num;
      //println(parseInt(str(textchar[3])));
    }else if (textchar[0]!='('){
      len+=metadata.get(id+"l");
      }
  }
  return len;
}
//这个函数用于计算可无限复制的组件本次可以复制的次数
int cal_num(String[] grammar,float fixed_len,float total_len){
  int num=0;
  float singleLen=1.0;
  int mynum=0;//可以复制的组件数
  for(String text :grammar ){
    char[] textchar=text.toCharArray();
    if (textchar[0]=='('){
      String id=split(split(text,"(")[1],")")[0];
      singleLen=metadata.get(id+"l");
      mynum+=1;
    }
  }
  //println(singleLen);
  num=int((total_len-fixed_len)/singleLen/mynum);
  //println(mynum);
  return num;
}
//这个函数用于计算缩放系数
float cal_pscale(String[] grammar,int num0,float fixed_len,float total_len){
  float pscale=0.0;
  float len=fixed_len; 
  for(String text :grammar ){
    char[] textchar=text.toCharArray();
    if (textchar[0]=='('){
      String id=split(split(text,"(")[1],")")[0];
      float singleLen=metadata.get(id+"l");
      len+=singleLen*num0;
    }
  }
  float deltl=total_len-len;
  //计算可以缩放的组件个数
  int scaleable_num=0;
  for(String text :grammar ){
    char[] textchar=text.toCharArray();
    int size=text.length();
    if (textchar[size-1]=='*'){
      scaleable_num+=1;
    }
  }
  for(String text :grammar ){
    char[] textchar=text.toCharArray();
    int size=text.length();
    int mynum=0;
    if (textchar[size-1]=='*'){
      if(textchar[0]=='('){
        mynum=num0*scaleable_num;
      }else if(textchar[0]=='[')
      {
        String[] text1=split(text,"]");
        mynum=parseInt(text1[1].substring(0,1));
      }else{
        mynum=1;
      }
      String id=get_id(text);
      float singleLen=metadata.get(id+"l");
      pscale=deltl/float(mynum)/singleLen+1.0;
      break;
    }
  }
  //println(pscale);
  return pscale;
}
//这个函数用于创建图块
void createkid(Shape myParent,String[] grammar,int num0,float pscale){
  float right=myParent.x;
  for(String text :grammar ){
    float myscale=1.0;
    char[] textchar=text.toCharArray();
    int size=text.length();
    if(textchar[size-1]=='*')myscale=pscale;
    int mynum=1;//需要复制的次数
    if(textchar[0]=='['){
      String[] text1=split(text,"]");
      mynum=parseInt(text1[1].substring(0,1));
    }else if(textchar[0]=='('){
      mynum=num0;
    }
    String id=get_id(text);
    float sizex=metadata.get(id+"l")*myscale;
    for(int i=0;i<mynum;i++){
      Shape myshape=new Shape(id,right,myParent.y,sizex,myParent.sizey);
      shapeListkid.add(myshape);
      //myshape.display();
      right+=sizex;
    }
  }
}
//这个函数可以根据一个横向的长方形，绘制内部小图块
void splitX(Shape myParent){
  String[] grammar=get_grammar(myParent.id);
  float fixed_len=cal_fixed_len(grammar);//计算固定组件的总长度
  int num=cal_num(grammar,fixed_len,myParent.sizex);//计算可无限复制组件的个数
  float pscale=cal_pscale(grammar,num,fixed_len,myParent.sizex);//计算缩放系数
  createkid(myParent,grammar,num,pscale);//绘制单个图元
  
}
//根据字符串获取id
String get_id(String text){
  char[] textchar=text.toCharArray();
  String id="C";
  if(textchar[0]=='['){
      id=split(split(text,"[")[1],"]")[0];
    }else if(textchar[0]=='('){
      id=split(split(text,"(")[1],")")[0];
    }else{
      int size=text.length();
      if(textchar[size-1]=='*'){
        id=split(text,"*")[0];
      }else{
        id=text;
      }
    }
  return id;
}

String[] get_grammar(String id){
  String cga=grammarDict.get(id);
  String[] grammar=split(cga,"|");
  return grammar;
}
