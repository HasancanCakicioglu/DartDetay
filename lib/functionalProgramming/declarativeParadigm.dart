


const numbers = [1,2,3,4,5,6,7,8,9,10];

void declarativePrint(){
  final _result = numbers.where((element) => element%2==0);
  print(_result);
}