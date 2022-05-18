class Shape{
  String id;
  float x,y,sizex,sizey;
  Shape(String _id,float _x,float _y,float _sizex,float _sizey){
    id=_id;x=_x;y=_y;sizex=_sizex;sizey=_sizey;
  }
  void drawrect(){
    fill(150);
    rect(x,y,sizex,sizey);
  }
  void display(){
    switch(id){
        case("C1"):
        C1(x,y,sizex,sizey);
        break;
        case("C2"):
        C2(x,y,sizex,sizey);
        break;
        case("C3"):
        C3(x,y,sizex,sizey);
        break;
        case("C4"):
        C4(x,y,sizex,sizey);
        break;
        case("D1"):
        D1(x,y,sizex,sizey);
        break;
        case("D2"):
        D2(x,y,sizex,sizey);
        break;
        case("W1"):
        W1(x,y,sizex,sizey);
        break;
        case("W2"):
        W2(x,y,sizex,sizey);
        break;
        case("B1"):
        B1(x,y,sizex,sizey);
        break;
        case("T1"):
        T1(x,y,sizex,sizey);
        break;
      }
  }
}
