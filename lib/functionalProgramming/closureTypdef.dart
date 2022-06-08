


void closurePrint(){
  print(first());
  print(second());
}



typedef RastgeleIsimIntCallBack = int Function(int number);

Function first(){

  void print1(){
    print("first");
  }

  return print1;
}


RastgeleIsimIntCallBack second(){
  int print1(int a){
    return a+6;
  }

  return print1;
}












