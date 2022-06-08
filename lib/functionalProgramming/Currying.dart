


import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

typedef StringCallBack = String Function(String name);

String greet(String salutation,String name) => "$salutation $name";

StringCallBack curriedGreet(String salsulation){
  return (String name){
    return "$salsulation $name";
  };
}

void curriyingFunc(){
       debugPrint(greet("salsulation","name"));
       debugPrint(curriedGreet("salsulation_Curried")("name_Curried"));

       final _curriedGreet2 = curry2<String,String,String>(greet);
       debugPrint(_curriedGreet2("cur2sal")("cur2Name"));
}

