import 'package:flutter/material.dart';

class list1 extends StatefulWidget {
  list1({Key? key}) : super(key: key);

  @override
  State<list1> createState() => _list1State();
}

class _list1State extends State<list1> {

  final List<int> sayilar = [1,2,3,4,5,6,7,8,9,10,10,10];
  final List<String> yazilar = ["a","b","c","d","e","f"];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: 
        Column(
          children: [
            ElevatedButton(onPressed: (){

              debugPrint("sayilar.reversed" +sayilar.reversed.toString());
              debugPrint("sayilar.hashCode" +sayilar.hashCode.toString());
              debugPrint("sayilar.runTimeType" +sayilar.runtimeType.toString());
              debugPrint("sayilar.iterator" +sayilar.iterator.toString());
              debugPrint("sayilar.first " +sayilar.first.toString());
              debugPrint("sayilar.last " +sayilar.last.toString());
              //debugPrint("sayilar.single " +sayilar.single.toString()); single tek birtane elemanı varmı diye kontrol eder
              debugPrint("sayilar.first.isFinite " +sayilar.first.isFinite.toString());
              //int = inFinite
              //null = nonFinite
              //+- infinitify
              debugPrint("sayilar.join " +sayilar.join("s")); // aralarına s harfini koyar 1s2s3s4s5s6s7s8s9s10
              debugPrint("sayilar.any " +sayilar.any((element) => element<5).toString());
              debugPrint("sayilar.every " +sayilar.every((element) => element<5).toString());
              debugPrint("sayilar.asMap " +sayilar.asMap().toString());
              //debugPrint("sayilar.cast<List>() " +sayilar.cast<List>().toString());
              debugPrint("sayilar.contains(4) " +sayilar.contains(4).toString());
              debugPrint("sayilar.elementAt(1) " +sayilar.elementAt(1).toString());

              /*
              Iterable<int> count(int n) sync* {
                for (var i = 1; i <= n; i++) {
                      yield i;
                  }
              }
              */
              //debugPrint("sayilar.count = " +sayilar.expand((count)).toString()); // 1 - 1,2 - 1,2,3 - 1,2,3,4 -
              debugPrint("sayilar.firstWhere((element) => element==5) " +sayilar.firstWhere((element) => element==4).toString());
              //debugPrint("sayilar.fold" +sayilar.fold("abc", (previousValue, element) =>"previous = "+previousValue+" --- elemetn = "+element.toString()));
              debugPrint("sayilar.followedBy([11,12,13]) " +sayilar.followedBy([11,12,13]).toString());// listenin sonuna ekler
              debugPrint("sayilar.getRange(2, 5) " +sayilar.getRange(2, 5).toString());
              debugPrint("sayilar.indexOf(5) " +sayilar.indexOf(5).toString());
              debugPrint("sayilar.indexWhere((element) => element==10) " +sayilar.indexWhere((element) => element==10).toString());
              debugPrint("sayilar.map((e) => e) " +sayilar.map((e) => e).toString());
              debugPrint("sayilar.reduce((value, element) => value+element) " +sayilar.reduce((value, element) => value+element).toString()); // sayıları toplar içindeki
              debugPrint("sayilar.remove(5) " +sayilar.remove(5).toString());
              debugPrint("sayilar.singleWhere((element) => element>3) " +sayilar.singleWhere((element) => element==2).toString());
              debugPrint("sayilar.sayilar.skip(2) " +sayilar.skip(2).map((e) => e).toList().toString()); // 2.elemente atla
              debugPrint("sayilar.skipWhile((value) => value<5) " +sayilar.skipWhile((value) => value<5).map((e) => e).toList().toString()); // 5 ten küçük olduğu sürece atla
              debugPrint("sayilar.sublist(1,5) " +sayilar.sublist(1,5).toString()); // 1 ile 5 indexler arası getir
              debugPrint("sayilar.take(3) " +sayilar.take(3).toString()); // 3 tane al 
              debugPrint("sayilar.toSet()" +sayilar.toSet().toString());

              debugPrint("sayilar.whereType()" +sayilar.whereType().toString());
              //sayilar.fillRange(15,18,99); // 15 ile 18 indexler arasını 99 ile doldurur
              debugPrint("sayilar.fillRange" +sayilar.toString());
              sayilar.insert(0, 15); // 0. indexe 15 değerini atar
              sayilar.removeRange(10, 12);// 10 ile 12 aralarını siler
              
              //debugPrint("sayilar.toSet()" +sayilar.replaceRange(start, end, replacements));
              debugPrint("sayilar.toSet()" +sayilar.toSet().toString());
              sayilar.retainWhere((element) => element < 7); // listeden şartı sağlamayanları sılıyor

              debugPrint("sayilar.retainWhere = $sayilar" );

              sayilar.setAll(3,[1,2]);
              debugPrint("sayilar.setAll" +sayilar.toString());

              sayilar.shuffle();
              debugPrint("sayilar.shuffle = " +sayilar.toString()); // random

              sayilar.sort(); 
              debugPrint("sayilar.sort = " +sayilar.toString());

              
              

            }, child: Text("Tıkla")),
          ],
        ),
      ),
    );
  }
}

