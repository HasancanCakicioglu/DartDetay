import 'dart:isolate';

import 'package:dartdetay/Dartz/Either/1/dartzEither1.dart';
import 'package:dartdetay/Iterable/List/List1/list1.dart';
import 'package:dartdetay/Iterable/map/map1.dart';
import 'package:dartdetay/Iterable/set/set1.dart';
import 'package:dartdetay/String/string1.dart';
import 'package:dartdetay/enum/enum1.dart';
import 'package:dartdetay/functionalProgramming/ana.dart';
import 'package:dartdetay/int/int1.dart';
import 'package:flutter/foundation.dart';


import 'package:flutter/material.dart';

void main() {
  Isolate.spawn<IsolateModel>(heavyTask, IsolateModel(35500, 500));
  compute<IsolateModel, void>(heavyTask, IsolateModel(355000, 500));
  runApp(const MyApp());
}


  

void heavyTask(IsolateModel model) {
 int total = 0;
 /// Performs an iteration of the specified count
 for (int i = 1; i < model.iteration; i++) {
   /// Multiplies each index by the multiplier and computes the total
   total += (i * model.multiplier);
 }
    print("FINAL TOTAL: $total");
    
}

class IsolateModel {
 IsolateModel(this.iteration, this.multiplier);
 final int iteration;
 final int multiplier;
}


//////////////////////////////////
///
///
///
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        children: [
          goNavigate(context,dartzEither1view(),"Dartz"),
          goNavigate(context,list1(),"List"),
          goNavigate(context,mapclass(),"Map"),
          goNavigate(context,set1(),"Set"),
          goNavigate(context,enum1(),"Enum"),
          goNavigate(context,string1(),"String"),
          goNavigate(context,int1(),"int"),
          goNavigate(context,anaClass(),"FunctionalProgramming"),
          
        ],
      )
    );
  }
  Widget goNavigate(BuildContext context,Widget child,String text){
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>child));
    }, child: Text(text));
  }
}

