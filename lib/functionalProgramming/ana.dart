import 'package:dartdetay/functionalProgramming/Currying.dart';
import 'package:dartdetay/functionalProgramming/closureTypdef.dart';
import 'package:dartdetay/functionalProgramming/composition.dart';
import 'package:dartdetay/functionalProgramming/declarativeParadigm.dart';
import 'package:dartdetay/functionalProgramming/higherOrderFunction.dart';
import 'package:dartdetay/functionalProgramming/immutabilityAndEquality.dart';
import 'package:dartz/dartz.dart' hide State;


import 'package:flutter/material.dart';


class anaClass extends StatefulWidget {
  anaClass({Key? key}) : super(key: key);

  @override
  State<anaClass> createState() => _anaClassState();
}

class _anaClassState extends State<anaClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Composition"),
      ),
      body: Column(

        children: [
          ElevatedButton(onPressed: (){
            composePrint();
          }, child: const Text("Composition")),

          ElevatedButton(onPressed: (){
            closurePrint();
          }, child: const Text("Closure")),

          ElevatedButton(onPressed: (){
            curriyingFunc();
          }, child: const Text("Currying")),

          ElevatedButton(onPressed: (){
            declarativePrint();
          }, child: const Text("Declarative")),
          ElevatedButton(onPressed: (){
            immutableAndEquality();
          }, child: const Text("Immutable and Equality")),

          ElevatedButton(onPressed: (){
            myLoop();
            hisLoop(5);
            myFlatMapIList();
            print("reduce = ${reduceDeneme(denemeList)}");
            print("fold = ${foldDeneme(denemeList)}");
          }, child: const Text("HigherOrderFunction")),
        ],
      ),
    );
  }
}

