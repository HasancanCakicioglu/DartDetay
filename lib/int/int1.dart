import 'package:flutter/material.dart';

class int1 extends StatefulWidget {
  int1({Key? key}) : super(key: key);

  @override
  State<int1> createState() => _int1State();
}

class _int1State extends State<int1> {
  int a = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("int"),
      ),
      body: Container(
        child: ElevatedButton(onPressed: (){
          debugPrint("a.bitlenght "+a.bitLength.toString());
          debugPrint("a.isEven "+a.isEven.toString());
          debugPrint("a.isNegative "+a.isNegative.toString());
          debugPrint("a.isNaN "+a.isNaN.toString());
          debugPrint("a.sign "+a.sign.toString());
          debugPrint("a.abs() "+a.abs().toString());
          debugPrint("a.ceil() "+a.ceil().toString());
          debugPrint("a.toRadixString(3) "+a.toRadixString(3));
          debugPrint("a.clamp(5,14) "+a.clamp(5,14).toString());
          debugPrint("a.floor() "+a.floor().toString());
          debugPrint("a.truncate() "+a.truncate().toString());
          debugPrint("a.remainder(3) "+a.remainder(3).toString());
          debugPrint("a..modPow(3,7) "+a.modPow(3,7).toString());
          //debugPrint("a.modInverse(2) "+a.modInverse(2).toString());
          debugPrint("a.gcd(5) "+a.gcd(5).toString());//anlamadım
          debugPrint("a.toStringAsPrecision(5) "+a.toStringAsPrecision(5));
          debugPrint("a.toRadixString(3) "+a.toRadixString(3));
          debugPrint("a.toStringAsFixed(3) "+a.toStringAsFixed(3));
          debugPrint("a.toStringAsExponential(5) "+a.toStringAsExponential(5));
          debugPrint("a.toSigned(7) "+a.toSigned(7).toString());
          
        }, child: Text("int")),
      ),
    );
  }
}