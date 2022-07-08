import 'dart:async';

import 'package:flutter/material.dart';

class microtaskclass extends StatefulWidget {
  microtaskclass({Key? key}) : super(key: key);

  @override
  State<microtaskclass> createState() => _microtaskclassState();
}

class _microtaskclassState extends State<microtaskclass> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint('1');
    Future.microtask(()=>debugPrint("Future microtask 2"));
    scheduleMicrotask(() => debugPrint('scheduleMicroTask 3'));
    Future.microtask(()=>debugPrint("Future microtask 4"));
 
    Future(() => debugPrint('Future 5'))
        .then((_) => debugPrint('Future then 6'))
        .then((_) {
          debugPrint('Future then then 7');
          scheduleMicrotask(() => debugPrint('Future then then scheduleMicrotask 8'));
        });
        
 
    scheduleMicrotask(() => debugPrint('scheduleMicrotask 9'));
 
    Future(() => debugPrint('Future 10'));
    
    scheduleMicrotask(() => debugPrint('scheduleMicrotask 11'));
    debugPrint('12');


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Microtasklar Future işlemlerden önce biter"),),
    );
  }
}