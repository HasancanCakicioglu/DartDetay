import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';


Function compose(Function f,Function g)=>(x)=>f(g(x));

String toUpper(String value)=>value.toUpperCase();
String exclaim(String value)=>"$value!a";
///////////////////////////////////////////

final _shout2 = composeF<String,String,String>(exclaim,toUpper);

////////////////////////////////////////////

Function composeN(List<Function> fns){
  final _reversed = fns.reversed.toList();
 
  
  return (x){
    
    for(Function fn in _reversed){
      x = fn(x);
    }
    return x;
  };
}


final _snackeToPascal = composeN([
  joinWithoudSpace,
  capitalizeWords,
  splitWithUnderScore,
]);


void composePrint(){
  debugPrint(compose(toUpper,exclaim)("heyyo"));
  print(_shout2);
  print(_shout2("yazı ile shout2"));
  print(_snackeToPascal("snacke_to_Pascal"));
  
  
}



List<String> capitalizeWords(List<String> words)=>words; 
String joinWithoudSpace(List<String> values) => values.join("-");
List<String> splitWithUnderScore(String value) => value.split("_");
