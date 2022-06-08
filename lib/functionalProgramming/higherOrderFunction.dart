import 'package:dartz/dartz.dart';

int sayi = 10;

int myLoop(){
  print("sayi = $sayi");
  if(sayi==0) return sayi;
  sayi--;

  
  return myLoop();
}

int hisLoop(int number){
  print("number = $number");
  if(number == 0) return 0;
  
  return number + hisLoop(number-1);
}


void myFlatMapIList(){

  final _arr = IList.from([
    1,2,IList.from([3,4]),
    5,
    IList.from([6,7,8]),
    9
  ]);


  final _result = _arr.flatMap((a) {
    if(a is IList<int>) return a;

    if(a is int) return IList.from([a]);

    return IList.from([]);
  });
  print(_result);
}


int reduceDeneme(List<int> arr)=>arr.reduce((value, element) => value+element);

int foldDeneme(List<int> arr)=>arr.fold(0, (previousValue, element) => previousValue+element);

List<int> denemeList = [1,2,3,4,5,6,7,8,9,10];