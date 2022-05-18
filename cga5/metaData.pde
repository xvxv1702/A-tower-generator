//用于给定基本的预设尺寸和数据
void setMetadata(){
  metadata=new FloatDict();
  metadata.set("C1l",35.0);
  metadata.set("C2l",35.0);
  metadata.set("C3l",35.0);
  metadata.set("C4l",35.0);
  metadata.set("W1l",20.0);
  metadata.set("W2l",20.0);
  metadata.set("D1l",25.0);
  metadata.set("D2l",25.0);
  metadata.set("B1l",25.0);//B表示基础
  metadata.set("T1l",25.0);//T表示屋顶
  
  metadata.set("By1l",90.0);
  metadata.set("By2l",20.0);
  metadata.set("My1l",70.0);
  metadata.set("Ty1l",50.0);
  metadata.set("Ty2l",120.0);
}
void setGrammarDict(){
  grammarDict=new StringDict();
  grammarDict.set("My1","C1|(W1)*|[D1]3|(W1)*|C2");
  grammarDict.set("By1","C1|(W1)|[D2]3*|(W1)|C2");
  grammarDict.set("By2","B1*");
  grammarDict.set("Ty1","C3|(W2)*|C4");
  grammarDict.set("Ty2","T1*");

  //o表示起始图形
  grammarDict.set("O1","Ty2|Ty1|(My1)*|By1|By2");
}
