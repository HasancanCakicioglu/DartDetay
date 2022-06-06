import 'package:flutter/material.dart';

class set1 extends StatefulWidget {
  set1({Key? key}) : super(key: key);

  @override
  State<set1> createState() => _set1State();
}

class _set1State extends State<set1> {
  Set setim = {"1","2","3","4","1","1"}; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set"),
      ),
      body: Container(
        child: ElevatedButton(onPressed: (){
          debugPrint("set = "+setim.toString());
          debugPrint("set.iterator = "+setim.iterator.toString());
          debugPrint("set.iterator.moveNext() = "+setim.iterator.moveNext().toString());
          debugPrint("set.join(-) = "+setim.join("-"));
         // debugPrint("set.single = "+setim.single); // tek bir eleman olup olmadığını kontroö eder
          debugPrint("set.reduce=>element = "+setim.reduce((value, element) =>element).toString());
          debugPrint("set.reduce=>value = "+setim.reduce((value, element) =>value).toString());
          
        }, child: Text("Set")),
      ),
    );
  }
}