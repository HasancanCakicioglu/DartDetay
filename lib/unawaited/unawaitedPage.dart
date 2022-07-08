import 'dart:async';

import 'package:flutter/material.dart';

class unawaitedclass extends StatefulWidget {
  unawaitedclass({Key? key}) : super(key: key);

  @override
  State<unawaitedclass> createState() => _unawaitedclassState();
}

class _unawaitedclassState extends State<unawaitedclass> {
   late int x;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   //future olan birşeyi beklemeye gerek yok çalıştır ve unut yoluna devam et diyo
   unawaited(somethingFuture());
    
  }


  Future somethingFuture()async{
    

    return await Future.delayed(Duration(seconds: 2)).then((value) => debugPrint("Bitti"));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("unawaited"),),
    );
    
  }
}